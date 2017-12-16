# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Pngblur < Formula
  desc "Tiny box blur utility for PNGs"
  homepage ""
  url "https://github.com/MCJack123/homebrew-JacksRepo/raw/master/pngblur-1.0.tar.gz"
  sha256 "2bf4dfe0a6109b731ca23b507c8087a1cbf6eac17e17b14c62f1fe1eda6637fe"

  depends_on "libpng"
  depends_on "png++"

  bottle do
    cellar :any
    root_url "https://github.com/MCJack123/homebrew-JacksRepo/raw/master"
    sha256 "7d0464e4708fd8761256e047f8c95ae3d56e688c15e231c9d7d62b5f0d901045" => :high_sierra
  end

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "g++", "-lpng", "-I/usr/local/include", "-o", "pngblur", "pngblur.cpp"
    bin.install "pngblur"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test pngblur`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
