# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Batchbrew < Formula
  desc "A script to batch install Homebrew formulae."
  homepage "http://cppconsole.bruienne.com/"
  url "http://cppconsole.bruienne.com/repos/homebrew/formulae/batchbrew.1.0.tar.gz"
  version "1.0"
  sha256 "e86e8a7953f93de170b60dcc53b9edb40293dd0b39727575bf8d3af48670bb1b"
  
  def install
    system "./install"
  end

  test do
    system "batchbrew"
  end
end
