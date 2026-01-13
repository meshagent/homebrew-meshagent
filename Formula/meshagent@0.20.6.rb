class MeshagentAT0206 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.20.6"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.20.6/meshagent-0.20.6-macos.tar.gz"
  sha256 "04058b1ce608f5d9d3a166ac6900ff05250dfb3336c5cb5b950f29ac5e7aa0ee"
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
