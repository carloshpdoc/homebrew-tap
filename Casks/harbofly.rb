cask "harbofly" do
  version "1.4.0"
  sha256 "f3c696d4eaf8716eb980999af7012cd26a09704fb8a4653174703c78cae0ffb6"

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
