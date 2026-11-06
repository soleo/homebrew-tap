cask "tinycap" do
  version "0.6.0"
  sha256 "4e69b2a2d181aa734e2707376edb7ba4ce6e41c3e26864a5c75d6476fb068531"

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
