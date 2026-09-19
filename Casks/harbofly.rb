cask "harbofly" do
  version "1.12.2"
  sha256 "c21f8a92bb953b3fca00bfa511d2df438eea8f99a8957c8ef797637d8df1db7f"

  url "https://github.com/carloshpdoc/Harbofly/releases/download/v#{version}/Harbofly.dmg"
  name "Harbofly"
  desc "Menu bar app that reclaims disk space from dev build artifacts and caches"
  homepage "https://harbofly.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Harbofly.app"
  binary "#{appdir}/Harbofly.app/Contents/MacOS/Harbofly", target: "harbofly"

  zap trash: [
    "~/Library/Preferences/app.harbofly.plist",
  ]
end
