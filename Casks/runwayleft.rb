cask "runwayleft" do
  version "1.13.1"
  sha256 "0a6207a6769abc0cb252ce1af2c11a0673ec612515e48019ca644b4b82e2592d"

  url "https://github.com/pezzking/runwayleft/releases/download/v#{version}/RunwayLeft-#{version}.zip"
  name "RunwayLeft"
  desc "Menu bar meter for Claude Code, Codex, and LiteLLM quotas"
  homepage "https://github.com/pezzking/runwayleft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "RunwayLeft.app"

  uninstall quit: "dev.runwayleft.app"

  zap trash: [
    "~/Library/Application Support/RunwayLeft",
    "~/Library/Preferences/dev.runwayleft.app.plist",
  ]
end
