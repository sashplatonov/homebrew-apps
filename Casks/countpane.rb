cask "countpane" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.15"
  sha256 arm:   "fe46c0aea6a7b1326ac7ceed1bee627cb8242811b68970bda5b81223e6cce160",
         intel: "53db0458a97932461906531c3b620bc837afbe43aa333e1108eed7712d767dc7"

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
