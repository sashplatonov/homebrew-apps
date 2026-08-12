cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.0"
  sha256 arm:   "588eb3eb0611f19e7048c33950b89601bcf9a3f0e6ac15ac20aaee4baba792e6",
         intel: "478d67f3ec6a4ea910be11aea95918d480659371d47f41fd8f64a428410b847f"

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
