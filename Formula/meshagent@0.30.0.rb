class MeshagentAT0300 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.30.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.30.0/meshagent-0.30.0-macos.tar.gz"
  sha256 "50464e77325d173814e5eaad0d0b2e47365611574fcdc531f6ed40396a652084"
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
