class MeshagentAT0245 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.24.5"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.24.5/meshagent-0.24.5-macos.tar.gz"
  sha256 "ea4edbea3c81324a12330544d3b2c1bdf37f11dbe9254bed607d4d69570d41d5"
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
