cask "openlightcapture" do
  version "1.0.0"
  sha256 "202a5a5d2cfb2ff0a2d10ca1b2ff4011aa2a7adf3921fe56dff650464a45818c"

  url "https://github.com/evilstar2016/OpenLightCapture/releases/download/v#{version}/OpenLightCapture-#{version}-macOS-universal.dmg"
  name "OpenLightCapture"
  desc "Screenshots, annotations and scrolling captures"
  homepage "https://github.com/evilstar2016/OpenLightCapture"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "OpenLightCapture.app"

  caveats <<~EOS
    This release is ad hoc signed and has not been notarized by Apple.
    macOS may block its first launch; Homebrew preserves the standard security checks.

    Screen Recording permission is needed for captures.
    Accessibility / Control permission is only needed for automatic scrolling.
  EOS
end
