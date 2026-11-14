cask "harbofly" do
  version "1.16.0"
  sha256 "75edef5a3f528c7814aa69c4ff4a01b72cb0001fe8a94be66c0bcafd7afea2cc"

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
