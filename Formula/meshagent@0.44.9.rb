class MeshagentAT0449 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.44.9"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.44.9/meshagent-0.44.9-macos.tar.gz"
    sha256 "1cd7cec34f315e0806e27780a55a9c914de64c66bb5fdd4bbf48d39833584e21"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.9/meshagent-0.44.9-linux-arm64.tar.gz"
      sha256 "c76605c5b1a26cfc0605c787ffb153b518f51a9b567cfa52d899c14c75db34c8"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.44.9/meshagent-0.44.9-linux-x86_64.tar.gz"
      sha256 "511448ac6120057e47fef71309d4223452a950d05e021cd5bd9b530ff84dd021"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
