cask "g9-helper" do
  version "1.2.4"
  sha256 "8317554b5151de4e7bfc3f84dfe3d8cadaa6a968da9491b303ab95933d338d5c"

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
