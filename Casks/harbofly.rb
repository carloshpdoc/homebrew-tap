cask "harbofly" do
  version "1.10.3"
  sha256 "408955f1c6d15dcb6e2ea6f99b992b7fa5ad631ea7574ce44f9c1f290025f82a"

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
