class MeshagentAT02815 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.15"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.15/meshagent-0.28.15-macos.tar.gz"
  sha256 "1d4b8e723ca9781a5ebf761d10d46f54dfe0a62b0c16435b74200ce632e0e524"
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
