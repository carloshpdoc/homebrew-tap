cask "harbofly" do
  version "1.10.4"
  sha256 "be978869c056310edd75bc271e20a239ad41698abad3453aa82a05c9f83d3c21"

  url "https://github.com/carloshpdoc/Harbofly/releases/download/v#{version}/Harbofly.dmg",
      verified: "github.com/carloshpdoc/Harbofly/"
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
