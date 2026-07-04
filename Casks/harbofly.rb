cask "harbofly" do
  version "1.1.0"
  sha256 "02899b4f7aa9ad0c23712ef9424dc542d53abaee31cd5a03bee76735fe0c17a2"

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
