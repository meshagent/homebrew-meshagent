class MeshagentAT0190 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.19.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.19.0/meshagent-0.19.0-macos.tar.gz"
  sha256 "359a2b11079c057b290fe6464d17fded3068323ca5770c973a320e5b69a21789"
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
