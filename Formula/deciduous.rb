class Deciduous < Formula
  desc "Decision graph tooling for AI-assisted development"
  homepage "https://notactuallytreyanastasio.github.io/deciduous/"
  version "1.0.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-arm64"
      sha256 "dcc5258ddb79846dba8e16aea843d7fbaae6ed0644e45e2fa23236e2969cca3a"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-amd64"
      sha256 "d84f97224e3027559e5da720e6e463ad31b0a71c1e20cab915b786c8d78ae1ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-arm64"
      sha256 "e15d5d918d61b7974c7092b007b3fddda35bec17b35cf8d120a5f84af01bbdb8"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-amd64"
      sha256 "2333724a034dc4603c208d6b1cf61365c320a99cff3c8fb1c79d4b81fe64feac"
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
