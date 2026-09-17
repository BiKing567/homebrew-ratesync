cask "ratesync" do
  version "3.2.4"
  sha256 "7e62d4f09c654aa8abf79195e7e2e2d485569410e1a24df7f6fa92d76ce76200"

  url "https://github.com/BiKing567/RateSync/releases/download/v#{version}/RateSync-#{version}.dmg"
  name "RateSync"
  desc "Automatically switches audio sample rates for lossless music"
  homepage "https://github.com/BiKing567/RateSync"

  depends_on macos: ">= :sequoia"

  app "RateSync.app"

  uninstall quit: "com.biking.RateSync"

  zap trash: [
    "~/Library/Caches/com.biking.RateSync",
    "~/Library/Containers/com.biking.RateSync.Widget",
    "~/Library/Group Containers/group.com.biking.RateSync",
    "~/Library/Preferences/com.biking.RateSync.plist",
  ]
end
