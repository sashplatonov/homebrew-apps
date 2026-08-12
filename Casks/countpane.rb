cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "7d501f1109b2238a11ab1252908e73e5c1440969755f5fe500cc95093ec6ad29",
         intel: "feb57ff00fe177d4261cb96c240d002cbadb3d9662e13226ed9f65667f4a6726"

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
