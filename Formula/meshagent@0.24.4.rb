class MeshagentAT0244 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.24.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.24.4/meshagent-0.24.4-macos.tar.gz"
  sha256 "9f20d3a74ee52b21ee07deaf6293a5fef4eecf1769d4fdcddfcf3ea173eb486f"
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
