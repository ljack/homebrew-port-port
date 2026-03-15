cask "port-port-app" do
  version "1.3.1"
  sha256 "50147b3b95c4dca6886317cb6cfc6ca9865cff3d6032beca9246d402832f7d8b"

  url "https://github.com/ljack/port-port/releases/download/v1.3.1/Port-Port-v1.3.1.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
