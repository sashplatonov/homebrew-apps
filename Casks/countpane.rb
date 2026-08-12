cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.11.0"
  sha256 arm:   "477407b3c504089299da25c41a35e4bbde7a2c2d1a96575ec0cb1c69a360d60b",
         intel: "03d266013263d9a62e5450273070daf687bbb8bf80e9ebe4a33a6bebbd4be701"

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
