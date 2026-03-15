cask "port-port-app" do
  version "1.4.0"
  sha256 "05a1f4170fd7b5db41e5564a8e0740aa72f593a014d1ff8143b72bdb0d44533f"

  url "https://github.com/ljack/port-port/releases/download/v1.4.0/Port-Port-v1.4.0.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
