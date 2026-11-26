# Written by Kubedog's release script; changes made here by hand are lost with the next release.
cask "kubedog-app" do
  version "0.7.0"
  sha256 "4b43343bee661478882addc64ac80b15ea5f6efa6e90090162157eca5826550c"

  url "https://github.com/pezzking/kubedog/releases/download/v0.7.0/kubedog-0.7.0-macos-arm64.dmg"
  name "Kubedog"
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"

  depends_on arch: :arm64

  app "Kubedog.app"
end
