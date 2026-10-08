class Tachyonic < Formula
  desc "Command-line client for Tachyonic"
  homepage "https://tachyonic.co"

  on_macos do
    on_arm do
      url "https://releases.tachyonic.sh/v0.18.0/darwin-arm64/tachyonic"
      sha256 "e56afa12063afdd0a738c29fa9e8a4acc90609f85faad87cf9de7cdf8d9a7fdb"
    end
    on_intel do
      url "https://releases.tachyonic.sh/v0.18.0/darwin-amd64/tachyonic"
      sha256 "ee1da8eae45d741512f35fc213ec1ee123f269ae6391dc6a7c2d6a01621f2b55"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.tachyonic.sh/v0.18.0/linux-arm64/tachyonic"
      sha256 "1a22f93fd56fc97f8c11e86c3affa9437ffbe80623fc3ef20a3ead944d42959c"
    end
    on_intel do
      url "https://releases.tachyonic.sh/v0.18.0/linux-amd64/tachyonic"
      sha256 "95974403da2c1dd63c994ab90afc555b4de96497fe9a4f9d149f344a84825e8a"
    end
  end

  def install
    bin.install "tachyonic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tachyonic --version")
  end
end
