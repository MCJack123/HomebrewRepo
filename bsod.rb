# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Bsod < Formula
  desc "This program will let you UNIX user experience the authentic microsoft windows experience. Bsod displays the famous windows xp blue screen of death on the console. Errors and drivers causing the error are selected randomly from a large set of examples."
  homepage "https://www.vanheusden.com/bsod/"
  url "https://www.vanheusden.com/bsod/bsod-0.1.tgz"
  version "0.1"
  sha256 "ad6eb83637d1eb655ca7891933916266bd0624e08823490083b960ff15531c43"

  def install
    system "make"
    system "make", "install"
    ohai "Homebrew will say that the installation is empty, but the program does work."
  end

  test do
    system "/usr/local/bin/bsod"
  end
end
