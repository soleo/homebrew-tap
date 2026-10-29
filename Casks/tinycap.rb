cask "tinycap" do
  version "0.3.0"
  sha256 "ea8a06019387d22d4da8f7e95c44d6b3515ff3298c8d1cd97f3fd34a3ab1b5e2"

  url "https://github.com/soleo/tinycap/releases/download/v#{version}/Tinycap-#{version}.dmg"
  name "Tinycap"
  desc "Screen recorder and screenshot tool"
  homepage "https://soleo.github.io/tinycap/"

  livecheck do
    url "https://github.com/soleo/tinycap/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Tinycap.app"

  zap trash: [
    "~/Library/Application Scripts/app.tinycap.Tinycap",
    "~/Library/Containers/app.tinycap.Tinycap",
  ]
end
