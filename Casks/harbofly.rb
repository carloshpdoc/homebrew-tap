cask "harbofly" do
  version "1.2.0"
  sha256 "5411a83583fadde826eba3c5a2afe0edbb3c4857bd9f3d22f5c09aedaa9c4e32"

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

  zap trash: [
    "~/Library/Preferences/app.harbofly.plist",
  ]
end
