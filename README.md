# evilstar2016 Homebrew Tap

Maintainer casks for macOS applications.

## OpenLightCapture

[OpenLightCapture](https://github.com/evilstar2016/OpenLightCapture) is a local macOS screenshot tool with annotations and manual/automatic scrolling captures. The universal application supports Apple Silicon and Intel, on macOS 14 or later.

Install:

```sh
brew install --cask evilstar2016/tap/openlightcapture
```

The fully qualified name adds the tap automatically and, on Homebrew 6 or later, trusts only this cask.

Upgrade and uninstall:

```sh
brew update
brew upgrade --cask evilstar2016/tap/openlightcapture
brew uninstall --cask evilstar2016/tap/openlightcapture
```

The current release is ad hoc signed and has not been Developer ID signed or notarized by Apple. macOS may block its first launch. This cask does not disable Gatekeeper or remove quarantine attributes. Screen Recording permission is required for captures; Accessibility / Control is required only for automatic scrolling. Uninstalling the cask preserves application preferences and capture data.

当前版本采用 ad hoc 签名，尚未进行 Developer ID 签名或 Apple 公证，macOS 可能阻止首次启动。Cask 保留系统安全检查。截图需要屏幕录制权限；辅助功能／控制权限仅用于自动滚动。卸载保留偏好设置与截图数据。

## Maintaining the cask

After publishing an application release, update `version` and `sha256` in `Casks/openlightcapture.rb` using the final public DMG. Keep the immutable, versioned download URL and verify the checksum before pushing. `livecheck` detects the upstream version; users receive upgrades after the cask metadata is updated in this tap.

```sh
brew style Casks/openlightcapture.rb
brew audit --cask --strict --online evilstar2016/tap/openlightcapture
brew livecheck --cask evilstar2016/tap/openlightcapture
brew fetch --cask evilstar2016/tap/openlightcapture
```

This tap is maintained separately from the official `homebrew/cask` repository. See the [Homebrew tap documentation](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap).
