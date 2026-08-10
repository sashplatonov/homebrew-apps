cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.13"
  sha256 arm:   "fc7c0d6d71ba34d734b65b39a7e3fe442e10f1b91fd081630179b9324f012bc3",
         intel: "124a6b936117f6ace32e56cb353b317f7ada63925a9de332547b27ffb81b0c95"

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
