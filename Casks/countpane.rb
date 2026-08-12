cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "691e10d4f011354aa5301d51069c0f0a0e88946b3353a1fe56d15ecfedce9b46",
         intel: "34e024d4f203eaef632d7f356d772029eaf89b00d7991d91d9e8096270416c42"

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
