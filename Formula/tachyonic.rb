class Tachyonic < Formula
  desc "Command-line client for Tachyonic"
  homepage "https://tachyonic.co"
  version "0.9.1"

  on_macos do
    on_arm do
      url "https://releases.tachyonic.sh/v0.9.1/darwin-arm64/tachyonic"
      sha256 "944d7de7ea20a788863699bdee515d0f5719d0ef653cf9ba6c22ca97320f1952"
    end
    on_intel do
      url "https://releases.tachyonic.sh/v0.9.1/darwin-amd64/tachyonic"
      sha256 "c60ecf6fa152b8202c3378492dbf324a118f2a086972bef13ecbac1fa85cd7d1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.tachyonic.sh/v0.9.1/linux-arm64/tachyonic"
      sha256 "ded9da4bbeb69aa13368b77854851b3e4a3ae9bdf36b919ef5429f3981872d12"
    end
    on_intel do
      url "https://releases.tachyonic.sh/v0.9.1/linux-amd64/tachyonic"
      sha256 "763eb30780be5266a24edae1d172887594b92ef11878edec1b59cc7ce7b0baed"
    end
  end

  def install
    bin.install "tachyonic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tachyonic --version")
  end
end
