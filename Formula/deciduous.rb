class Deciduous < Formula
  desc "Decision graph tooling for AI-assisted development"
  homepage "https://deciduous.dev/"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-arm64"
      sha256 "1f628ff857a0a1a3f70dbd7ec15b0d32f8bdf33aa00cc61d8d8c0f2a517aaa8b"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-darwin-amd64"
      sha256 "661e62e5222f164582692ef01ff4fc723913a8efb463a06e253876332dca3465"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-arm64"
      sha256 "7393ab6ca3c1947b1dd272fbb97e97cec5ab1df9672fcfd15982ec7095733ccc"
    end
    on_intel do
      url "https://github.com/notactuallytreyanastasio/deciduous/releases/download/v#{version}/deciduous-linux-amd64"
      sha256 "5dc78e98a9af967737dff0aa6ec93a4be85354c4f102490941ae62d34a0ea122"
    end
  end

  def install
    binary_name = Dir["deciduous-*"].first
    bin.install binary_name => "deciduous"
  end

  def caveats
    <<~EOS
      ======================================================================
      DECIDUOUS 1.0: SET UP SHARED POSTGRES MEMORY
      ======================================================================

      Running a team of agents? Set up Postgres before starting the team.
      Homebrew installed the CLI. It did NOT create a shared graph server.

      START HERE: POSTGRES + AGENT SETUP
        https://deciduous.dev/tutorial/local-postgres.html

      UPGRADING AN EXISTING GRAPH? BACK UP BEFORE MIGRATING.
        https://deciduous.dev/tutorial/upgrading.html

      Agents share memory through the HTTP MCP server backed by Postgres.
      Ordinary CLI writes and stdio MCP still use local SQLite.
      SQLite remains available for solo/offline use.

      Read the guides, then run deciduous init in your project.
      Installing or upgrading the CLI does not migrate your existing data.
      See this message again with: brew info deciduous
      ======================================================================
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deciduous --version")
  end
end
