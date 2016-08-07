class Pincrush < Formula
  desc "a PNG optimiser implementing Apple's proprietary CgBI format"
  homepage "http://howett.net/pincrush/"
  version "0.9.2"
  url "http://howett.net/pincrush/pincrush-osx"
  sha256 "aa0f02acaf67ee9c552e459298612f00e391a997962b2cde15e90fa42a99ab7d"

  bottle :unneeded

  def install
    bin.install "pincrush-osx"
    mv bin/"pincrush-osx", bin/"pincrush"
  end
end
