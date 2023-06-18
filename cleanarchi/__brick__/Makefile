
VERSION = $(shell cat ./VERSION)
BUILD_NUMBER = $(shell cat ./BUILDNUMBER)
BUILD_NUMBER_FILE=BUILDNUMBER
BUILD_NUMBER_LIVE = $(shell cat ./BUILDNUMBER_LIVE)
BUILD_NUMBER_LIVE_FILE=BUILDNUMBER_LIVE

incrementbuild: 
	@if ! test -f $(BUILD_NUMBER_FILE); then echo 0 > $(BUILD_NUMBER_FILE); fi
	@@echo $$(($(BUILD_NUMBER)+1)) > $(BUILD_NUMBER_FILE)

incrementbuild-prod: 
	@if ! test -f $(BUILD_NUMBER_LIVE_FILE); then echo 0 > $(BUILD_NUMBER_LIVE_FILE); fi
	@@echo $$(($(BUILD_NUMBER_LIVE)+1)) > $(BUILD_NUMBER_LIVE_FILE)

release-ios:
	make incrementbuild
	flutter clean
	flutter build ios --release  --build-name=$(VERSION) --build-number=$(BUILD_NUMBER)
	cd ios/ && bundle install && bundle exec fastlane beta --verbose

release-{{name.paramCase()}}-dev:
	cp .env.dev .env
	make incrementbuild
	flutter clean
	flutter build apk --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER) --flavor dev
	firebase appdistribution:distribute build/app/outputs/flutter-apk/app-dev-release.apk  \
		--app 1:149484702300:android:e08b325f4ad2d380fcf499  \
		--groups "dev" \
		--release-notes-file "CHANGELOG.txt" 

release-{{name.paramCase()}}-dev-aab:
	cp .env.dev .env
	make incrementbuild
	flutter clean
	flutter build appbundle --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER) --flavor dev
	firebase appdistribution:distribute build/app/outputs/bundle/release/app-release.aab  \
		--app 1:149484702300:android:e08b325f4ad2d380fcf499  \
		--groups "dev" \
		--release-notes-file "CHANGELOG.txt" 

release-{{name.paramCase()}}-uat:
	cp .env.uat .env
	make incrementbuild
	flutter clean
	flutter build apk --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER) --flavor uat
	firebase appdistribution:distribute build/app/outputs/flutter-apk/app-uat-release.apk  \
		--app 1:149484702300:android:a90343673d34644afcf499  \
		--groups "uat" \
		--release-notes-file "CHANGELOG.txt" 

release-{{name.paramCase()}}-uat-aab:
	cp .env.uat .env
	make incrementbuild
	flutter clean
	flutter build appbundle --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER) --flavor uat
	firebase appdistribution:distribute build/app/outputs/bundle/release/app-uat-release.aab  \
		--app 1:149484702300:android:a90343673d34644afcf499  \
		--groups "uat" \
		--release-notes-file "CHANGELOG.txt" 

release-{{name.paramCase()}}-prod:
	cp .env.prod .env
	make incrementbuild-prod
	flutter clean
	flutter build apk --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER_LIVE) --flavor prod
	firebase appdistribution:distribute build/app/outputs/flutter-apk/app-prod-release.apk  \
		--app 1:149484702300:android:a90343673d34644afcf499  \
		--groups "prod" 
		# --release-notes-file "CHANGELOG-prod.txt" 

release-{{name.paramCase()}}-prod-aab:
	cp .env.prod .env
	make incrementbuild-prod
	flutter clean
	flutter build appbundle --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER_LIVE) --flavor prod
	firebase appdistribution:distribute build/app/outputs/bundle/liveRelease/app-prod-release.aab  \
		--app 1:149484702300:android:d9d03fd0e70f6b6bfcf499  \
		--groups "prod" 
		# --release-notes-file "CHANGELOG-prod.txt" 

test-uat:
	# make incrementbuild
	cp .env.uat .env
	flutter clean
	flutter build apk --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER) --flavor uat  --obfuscate --split-debug-info=./ureca_mobile_android_uat

test-prod:
	# make incrementbuild-prod
	cp .env.prod .env
	flutter clean
	flutter build apk --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER_LIVE) --flavor prod  --obfuscate --split-debug-info=./ureca_mobile_android_prod

test-prod-aab:
	# make incrementbuild-prod
	cp .env.prod .env
	flutter clean
	flutter build appbundle --release --build-name=$(VERSION) --build-number=$(BUILD_NUMBER_LIVE) --flavor prod  --obfuscate --split-debug-info=./ureca_mobile_android_prod
