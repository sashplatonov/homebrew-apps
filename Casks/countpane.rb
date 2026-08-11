cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.17"
  sha256 arm:   "9e0ff7a27b928c6f1bfe277631624c44065bb42809285165491938529f856bdc",
         intel: "779e0fc459a4754560f2a588469646a3e42d0448b0a66892b6a7217cf55f74c4"

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
