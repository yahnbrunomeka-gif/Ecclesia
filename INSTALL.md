# 📱 Ecclesia - Installation Guide

## 🌐 PWA (Progressive Web App) - Quick Install

### Android
1. Open the app in Chrome
2. Tap the **⋮** menu → **"Install app"** or **"Add to Home screen"**
3. Confirm installation

### iOS
1. Open the app in Safari
2. Tap the **Share** button (□↑)
3. Scroll down and tap **"Add to Home Screen"**
4. Tap **Add** in the top-right corner

---

## 📦 Native App Build (Capacitor)

### Prerequisites
```
✅ Node.js 18+     (https://nodejs.org)
✅ npm 9+          (bundled with Node.js)
✅ Android Studio  (for Android builds)
✅ Xcode           (for iOS builds, macOS only)
```

### Step-by-Step

#### 1. Install Dependencies
```bash
cd "C:\Users\BRUNO MYA\Desktop\Ecclesia"
npm install
```

#### 2. Generate App Icons
- Open `generate-icons.html` in any browser
- Click **"📦 Tout télécharger"**
- Move all downloaded icons into the `icons/` folder

#### 3. Initialize Capacitor
```bash
npx cap init "Ecclesia" com.ecclesia.app --web-dir .
```

#### 4. Add Platforms
```bash
# Android
npx cap add android

# iOS (macOS only)
npx cap add ios
```

#### 5. Sync Files
```bash
npx cap sync
```

#### 6. Open in IDE
```bash
# Android (opens Android Studio)
npx cap open android

# iOS (opens Xcode)
npx cap open ios
```

#### 7. Build & Deploy
**Android:**
- In Android Studio: `Build > Generate Signed Bundle / APK`
- Or run from terminal:
```bash
cd android
./gradlew assembleRelease
```
- APK will be at: `android/app/build/outputs/apk/release/app-release.apk`

**iOS:**
- In Xcode: `Product > Archive`
- Distribute via App Store Connect or TestFlight

---

## 🔧 Configuration Files

| File | Purpose |
|------|---------|
| `manifest.json` | PWA metadata (name, icons, theme) |
| `service-worker.js` | Offline caching & push notifications |
| `capacitor.config.json` | Native app settings |
| `package.json` | Node.js dependencies |

---

## 📋 Checklist Before Publishing

- [ ] Generate icons in 8 sizes (72-512px)
- [ ] Test offline mode (airplane mode)
- [ ] Verify login flow works on mobile
- [ ] Test photo upload and media viewing
- [ ] Check all 20 languages display correctly
- [ ] Verify admin dashboard functionality
- [ ] Sign APK with keystore (Android)
- [ ] Create App Store screenshots (iOS)

---

## 🆘 Troubleshooting

| Issue | Solution |
|-------|----------|
| "Install app" not showing | Serve via HTTPS or localhost |
| Icons not loading | Check `icons/` folder has all 8 sizes |
| Capacitor sync fails | Run `npm install` again |
| APK won't install | Enable "Unknown sources" in Android settings |
