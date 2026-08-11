cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "c924106019eb0ff57a9685d942a1076d0003f698ce59add93f21eeabd1c4d559",
         intel: "6359526df903bbc57df5874089510da5b3144660d1fcd166e165c0a5fc82dffb"

  url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}-#{arch}.dmg"
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
