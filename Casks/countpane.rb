cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.0"
  sha256 arm:   "4dad086b17f777749eafa98ea39993b717e545643d0e89d0b5eafbadb358a2f9",
         intel: "2cb87e53f7335069f96f1e3c74651a17f3dacf5281c68802f4e948b4456010ed"

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
