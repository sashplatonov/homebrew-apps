cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.10.0"
  sha256 arm:   "6b0d5d6fa961882bd7310181a541a3bdf0e907dd28de10303253186f4df18b7e",
         intel: "4a2af170ed5f3515a36b186293dcb0d4dd13bd9deb5b2f00007b92f81a878cf7"

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
