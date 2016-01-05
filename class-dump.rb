require 'formula'

class ClassDump < Formula
  homepage 'http://stevenygard.com/projects/class-dump/'
  url 'https://github.com/nygard/class-dump/archive/3.5.tar.gz'
  sha1 'e878d552ed175912ba4d8325718dda8dca680430'

  def install
    xcodebuild "-project", "class-dump.xcodeproj", "-scheme", "all", "SYMROOT=build", "DSTROOT=#{prefix}", "INSTALL_PATH=/bin", "-verbose", "install"
  end
end
