cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.14"
  sha256 arm:   "ed52020fce3615be243986a42640e568fd126abfda12e59aa46aa49d5aa293dd",
         intel: "b3e3b028e07bd431cdf83d6aaf3446e72af253cc9c72fb2ef76276d54ebea8a7"

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
