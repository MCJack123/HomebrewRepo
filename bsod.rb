# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Bsod < Formula
  desc "This program will let you UNIX user experience the authentic microsoft windows experience. Bsod displays the famous windows xp blue screen of death on the console. Errors and drivers causing the error are selected randomly from a large set of examples."
  homepage "https://www.vanheusden.com/bsod/"
  url "https://www.vanheusden.com/bsod/bsod-0.1.tgz"
  version "0.1"
  sha256 "ad6eb83637d1eb655ca7891933916266bd0624e08823490083b960ff15531c43"

  # depends_on "cmake" => :build

  def install
    system "make"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test bsod`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "/usr/local/bin/bsod"
  end
end
