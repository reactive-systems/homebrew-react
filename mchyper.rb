class Mchyper < Formula
  desc "Model Checker for Hyperproperties"
  homepage "https://www.react.uni-saarland.de/tools/mchyper/"
  url "https://www.react.uni-saarland.de/tools/mchyper/mchyper-0.91.tar.gz"
  sha256 "7cc7cc2e209456dffd9c66dabc8719546fdcc9e1e3afd6b8b478e8d368342cb1"
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
  end

  test do
    system "mchyper -h"
  end
end
