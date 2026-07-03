cask "harbofly" do
  version "1.0.0"
  sha256 "db59df462fd2997ca0c03477d89771a654110e33d63a205db909aaad36f7610e"

  url "https://github.com/carloshpdoc/Harbofly/releases/download/v#{version}/Harbofly.dmg"
  name "Harbofly"
  desc "Menu bar app that reclaims disk space from dev build artifacts and caches"
  homepage "https://harbofly.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Harbofly.app"

  zap trash: [
    "~/Library/Preferences/app.harbofly.plist",
  ]
end
