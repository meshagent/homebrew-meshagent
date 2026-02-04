class MeshagentAT0255 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.25.5"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.25.5/meshagent-0.25.5-macos.tar.gz"
  sha256 "0d4de8edfadae8225fb8ddebedc29323c6ca4a5afa0932eac2644f3d6cf37659"
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
