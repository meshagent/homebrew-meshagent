class MeshagentAT0384 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.38.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.38.4/meshagent-0.38.4-macos.tar.gz"
  sha256 "a8528086f381f41b3156c23a88cea31fe96992df7b4348bc04c15bc6c20e4e6b"
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
