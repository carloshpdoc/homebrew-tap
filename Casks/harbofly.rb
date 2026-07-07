cask "harbofly" do
  version "1.5.0"
  sha256 "4276a36667bd7c6169c52c4e555c3a19b81781e1d35f09b212fb3871b1f3537f"

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
