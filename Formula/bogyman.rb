class Bogyman < Formula
  desc "Which of your agent sessions needs you, on what, and for how long"
  homepage "https://github.com/soleo/bogyman-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.3.0/bogyman-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "291482f8a526f6a94d7585e33c8ec73e10e47ee7016a54341475a27b83bd8469"
    end
    on_intel do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.3.0/bogyman-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "5747267f6ac4aef1890c191668d9d29493918dc5fa7aa2d595c1ba03734c6d8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.3.0/bogyman-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9e88d720db7d48ea814504eaf7ce446f00c8c274c332dd76742937fb2f8d195"
    end
    on_intel do
      url "https://github.com/soleo/bogyman-cli/releases/download/v0.3.0/bogyman-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8461483db44d26f55d59dc2c8a5dbbfd991a2a9d3ae83967447d42edd44f348b"
    end
  end

  def install
    bin.install "bogyman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bogyman --version")
  end
end
