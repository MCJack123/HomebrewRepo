# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Batchbrew < Formula
  desc "A script to batch install Homebrew formulae."
  homepage "http://cppconsole.bruienne.com/"
  url "http://cppconsole.bruienne.com/repos/homebrew/formulae/batchbrew.1.0.tar.gz"
  version "1.0"
  sha256 "bda1d7ac9eeef1f6c137904ecab3790fd51cacdeb3f04c7d5745e5941173e2e6"
  
  def install
    system "./install"
  end

  test do
    system "batchbrew"
  end
end
