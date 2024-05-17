# Flutter

## Pre-requirements

1. [Install Git 2.27 or major](https://git-scm.com/downloads).
2. [Install the Visual Studio Code 1.77 or major](https://code.visualstudio.com/).
3. Install some extensions in Visual Studio Code<sup>*</sup>:
   - [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) (required).
   - [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) (required).
   - [Pub Manager](https://marketplace.visualstudio.com/items?itemName=qlevar.pub-manager) (required).
   - [Json to Dart Model](https://marketplace.visualstudio.com/items?itemName=hirantha.json-to-dart) (required).
   - [Flutter Riverpod Snippets](https://marketplace.visualstudio.com/items?itemName=robert-brunhage.flutter-riverpod-snippets) (required).
   - [Postman](https://marketplace.visualstudio.com/items?itemName=Postman.postman-for-vscode) (required).
   - [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) (required).
   - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) (required).
   - [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) (required).
   - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) (required).
   - [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) (optional).
   - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) (optional).
4. [Install Android Studio 2023.1 (Hedgehog) or major](https://developer.android.com/studio/install). During the install process or if installed, install the next components::
   - Android SDK Platform, API 34.0.0.
   - Android SDK Command-line Tools.
   - Android SDK Build-Tools.
   - Android SDK Platform-Tools.
   - Android Emulator.
5. Install some plugins in Android Studio:
   - [Flutter](https://plugins.jetbrains.com/plugin/9212-flutter).
6. [Install Genymotion Desktop](https://www.genymotion.com/product-desktop/download/).
7. Install Flutter SDK. For this step, you can follow the next options (the first one is recommended):
   - [Use VS Code to install Flutter](https://docs.flutter.dev/get-started/install/windows/mobile?tab=vscode#use-vs-code-to-install-flutter).
   - [Download then install Flutter](https://docs.flutter.dev/get-started/install/windows/mobile?tab=download#download-then-install-flutter).

Comments:

*: The repository will automatically install and configure required extensions when opened in VS Code. It is also recommended to create a Flutter configuration [profile in VS Code](https://code.visualstudio.com/docs/editor/profiles).

## Configuration

1. Configurate a Android device. It is possible configurate a virtual or physical device:
   - [Set up the Android emulator: Using Genymotion](https://docs.genymotion.com/desktop/Get_started/014_Basic_steps/).
     - [Install Open GApps](https://support.genymotion.com/hc/en-us/articles/4414586104977-How-to-install-Google-Play-Store-and-other-Google-Apps-in-Genymotion)
   - [Set up the Android emulator: Using Android Studio](https://docs.flutter.dev/get-started/install/windows/mobile?tab=virtual#set-up-the-android-emulator).
   - [Set up your target Android device](https://docs.flutter.dev/get-started/install/windows/mobile?tab=physical#set-up-your-target-android-device).
2. To verify if all components of a complete Flutter development environment were installed, run the following command: `flutter doctor`. The result of your command should resemble:

   ```bash
   Running flutter doctor...
   Doctor summary (to see all details, run flutter doctor -v):
   [✓] Flutter (Channel stable, 3.19.6, on Microsoft Windows 11 [Version 10.0.22621.3155], locale en)
   [✓] Windows version (Installed version of Windows is version 10 or higher)
   [✓] Android toolchain - develop for Android devices (Android SDK version 34.0.5)
   [!] Chrome - develop for the web
   [!] Visual Studio - develop Windows apps
   [✓] Android Studio (version 2023.3)
   [✓] VS Code (version 1.89)
   [✓] Connected device (1 available)
   [✓] Network resources


   ! Doctor found issues in 2 categories.
   ```

3. [Install dependencies]([Adding a package dependency to an app](https://docs.flutter.dev/packages-and-plugins/using-packages#adding-a-package-dependency-to-an-app)). For this step, run the following command on the root project: `flutter pub get`.
4. Open the project on the IDE. You can use Visual Studio Code or Android Studio (the first one is recommended).

## Run and Debug

Before run into the IDE, run the virtual/physical device.

### In Visual Studio Code

1. Open the "Flutter" panel and select a mobile device or select using the command palette "Flutter: Select Device".
2. Open the "Run and Debug" panel.
3. Select a mode: Debug, Profile or Release.
4. Run by clicking on the green button.
5. After running is possible to open the DevTools on the "Flutter" panel.
