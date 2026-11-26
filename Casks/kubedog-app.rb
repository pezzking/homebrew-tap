# Written by Kubedog's release script; changes made here by hand are lost with the next release.
cask "kubedog-app" do
  version "0.8.0"
  sha256 "b4c20b4d0e404ed9453d12d1cf98b34af952c322b13fbbef7b7bc02c06faa0a3"

  url "https://github.com/pezzking/kubedog/releases/download/v0.8.0/kubedog-0.8.0-macos-arm64.dmg"
  name "Kubedog"
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"

  depends_on arch: :arm64

  app "Kubedog.app"
end
