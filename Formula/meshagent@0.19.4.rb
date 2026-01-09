class MeshagentAT0194 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.19.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.19.4/meshagent-0.19.4-macos.tar.gz"
  sha256 "325af4a0e889e215dd76e2c4f51a888adab3a4235f031eb9a802739d4151c3c4"
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
