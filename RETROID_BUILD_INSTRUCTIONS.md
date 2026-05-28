# Building the Retroid Pocket Mini V2 KonaBess APK the right way

This folder is the Retroid-modified KonaBess source. Do not patch the regular APK.
Build this source into a fresh debug APK, then install that APK.

## Windows / Android Studio method

1. Install Android Studio.
2. Open this folder as a project.
3. Let Gradle sync completely. Install any requested SDK/build tools.
4. Open Android Studio terminal in the project root.
5. Run:

```powershell
.\gradlew.bat assembleDebug --no-daemon --stacktrace
```

6. Install this file:

```text
app\build\outputs\apk\debug\app-debug.apk
```

Use:

```powershell
adb install -r .\app\build\outputs\apk\debug\app-debug.apk
```

If Android refuses due to signature mismatch, uninstall old KonaBess first:

```powershell
adb uninstall xzr.konabess
adb install .\app\build\outputs\apk\debug\app-debug.apk
```

## GitHub Actions method

1. Create a new private GitHub repo.
2. Upload this whole folder.
3. Go to Actions > Build Retroid KonaBess APK > Run workflow.
4. Download the `KonaBess-Retroid-debug-apk` artifact.
5. Install the APK on the Retroid.

## First launch checklist

1. Remove the previously patched/broken APK.
2. Install the newly built Retroid source APK.
3. Open Magisk and clear/confirm superuser permissions for KonaBess.
4. Launch KonaBess and grant root.
5. Make a boot backup before flashing anything.

This Retroid fork targets Retroid Pocket Mini V2 on Android 13 and handles the Retroid `kona-iot v2` device tree path.
