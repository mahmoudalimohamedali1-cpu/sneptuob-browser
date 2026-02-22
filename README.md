# SmartWeb Browser

Private and secure Android browser with **native Chrome Extension support**.

Based on [Helium Browser](https://github.com/jqssun/android-helium-browser) / Chromium with:
- Full Chrome Extension support (MV2 + MV3)
- Chrome Web Store compatibility
- Extension toolbar on phone layout
- Vanadium security patches from GrapheneOS

## Installing Extensions

Navigate to [Chrome Web Store](https://chromewebstore.google.com/), then enable **Desktop site** mode. Click **Add to Chrome** — the extension installs natively using the real Chromium extension engine.

## Building

1. Fork this repository
2. Add repository secrets:
   - `STORE_TEST_JKS`: Base64-encoded keystore file
   - `LOCAL_TEST_JKS`: Base64-encoded local.properties (keyAlias, keyPassword, storePassword)
3. Go to **Actions** → **Build SmartWeb** → **Run workflow**
4. Wait for the build (~3-6 hours)
5. Download APK from the release

## Package Info
- **Package:** `com.brow.spear`
- **Architecture:** arm64
- **Min SDK:** 26 (Android 8.0)

## Credits

Based on [Helium Browser](https://github.com/jqssun/android-helium-browser), [Vanadium](https://github.com/GrapheneOS/Vanadium), and the Chromium open-source project.

## License

GPLv2 — see [LICENSE](LICENSE)
