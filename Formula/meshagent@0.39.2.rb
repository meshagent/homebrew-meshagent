class MeshagentAT0392 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.39.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.39.2/meshagent-0.39.2-macos.tar.gz"
  sha256 "57722a7922edd54f861bd3074d5e0d50ad16947473e6efc42a7120b60df20044"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
