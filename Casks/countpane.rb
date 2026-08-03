cask "countpane" do
  version "1.0.1"
  sha256 "40c6e4b3478087d28854c45531c0fba7a58140167aa360ad82a997012ade4c85"

  url "https://github.com/sashplatonov/countpane/releases/download/v1.0.1/Countpane-1.0.1.dmg"
  name "Countpane"
  desc "Native macOS countdown manager with always-on-top desktop widgets"
  homepage "https://github.com/sashplatonov/countpane"

  depends_on macos: ">= :sequoia"

  app "Countpane.app"

  zap trash: [
    "~/Library/Application Support/Countpane",
    "~/Library/Preferences/com.sashplatonov.countpane.plist",
    "~/Library/Saved Application State/com.sashplatonov.countpane.savedState",
  ]
end
