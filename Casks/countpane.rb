cask "countpane" do
  version "1.0.4"
  sha256 "eb7d6fdd4c1d1d6840e02e958e26799774baf9afbb80617be96cdf985f95b1be"

  url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}.dmg"
  name "Countpane"
  desc "Native countdown manager with always-on-top desktop widgets"
  homepage "https://github.com/sashplatonov/countpane"

  depends_on macos: :sequoia

  app "Countpane.app"

  zap trash: [
    "~/Library/Application Support/Countpane",
    "~/Library/Preferences/com.sashplatonov.countpane.plist",
    "~/Library/Saved Application State/com.sashplatonov.countpane.savedState",
  ]
end
