class MeshagentAT02810 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.10"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.10/meshagent-0.28.10-macos.tar.gz"
  sha256 "5a7b6281696f851db20cfb0f3a3591a431cbfb5c1e0b1d0c8b88cd82af2f4990"
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
