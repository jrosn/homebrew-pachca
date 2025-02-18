cask "pachca" do
  arch arm: "aarch64"

  version "2.5.0"
  sha256 "1d3f76baed87166344d2eedc5eaa7a76d198d08986db27d920f6627af509e90d"

  url "https://install.pachca.com/Pachca%20#{version}-arm64.dmg"
  name "Pachca"
  desc "Corporate messenger for modern teams"
  homepage "https://www.pachca.com/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://www.pachca.com/apps/"
    regex(/href=.*Pachca%20(\d+\.\d+\.\d+)-arm64\.dmg/i)
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
