cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.18"
  sha256 arm:   "aa44154557228b0bffecfa76c0ce2fd6b84755cad6884e2649919c9772828908",
         intel: "6dcab59a690c63f47938f741c3bdb9afff19ac4b0bb046c4f7989e6963b8de53"

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
