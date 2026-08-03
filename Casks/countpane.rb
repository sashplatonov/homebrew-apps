cask "countpane" do
  version "1.0.2"
  sha256 "a2c56621a4dedcd7046b9d1aaa1d211332c7ddce0ea2514e6f298ba8e8d70acd"

  url "https://github.com/sashplatonov/countpane/releases/download/v1.0.2/Countpane-1.0.2.dmg"
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
