class Deciduous < Formula
  desc "Decision graph tooling for AI-assisted development"
  homepage "https://notactuallytreyanastasio.github.io/deciduous/"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-arm64"
      sha256 "0dc550f26c2d20d0cfbdd5f57cc16378e6edc4ef6594eaeaacdd81244b8e25b9"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-amd64"
      sha256 "27ecd89c815acba7c3eb31712a596549d24f62831c5c211eb176fc8dcbcc8b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-arm64"
      sha256 "3981b792d0aa89bb2e15a676080f041ab578b272b6b30c5c1a05e11ce6dfb752"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-amd64"
      sha256 "b5614a9f903e566934810cbe37a3a905f8ba5ce1da9b3fac8fd1fc06bdd474a0"
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
