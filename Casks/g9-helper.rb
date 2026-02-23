cask "g9-helper" do
  version "1.1.1"
  sha256 "9b4f076be79b9a0b63be02710aa01501e2238c08d581778cd5dcaacbe8f35896"

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
