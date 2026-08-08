cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.10"
  sha256 arm:   "4c47df44391580c880386c9bec807df185e3fbf6516b62b82b50d264d72c0a81",
         intel: "9f2d90e81b04acc79dff6ac6807a4725309544ed04b6d60abfd710f2d0d88e86"

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
