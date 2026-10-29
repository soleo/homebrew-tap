cask "tinycap" do
  version "0.4.0"
  sha256 "4d771174860e148f75b1830e26e0e52f974d9f3774dea70301055fcc5afca0c1"

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
