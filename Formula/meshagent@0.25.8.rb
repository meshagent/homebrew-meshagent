class MeshagentAT0258 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.25.8"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.25.8/meshagent-0.25.8-macos.tar.gz"
  sha256 "0c4d437271c44dd62c35f381fe1fcde1defa1a722bd87b37a49d293c387f0ecf"
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
