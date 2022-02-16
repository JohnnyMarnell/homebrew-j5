require "language/node"

class J5Scripts < Formula
  desc "Bunch of CLI helpers, WiP"
  homepage "https://github.com/JohnnyMarnell/j5-scripts"
  url "https://github.com/JohnnyMarnell/j5-scripts/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "e946b7aa934b8ece62076a654690b3ea36c5b229407d54615ea0885a9d56315b"
  # head "https://github.com/JohnnyMarnell/j5-scripts"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # to do
    # system "true"
  end
end
