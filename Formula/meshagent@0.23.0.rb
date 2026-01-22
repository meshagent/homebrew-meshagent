class MeshagentAT0230 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.23.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.23.0/meshagent-0.23.0-macos.tar.gz"
  sha256 "a13759dcd9277d528a259d7d5b327af60c05f52a3b8b021e4a11ffbd7494c5c5"
  depends_on macos: :sonoma
  depends_on "openssl@3"
  preserve_rpath

  def install
    (libexec/"meshagent").install Dir["*"]
    # Create a wrapper that sets SSL_CERT_FILE / SSL_CERT_DIR to Homebrew's OpenSSL bundle
    (bin/"meshagent").write_env_script libexec/"meshagent/meshagent",
      SSL_CERT_FILE: etc/"openssl@3/cert.pem",
      SSL_CERT_DIR:  etc/"openssl@3/certs"
  end

end
