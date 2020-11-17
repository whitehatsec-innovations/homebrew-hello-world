# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HelloWorld < Formula
  desc "Hello World in Golang"
  homepage "https://github.com/whitehatsec-innovations/hello-world"
  #url "https://github.com/whitehatsec-innovations/hello-world/blob/master/hello-world-darwin.tar.bz2"
  url "https://github.com/whitehatsec-innovations/hello-world/blob/master/hello-world-darwin.tar.gz"
  version "1.0"
  sha256 "b41e83238d085e83b44dd7922fe3e89e107fbb96c402aca312aeda14945094a8"
  license "https://github.com/whitehatsec-innovations/hello-world/blob/master/License.md"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test hello-world`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
