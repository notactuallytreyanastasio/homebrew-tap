class Deciduous < Formula
  desc "Decision graph tooling for AI-assisted development"
  homepage "https://notactuallytreyanastasio.github.io/deciduous/"
  version "0.13.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-arm64"
      sha256 "672f848bfaa119b66162239625cd616865c8f4523a6fb197b1bc91d5f519ba17"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-amd64"
      sha256 "047e684afd8a86e084ee3994aa14fa025ab933f613831492445dd87894c2f219"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-arm64"
      sha256 "1a157987f5ef9601e9fc16214466324a607830cf0a5221d6545e4f890566f9a3"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-amd64"
      sha256 "bc733cbcff8ad8a3133a383708b2104602521ff5cf0f3ffdb257f8d35627f679"
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
