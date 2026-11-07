cask "tinycap" do
  version "0.7.0"
  sha256 "fb1682dda85dead5eed4f79a8cda72df4446f1f751a04699533d09a8a47ae6fb"

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
