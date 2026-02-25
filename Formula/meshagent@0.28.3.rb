class MeshagentAT0283 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.3/meshagent-0.28.3-macos.tar.gz"
  sha256 "1112d13524fcfe0c3a328c5d48885b5fda305acf952b973538b12f8f5b98bad6"
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
