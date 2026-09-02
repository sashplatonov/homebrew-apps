cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.12.0"
  sha256 arm:   "f3c1dcc9f3185587438080e06d8011ff6625586a66b77735e4de14bad6a79914",
         intel: "6f36f8faea04dbb5a26596f5820fcb00ed5f33873ceb26d3fd47da7803324dca"

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
