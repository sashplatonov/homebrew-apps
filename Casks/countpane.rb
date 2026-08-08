cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.11"
  sha256 arm:   "2ea2898b327674b6fac16eab96291a2199517f8bb1deeb59436850e9ac74040c",
         intel: "cc79efa81edc15f450bde54541980a0746fed2c4c88625c97d62f411dc68d606"

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
