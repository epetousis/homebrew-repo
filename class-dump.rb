require 'formula'

class ClassDump < Formula
  homepage 'http://stevenygard.com/projects/class-dump/'
  url 'https://github.com/nygard/class-dump/archive/3.5.tar.gz'
  sha1 'e407ad77ba2a75dce275c03f0a054a314b267a88'

  def install
    xcodebuild "-project", "class-dump.xcodeproj", "-scheme", "all", "SYMROOT=build", "DSTROOT=#{prefix}", "INSTALL_PATH=/bin", "-verbose", "install"
  end
end
