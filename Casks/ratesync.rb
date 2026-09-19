cask "ratesync" do
  version "3.2.6"
  sha256 "31f59b6db14628aa9a8ba8f8153c231ef5e36cd67d7c98e68d320c738d123ff8"

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
