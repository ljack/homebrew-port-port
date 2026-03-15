class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.2.4/port-port-v1.2.4-macos.tar.gz"
  sha256 "093f019939b66fd5af12d54fdb15cf1e1e97f743f231015ef5bea66de26dc92b"
  version "1.2.4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "port-port-cli"
    bin.install "port-port-mcp"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/port-port-cli --help")
  end
end
