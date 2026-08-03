cask "countpane" do
  version "1.0.7"

  on_macos do
    on_arm do
      url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}-arm64.dmg"
      sha256 "84259657f88dde06e9850e255bf5af16378d0c5bd0ec76c4d7f39aa4e374fd72"
    end
    on_intel do
      url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}-x86_64.dmg"
      sha256 "81dff7e610ae2bdfa3d92591166043551ea81b7c71eda3c5e18ea347079942b0"
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
