require 'formula'

class ClassDump < Formula
  homepage 'http://stevenygard.com/projects/class-dump/'
  url 'http://stevenygard.com/download/class-dump-3.5.tar.gz'
  sha1 'e878d552ed175912ba4d8325718dda8dca680430'

  def install
    bin.install 'class-dump'
  end
end
