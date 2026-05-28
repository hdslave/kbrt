# Run from the root of the KonaBess-retroid project folder.
# Requires Android Studio installed once so the Android SDK is present.
# If this fails, open the folder in Android Studio first and let Gradle sync/install SDK packages.

$ErrorActionPreference = 'Stop'

if (!(Test-Path .\gradlew.bat)) {
    throw "Run this from the project root where gradlew.bat exists."
}

.\gradlew.bat assembleDebug --no-daemon --stacktrace

Write-Host "APK output should be in: app\build\outputs\apk\debug\app-debug.apk"
