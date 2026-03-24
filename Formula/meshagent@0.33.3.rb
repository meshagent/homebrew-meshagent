class MeshagentAT0333 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.33.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.33.3/meshagent-0.33.3-macos.tar.gz"
  sha256 "d0907ccd6b3ed4d052477137716160c98ec461c4aa25f89964d0b17db0ed9222"
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
