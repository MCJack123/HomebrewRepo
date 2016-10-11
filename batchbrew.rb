# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Batchbrew < Formula
  desc "A script to batch install Homebrew formulae."
  homepage "http://cppconsole.bruienne.com/"
  url "http://cppconsole.bruienne.com/repos/homebrew/formulae/batchbrew.1.0.tar.gz"
  version "1.0"
  sha256 "9d38093a947111de2c151b4abe7ffb9f183c3a31505a54c5f64bd2b5bae69332"
  
  def install
    system "./install"
  end

  test do
    system "batchbrew"
  end
end
