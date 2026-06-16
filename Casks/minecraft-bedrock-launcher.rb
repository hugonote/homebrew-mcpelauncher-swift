cask "minecraft-bedrock-launcher" do
  version "0.1.8"
  sha256 "a36484a91265c1dc13ab8fbf2e2fa5038dc1bf1df71b8853ec8b12d33e20c7b9"

  url "https://github.com/hugonote/mcpelauncher-swift/releases/download/v#{version}/Minecraft.Bedrock.Launcher-#{version}.dmg"
  name "Minecraft Bedrock Launcher"
  desc "Native SwiftUI launcher for Minecraft: Bedrock Edition on macOS"
  homepage "https://github.com/hugonote/mcpelauncher-swift"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Minecraft Bedrock Launcher.app"

  uninstall quit: "local.minecraft.bedrock.swiftlauncher"

  zap trash: [
    "~/Library/Application Support/Minecraft Bedrock Launcher",
    "~/Library/Preferences/local.minecraft.bedrock.swiftlauncher.plist",
    "~/Library/Saved Application State/local.minecraft.bedrock.swiftlauncher.savedState",
  ]
end
