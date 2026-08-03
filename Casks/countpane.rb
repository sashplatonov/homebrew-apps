cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.8"
  sha256 arm:   "6c344c1ddd69f4920b4ae7d9a6260feee6f8342719a22eab822fa1cc1f8701ac",
         intel: "237e176c5a4a333d6b0493076bac5300c99f2ceb816d9e80e3aaa39aca5da1f1"

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
