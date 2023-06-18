# {{name}}

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Requirement

- Visual Studio Code Version: 1.79.0 (Universal)
- Flutter version: 3.10.5
- Dart SDK version: 3.0.5
- Android Studio version: 2020.3.1.26

## Generate Routes

Use the [watch] flag to watch the files' system for edits and rebuild as necessary.

```
flutter packages pub run build_runner watch
```

if you want the generator to run one time and exits use

```
flutter packages pub run build_runner build
```

OR

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

## Generate Models Hive

Run build task

```
flutter packages pub run build_runner build
```

## Facebook

profile: John Doe

keystore debug pass: samplePasswordFacebook{{current_year}}

- Debug Mode

```
keytool -exportcert -alias {{name.snakeCase()}}app -keystore ~/.android/debug.keystore | openssl sha1 -binary | openssl base64
```
Custom Keystore Jks

```
keytool -exportcert -alias {{name.snakeCase()}}app -keystore ./android/{{name.snakeCase()}}-debug.jks -deststoretype pkcs12 | openssl sha1 -binary | openssl base64 
```

- Release Mode

```
keytool -exportcert -alias {{name.snakeCase()}}app -keystore ./android/{{name.snakeCase()}}-release.jks -deststoretype pkcs12 | openssl sha1 -binary | openssl base64
```

## Running Flavor

`flutter pub run flutter_flavorizr`

or, for specific build flavor configuration

`flutter pub run flutter_flavorizr -p android:androidManifest,android:buildGradle,ios:xcconfig,ios:buildTargets,ios:schema,ios:plist,ide:config,google:firebase`

## Create an upload keystore

- Password: cleanarchi{{current_year}}

- On Mac/Linux

```
    keytool -genkey -v -keystore "$PWD/android/{{name.snakeCase()}}-release.jks" -alias {{name.snakeCase()}} -keyalg RSA -keysize 2048 -validity 10000 -storetype JKS
```

- On Windows

```
  keytool -genkey -v -keystore c:\Users\USER_NAME\{{name.snakeCase()}}-release.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
