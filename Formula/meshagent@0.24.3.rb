class MeshagentAT0243 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.24.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.24.3/meshagent-0.24.3-macos.tar.gz"
  sha256 "60a633f2c8f87f5944cb6147afcf5fdb0389f2b6666e1fbda245395eff87f67e"
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
