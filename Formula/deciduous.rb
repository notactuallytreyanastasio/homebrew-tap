class Deciduous < Formula
  desc "Decision graph tooling for AI-assisted development"
  homepage "https://notactuallytreyanastasio.github.io/deciduous/"
  version "1.0.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-arm64"
      sha256 "d92138b7442522fdc03257ec0e36795cd9d472d766944c4fec385ca372a314ac"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-amd64"
      sha256 "f35585bc01e86fb9002def21577aeda5dcd85920ebd6793fe794c5791e0f6a56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-arm64"
      sha256 "62f8d60caa320af2dcfeb0b85fcf435239e66ec9a7547eb995e6a0c8102bf562"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-amd64"
      sha256 "b36d22c7d4225905cc95b92f3347f702227b4e794b11688e69c39f985448cb1f"
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
