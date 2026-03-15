class PortPort < Formula
  desc "CLI tools for monitoring and managing listening ports on macOS"
  homepage "https://github.com/ljack/port-port"
  url "https://github.com/ljack/port-port/releases/download/v1.3.0/port-port-v1.3.0-macos.tar.gz"
  sha256 "d20d6f1b6637fb1d25c0f8adcbaca34cb2444cc3c54106300c2a899563f54648"
  version "1.3.0"
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
