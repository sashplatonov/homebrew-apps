cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.13.0"
  sha256 arm:   "58b7ed84df3ff41e8f8553e69259405f6f96e8040be3a098ec8b2d77955f5144",
         intel: "0a0b56e9a24eec183adeeba9803101396a68c7a760c797c810618e5c11b39014"

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
