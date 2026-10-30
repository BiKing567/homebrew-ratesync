cask "ratesync" do
  version "3.2.8"
  sha256 "6e422188a524a944d3dac1cd89375b0f6b7cbfdc1bccc848a924cb0a869ecf35"

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
