cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.12"
  sha256 arm:   "7c7b0a5f28db8d402b4b337dfc6d07d1090475686ad6259c4e51ca7a1239bbb8",
         intel: "ec9da3b12c1905cddabc2eb3374cc81d7ab59a6f5e9db1848a2683707d82f322"

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
