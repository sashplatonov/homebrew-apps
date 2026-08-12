cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.0"
  sha256 arm:   "d57a4cebf0778cc24292a4756cca1fccb926c1a2df415bd38b8d89674b29b544",
         intel: "041254bc4123a09623c83f5381afb47110e89df96cc1401cf949534f1b24750a"

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
