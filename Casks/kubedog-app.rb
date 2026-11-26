# Written by Kubedog's release script; changes made here by hand are lost with the next release.
cask "kubedog-app" do
  version "0.7.1"
  sha256 "363dcc645bf7b07410eb8113802dd6e1d9c40e5a5f94b72a503372d32116f053"

  url "https://github.com/pezzking/kubedog/releases/download/v0.7.1/kubedog-0.7.1-macos-arm64.dmg"
  name "Kubedog"
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"

  depends_on arch: :arm64

  app "Kubedog.app"
end
