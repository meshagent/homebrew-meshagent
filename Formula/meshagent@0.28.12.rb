class MeshagentAT02812 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.12"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.12/meshagent-0.28.12-macos.tar.gz"
  sha256 "28b8ba2a77f640ee41a47f770822cb7e84356e181eb6da09e4de880efbf41da5"
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
