cask "ratesync" do
  version "3.2.7"
  sha256 "d650d5a95df9c851e460760df8ac8310f2a2cc494a63e2b2f88214f6d63e2919"

  url "https://github.com/BiKing567/RateSync/releases/download/v#{version}/RateSync-#{version}.dmg"
  name "RateSync"
  desc "Automatically switches audio sample rates for lossless music"
  homepage "https://github.com/BiKing567/RateSync"

  depends_on macos: :sequoia

  app "RateSync.app"

  uninstall quit: "com.biking.RateSync"

  zap trash: [
    "~/Library/Caches/com.biking.RateSync",
    "~/Library/Containers/com.biking.RateSync.Widget",
    "~/Library/Group Containers/group.com.biking.RateSync",
    "~/Library/Preferences/com.biking.RateSync.plist",
  ]
end
