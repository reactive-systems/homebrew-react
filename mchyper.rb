class Mchyper < Formula
  desc "Model Checker for Hyperproperties"
  homepage "https://www.react.uni-saarland.de/tools/mchyper/"
  url "https://www.react.uni-saarland.de/tools/mchyper/mchyper-0.91.tar.gz"
  sha256 "3a5bfcb5ac57d1076bc3e32061c0762bded981be329b04c57c837e04106b0be2"
  version "0.91"

  depends_on "ghc"
  depends_on "cabal-install"
  depends_on "abc"
  depends_on "python"
  depends_on "aiger"
  
  def install
    system "cabal","update"
    system "cabal","install","parsec","hashable","MissingH"
    system "ghc","mchypertool/Main.hs","-imchypertool/","-o","mchyper"
    bin.install "mchyper"
    bin.install "mchyper.py"
  end

  test do
    system "mchyper -h"
  end
end
