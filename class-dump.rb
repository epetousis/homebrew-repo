require 'formula'

class ClassDump < Formula
  homepage 'http://stevenygard.com/projects/class-dump/'
  url 'https://github.com/nygard/class-dump/archive/7acf1f00a03a219388a1d19d66edaa954c0be3a5.zip'
  sha1 'f2aa0da5955c07876fac93ae6fbdb4cc11872292'

  def install
    xcodebuild "-project", "class-dump.xcodeproj", "-target", "all", "SYMROOT=build", "DSTROOT=#{prefix}", "INSTALL_PATH=/bin", "-verbose", "install"
  end
end
