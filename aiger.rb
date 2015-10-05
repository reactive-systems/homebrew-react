class Aiger < Formula
  desc "AIGER is a format, library and set of utilities for And-Inverter Graphs (AIGs)"
  homepage "http://fmv.jku.at/aiger/"
  url "http://fmv.jku.at/aiger/aiger-1.9.9.tar.gz"
  version "1.9.9"
  sha256 "1e50d3db36f5dc5ed0e57aa4c448b9bcf82865f01736dde1f32f390b780350c7"

  def install
    system "./configure.sh"
    system "make"
    bin.install("aigand")
    bin.install("aigdd")
    bin.install("aigflip")
    bin.install("aigfuzz")
    bin.install("aiginfo")
    bin.install("aigjoin")
    bin.install("aigmiter")
    bin.install("aigmove")
    bin.install("aignm")
    bin.install("aigor")
    bin.install("aigreset")
    bin.install("aigsim")
    bin.install("aigsplit")
    bin.install("aigstrip")        
    bin.install("aigtoaig")
    bin.install("aigtoblif")
    bin.install("aigtocnf")
    bin.install("aigtodot")
    bin.install("aigtosmv")
    bin.install("aigunconstraint")
    bin.install("aigunroll")
    bin.install("andtoaig")
    bin.install("bliftoaig")
    bin.install("smvtoaig")
    bin.install("soltostim")
    bin.install("wrapstim")    
  end

  test do
    system "aigbmc","-h"
  end
end
