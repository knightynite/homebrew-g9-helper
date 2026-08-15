cask "g9-helper" do
  version "1.2.6"
  sha256 "ea2c67c326b3c46c961e723fb5dd3d81d22e2e78be62b6fd4f270b08dc65577b"

  url "https://github.com/knightynite/HiDPIVirtualDisplay/releases/download/v#{version}/G9.Helper-v#{version}.dmg"
  name "G9 Helper"
  desc "HiDPI Retina scaling for Samsung Odyssey G9 and large monitors"
  homepage "https://github.com/knightynite/HiDPIVirtualDisplay"

  depends_on macos: ">= :monterey"

  app "G9 Helper.app"

  zap trash: [
    "~/Library/Preferences/com.hidpi.virtualdisplay.plist",
    "/tmp/g9helper.log",
  ]
end
