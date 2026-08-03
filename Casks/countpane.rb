cask "countpane" do
  version "1.0.3"
  sha256 "c181a363173e22bb180c075b9ccd397ee7a8ed2ca2735b7a832cc5a6fd3ff8be"

  url "https://github.com/sashplatonov/countpane/releases/download/v#{version}/Countpane-#{version}.dmg"
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
