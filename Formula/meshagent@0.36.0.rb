class MeshagentAT0360 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.36.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.36.0/meshagent-0.36.0-macos.tar.gz"
  sha256 "17da8f38a5c81a606054c7fe3c313699501920051c8e548d5c6300a80fbca74c"
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
