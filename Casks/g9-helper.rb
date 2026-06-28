cask "g9-helper" do
  version "1.2.2"
  sha256 "a772f3062395ea6b0de75edc6e45387f2f2a9404462256ebf69356d68a43398f"

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
