cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "8867d1e62e180e515c2f155782f8a2bf5de5c6a10b65db1166bd2de47a7d91d1",
         intel: "b46cc9117cfcc2ca53aae018a3ba3e9e581f94b406601f1a85f94aa3905ed8ed"

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
