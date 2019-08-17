class ChangeAccent < Formula
  desc "A simple utility to change the system accent on macOS 10.14+"
  homepage "https://github.com/epetousis/change-accent"
  url "https://github.com/epetousis/change-accent/archive/0.0.2.zip"
  head "https://github.com/epetousis/change-accent.git"
  version "0.0.2"
  sha256 "7d51f0e82a97e5d5f1f0230d58c151da2f6a677a5542e32f35d9e72a71240604"

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
