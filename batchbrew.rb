# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Batchbrew < Formula
  desc "A script to batch install Homebrew formulae."
  homepage "http://cppconsole.bruienne.com/"
  url "http://cppconsole.bruienne.com/repos/homebrew/formulae/batchbrew.1.0.tar.gz"
  version "1.0"
  sha256 "303a055ef94e1e263d0706b2226fd2a6dd583f6e4dd7f7b14bec5864f743eada"
  
  def install
    bin.install Dir["bin/batchbrew"]
    man5.install Dir["share/man/man5/batchbrew.5"]
  end

  test do
    system "batchbrew"
  end
end
