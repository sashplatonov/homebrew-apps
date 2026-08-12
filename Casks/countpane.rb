cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.0"
  sha256 arm:   "3c6a75c20bde2bb113507a19afbea2f8006ea1c5a4a6fa4e7549eaf7f55b750b",
         intel: "d85d00ff8fc9f69cae9c9771bfc7f8f23c587754a67f0c27a22c589e62eee86e"

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
