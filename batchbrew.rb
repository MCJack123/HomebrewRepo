# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Batchbrew < Formula
  desc "A script to batch install Homebrew formulae."
  homepage "http://cppconsole.bruienne.com/"
  url "http://cppconsole.bruienne.com/repos/homebrew/formulae/batchbrew.1.0.tar.gz"
  version "1.0"
  sha256 "02f7e6f094af52f4f693ed80962a99ec4515882bb7399202b943574b0d8c9102"
  
  def install
    bin.install Dir["bin/batchbrew"]
    man5.install Dir["share/man/man5/batchbrew.5"]
  end

  test do
    system "batchbrew"
  end
end
