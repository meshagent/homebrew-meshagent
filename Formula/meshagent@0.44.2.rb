class MeshagentAT0442 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.44.2/meshagent-0.44.2-macos.tar.gz"
  sha256 "50c9fe16a4bedbc82470588e6dc205dd4d556db9603c1fd2fe50d6139d28c431"
  preserve_rpath

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
