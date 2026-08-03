cask "countpane" do
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}-arm64.dmg"
      sha256 "e0d59d2e167a25d90a6a97f56ad87ade4652a05c141e13ed9702e55013416e63"
    end
    on_intel do
      url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}-x86_64.dmg"
      sha256 "4e95955ae9307e51a5009303db7b5fda5b15b47a10cb33643aa6d30be9029f2c"
    end
  end
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
