import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';

class InternalWebView extends StatefulWidget {
  const InternalWebView({
    super.key,
    required this.url,
    this.hideAppBar = false,
  });
  final String url;
  final bool hideAppBar;

  @override
  State<InternalWebView> createState() => _InternalWebViewState();
}

class _InternalWebViewState extends State<InternalWebView> {
  late final WebViewController _controller;
  var verticalGestures =
      Factory<TapGestureRecognizer>(() => TapGestureRecognizer());
  var indexState = 1;

  @override
  void initState() {
    super.initState();
    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final controller = WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    // ignore: cascade_invocations
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            debugPrint('WebView is loading (progress : $progress%)');
            controller
                .runJavaScript(
                  '''
document.getElementsByTagName("footer")[0].remove();
document.getElementsByClassName("bth-link")[0].remove();
''',
                )
                .then(
                  (value) => debugPrint(
                    'Page finished running Javascript',
                  ),
                )
                .catchError(
                  (onError) => debugPrint('$onError'),
                );
          },
          onPageStarted: (String url) {
            setState(() {
              indexState = 0;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              indexState = 0;
            });
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
          },
          onNavigationRequest: (NavigationRequest request) {
            debugPrint('allowing navigation to ${request.url}');
            return NavigationDecision.navigate;
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        },
      )
      ..loadRequest(Uri.parse(widget.url));

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #enddocregion platform_features

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: widget.hideAppBar
          ? null
          : AppBar(
              title: Text(
                widget.url,
                style: AppTypography.appBarTitle.copyWith(
                  color: AppColors.xlBlack,
                ),
              ),
            ),
      body: IndexedStack(
        index: indexState,
        children: <Widget>[
          WebViewWidget(controller: _controller),
          const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
