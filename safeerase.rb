# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Safeerase < Formula
  desc "Backs up and erases a disk"
  homepage ""
  url "https://github.com/MCJack123/homebrew-JacksRepo/blob/master/safeerase-1.0.tar.gz?raw=true"
  version "1.0"
  sha256 "eb96e1494560ffd61abcbb5d15d8d57c7a3bbe5dff2be392fa2de8bcde640866"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    bin.install "safeerase"
    system "chmod", "777", "#{bin}/safeerase"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test safeerase`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
