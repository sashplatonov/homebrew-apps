cask "countpane" do
  version "1.0.6"

  on_macos do
    on_arm do
      url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}-arm64.dmg"
      sha256 "bb1e02be2a1b2fa80055e3df167781bcf504e19b411556896b03025d7b1473ba"
    end
    on_intel do
      url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}-x86_64.dmg"
      sha256 "0d7ed67ad64b95ee489348811a0f48f0219170bd9366d9170de6f79a6ed4c639"
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
