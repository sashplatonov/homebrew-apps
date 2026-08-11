cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "43c4a1ae389aed9f4d2a99f0f2d191a7d573cdea9c980f9c3faf2396b1477161",
         intel: "c43e29da4c3a74de4a05032b7994960e7d7ba09d255d5f37f93c7904e3263f94"

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
