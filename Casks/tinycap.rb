cask "tinycap" do
  version "0.7.1"
  sha256 "ab2fe050c4900a9ebe7f816de3d34344c9285d0a26bce904354323eb20a1a4d2"

  url "https://github.com/soleo/tinycap/releases/download/v#{version}/Tinycap-#{version}.dmg"
  name "Tinycap"
  desc "Screen recorder and screenshot tool"
  homepage "https://soleo.github.io/tinycap/"

  livecheck do
    url "https://github.com/soleo/tinycap/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Tinycap.app"

  zap trash: [
    "~/Library/Application Scripts/app.tinycap.Tinycap",
    "~/Library/Containers/app.tinycap.Tinycap",
  ]
end
