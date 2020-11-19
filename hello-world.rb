# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HelloWorld < Formula
  desc "Hello World in Golang"
  homepage "https://github.com/whitehatsec-innovations/hello-world"
  # tar: Error opening archive: Unrecognized archive format
  #url "https://github.com/whitehatsec-innovations/hello-world/blob/master/hello-world-darwin.tar.bz2"
  #url "https://github.com/whitehatsec-innovations/hello-world/blob/master/hello-world-darwin.tar.gz"
  url "https://github.com/whitehatsec-innovations/hello-world/blob/master/hello-world-darwin.tar"
  version "1.0"
  sha256 "2206819c7a7b26e6baa8b208750db4d63ee29762d050fa2dc83e6d6ff4710daf"
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
