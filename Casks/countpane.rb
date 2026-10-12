cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.0"
  sha256 arm:   "6bb80189af4d80c28f5cf2db56ff35aa0fe9c08fa2b496669af45c7e16136a32",
         intel: "a355b8c63297bc173075d9ed1d3349e257546f4359380df7eb73da847569f0ea"

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
