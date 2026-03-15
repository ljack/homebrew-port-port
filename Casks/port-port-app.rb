cask "port-port-app" do
  version "1.3.3"
  sha256 "d6f937de7c84853315681efb78ffd12e2a2cbcf6369941e4fa966640b433c062"

  url "https://github.com/ljack/port-port/releases/download/v1.3.3/Port-Port-v1.3.3.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
