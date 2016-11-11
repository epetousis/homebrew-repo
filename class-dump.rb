require 'formula'

class ClassDump < Formula
  homepage 'http://stevenygard.com/projects/class-dump/'
  url 'https://github.com/nygard/class-dump/archive/7acf1f00a03a219388a1d19d66edaa954c0be3a5.zip'
  sha256 '039f91c526cb4f244d2eedf8f435c75fedb9cdd7a5111f2a60149ea3b8e9cbcb'

  def install
    xcodebuild "-project", "class-dump.xcodeproj", "-target", "all", "SYMROOT=build", "DSTROOT=#{prefix}", "INSTALL_PATH=/bin", "-verbose", "install"
  end
end
