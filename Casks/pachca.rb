cask "pachca" do
  arch arm: "aarch64"

  version "1.0.0"
  
  url "https://install.pachca.com/mac/dmg/arm64"
  name "Pachca"
  desc "Corporate messenger for modern teams"
  homepage "https://www.pachca.com/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://www.pachca.com/apps/"
    regex(/href=.*arm64.*.dmg/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Pachca.app"

  uninstall quit: "com.todesktop.240607opwvcw853"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap delete: [
    "~/Library/Application Support/Caches",
    "~/Library/Application Support/Pachca",
    "~/Library/Logs/Pachca",
  ]
end
