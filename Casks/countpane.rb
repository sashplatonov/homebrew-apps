cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.13.0"
  sha256 arm:   "6934ef368a8fbef61ec9aa3c9304e8bb112e497874487190a9f4d525b9cc4c49",
         intel: "b66c6adf1c2a69e95344b5020bd2f6a7a45e789602917e84a1cf05f6ade70ada"

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
