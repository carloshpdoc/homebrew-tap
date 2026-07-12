cask "harbofly" do
  version "1.8.0"
  sha256 "2fddb3c9b2134224a208eaaf0225857e66c958e5330f0f82ef59391e1f721bcc"

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
