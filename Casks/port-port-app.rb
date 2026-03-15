cask "port-port-app" do
  version "1.2.2"
  sha256 "0f41f08bae47c576c5a9c49f77530bc051713ac447dfbe70e1d84c2d5e453c8b"

  url "https://github.com/ljack/port-port/releases/download/v1.2.2/Port-Port-v1.2.2.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
