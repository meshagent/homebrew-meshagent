class MeshagentAT0203 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.20.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.20.3/meshagent-0.20.3-macos.tar.gz"
  sha256 "ee6f9743651a936875ab176a93cc5cdcf88ebecc6dac121a13f7f21ac38c6ccc"
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
