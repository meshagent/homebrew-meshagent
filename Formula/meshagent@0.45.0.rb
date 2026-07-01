class MeshagentAT0450 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.45.0"  # keep in sync with your artifact
  preserve_rpath

  on_macos do
    url "https://storage.googleapis.com/meshagent-cli-builds/0.45.0/meshagent-0.45.0-macos.tar.gz"
    sha256 "c859f60b940b37c168906eddf2d5578c95b5dbcd9e18f0b2b2ca7df9b833edef"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.0/meshagent-0.45.0-linux-arm64.tar.gz"
      sha256 "321ef853a51f3fa6e6563c2773d78d23c846b0e732cd1ddf6f7c2b989048f75d"
    else
      url "https://storage.googleapis.com/meshagent-cli-builds/0.45.0/meshagent-0.45.0-linux-x86_64.tar.gz"
      sha256 "40f393476ef8f6548cc721d7809cab4657e42081277d05d8ec5cc3baab25bde0"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"meshagent"
  end

end
