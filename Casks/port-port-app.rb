cask "port-port-app" do
  version "1.1.0"
  sha256 "9ae1a77f7e08e98147b8161526958b87c011f203c8392a52b835c922ca510279"

  url "https://github.com/ljack/port-port/releases/download/v1.1.0/Port-Port-v1.1.0.zip"
  name "Port Port"
  desc "Menu bar app for monitoring listening ports on macOS"
  homepage "https://github.com/ljack/port-port"

  depends_on macos: ">= :sequoia"

  app "Port Port.app"

  zap trash: [
    "~/Library/Application Support/port-port",
  ]
end
