class MeshagentAT0443 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.44.3/meshagent-0.44.3-macos.tar.gz"
  sha256 "9c5f7c7a1af31be965ca368c8576c5db6ea6ba5da6d134e123668622f1d1bafe"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
