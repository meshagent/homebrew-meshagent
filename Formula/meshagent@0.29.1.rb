class MeshagentAT0291 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.29.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.29.1/meshagent-0.29.1-macos.tar.gz"
  sha256 "788842a6aebb91c2c533f3d60750ee4bdacd61f2125bd19c1aa97fe980b69d08"
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
