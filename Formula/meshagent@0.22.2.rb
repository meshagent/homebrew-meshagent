class MeshagentAT0222 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.22.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.22.2/meshagent-0.22.2-macos.tar.gz"
  sha256 "63378e584994c473a70dfe738612b0dc98b2c9aee190f33c7057f278284d309b"
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
