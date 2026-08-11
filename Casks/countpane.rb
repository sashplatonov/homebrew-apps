cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.16"
  sha256 arm:   "808f7afa42f763fd559b547b83de0eef101eb4d92102f8d8b44e16f856c9c7d9",
         intel: "24973f1bff6496a5b0558e74000620b17c00f7b6947b5a1eaf4bd07877cd698d"

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
