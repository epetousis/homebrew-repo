require 'formula'

class ClassDump < Formula
  homepage 'http://stevenygard.com/projects/class-dump/'
  url 'https://github.com/nygard/class-dump/archive/3.5.tar.gz'
  sha1 'c343bec63878161b02c956f49c9c1c8d989b4b5a'

  def install
    xcodebuild "-project", "class-dump.xcodeproj", "-target", "all", "SYMROOT=build", "DSTROOT=#{prefix}", "INSTALL_PATH=/bin", "-verbose", "install"
  end
end
