class Abc < Formula
  desc "ABC: System for Sequential Logic Synthesis and Formal Verification"
  homepage "http://www.eecs.berkeley.edu/~alanmi/abc/abc.htm"
  url "https://bitbucket.org/alanmi/abc", :using => :hg
  version "tip"

  def install
    system "make"
    bin.install("abc")
  end

  test do
    system "abc","-h"
  end
end
