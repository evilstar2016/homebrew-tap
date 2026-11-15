cask "openlightcapture" do
  version "1.2.0"
  sha256 "bbece49fac12037502725b0ca0c34fafce68b3abd84b33ef0edf0c28dfbb50b7"

  url "https://github.com/evilstar2016/OpenLightCapture/releases/download/v#{version}/OpenLightCapture-#{version}-macOS-universal.dmg"
  name "OpenLightCapture"
  desc "Screenshots, annotations and scrolling captures"
  homepage "https://github.com/evilstar2016/OpenLightCapture"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "OpenLightCapture.app"

  caveats <<~EOS
    This release is ad hoc signed and has not been notarized by Apple.
    macOS may block its first launch; Homebrew preserves the standard security checks.

    Screen Recording permission is needed for captures.
    Accessibility / Control permission is only needed for automatic scrolling.
  EOS
end
