cask "runwayleft" do
  version "1.13.0"
  sha256 "1554a61dd6fad49fac5e6f289fcd3a075daf8ee79a01d743740df99f9f6028d7"

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
