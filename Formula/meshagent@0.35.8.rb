class MeshagentAT0358 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.35.8"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.35.8/meshagent-0.35.8-macos.tar.gz"
  sha256 "dadb6f661755f5278e077c339d5a34498c9b2394609d0625051f49e256a64531"
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
