cask "port-port-app" do
  version "1.2.1"
  sha256 "e4ea6c63078bca3252f4b6c1106e004a014d09d331fee15c2758f28fe88fa11d"

  url "https://github.com/ljack/port-port/releases/download/v1.2.1/Port-Port-v1.2.1.zip"
  name "PortPort"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "PortPort.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
