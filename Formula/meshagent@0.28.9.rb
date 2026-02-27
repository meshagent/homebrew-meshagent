class MeshagentAT0289 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.9"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.9/meshagent-0.28.9-macos.tar.gz"
  sha256 "d86ebc25a9ce31aa33c9cebca6c2bd3488b5339f4b6397b283963b09868215cd"
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
