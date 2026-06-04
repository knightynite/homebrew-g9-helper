cask "g9-helper" do
  version "1.2.0"
  sha256 "2de27a8982a99a043179d5613d557df71fdb17d5168c16d46350473b1f5640ce"

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
