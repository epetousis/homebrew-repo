class ChangeAccent < Formula
  desc "A simple utility to change the system accent on macOS 10.14+"
  homepage "https://github.com/epetousis/change-accent"
  url "https://github.com/epetousis/change-accent/archive/0.0.1.zip"
  head "https://github.com/epetousis/change-accent.git"
  version "0.0.1"
  sha256 "3dd60c1529f783e37090e9c0f08e32be05ef961bda0c526d915528349a275e37"

  depends_on :xcode => :build
  depends_on :macos => :mojave

  def install
    xcodebuild "SYMROOT=build", "DSTROOT=#{buildpath}/dst",
               "-project", "change-accent.xcodeproj",
               "CODE_SIGN_IDENTITY=", "CODE_SIGNING_REQUIRED=NO",
               "clean",
               "install"
    bin.install "dst/usr/local/bin/change-accent"
  end

  test do
    system "#{bin}/change-accent", "--version"
  end
end
