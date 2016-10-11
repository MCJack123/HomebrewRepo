# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Batchbrew < Formula
  desc "A script to batch install Homebrew formulae."
  homepage "http://cppconsole.bruienne.com/"
  url "http://cppconsole.bruienne.com/repos/homebrew/formulae/batchbrew.1.0.tar.gz"
  version "1.0"
  sha256 "dc9d90030d60ef8a5af8b02fc8536c23d4e507b79b8f16495a627c9345bc8222"
  
  def install
    system "./install"
  end

  test do
    system "batchbrew"
  end
end
