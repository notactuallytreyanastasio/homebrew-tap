class Deciduous < Formula
  desc "Decision graph tooling for AI-assisted development"
  homepage "https://notactuallytreyanastasio.github.io/deciduous/"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-arm64"
      sha256 "bb394c185c32ee9e79316a2075be17924e589b4eb23da596c4deaa2358bb6332"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-amd64"
      sha256 "6b4b6bb87164feaca3df57f40090c2fd8caf5592b7fd870113097b866ef6c7a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-arm64"
      sha256 "424462b55f6dfe10c5eea3bf2868571d8369fe0d5cc053f5ac8fdbad8ac72005"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-amd64"
      sha256 "4716fac2c52c29a14d7b24d814ed94708f8a2336a7a2f46889626ecc7da4d7a1"
    end
  end

  def install
    binary_name = Dir["deciduous-*"].first
    bin.install binary_name => "deciduous"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deciduous --version")
  end
end
