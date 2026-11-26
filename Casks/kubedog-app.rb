# Written by Kubedog's release script; changes made here by hand are lost with the next release.
cask "kubedog-app" do
  version "0.6.0"
  sha256 "884c7db9bb9c32f59b27d0772b3638bfd1c47abf724a40eec2f5d323b56960d8"

  url "https://github.com/pezzking/kubedog/releases/download/v0.6.0/kubedog-0.6.0-macos-arm64.dmg"
  name "Kubedog"
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"

  depends_on arch: :arm64

  app "Kubedog.app"
end
