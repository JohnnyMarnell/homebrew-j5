require "language/node"

class J5Scripts < Formula
  desc "Bunch of CLI helpers, WiP"
  homepage "https://github.com/JohnnyMarnell/j5-scripts"
  url "https://github.com/JohnnyMarnell/j5-scripts/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "36fbbf5bcb05b7a3fc8f44413e466ce50c9be3dc7603c60acb2461adc13f8cf9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # to do
    system "false"
  end
end
