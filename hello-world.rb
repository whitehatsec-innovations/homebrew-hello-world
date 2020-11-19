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
  #sha256 "b41e83238d085e83b44dd7922fe3e89e107fbb96c402aca312aeda14945094a8"
  #sha256 "13d2a4b7867d5f2ee6eb3f7d653cec8f7f2a3a79bd823644192f7580870014cc"
  #sha256 "770deb00dda6457eda16e020fd084cf3bf92bc0fe7f91a0e6af28eb5b6b6b120"
  sha256 "7b2e558944a0b4b8f4731ba65c203dc5e58186644e10abfd2d24e4edf15d0a12"
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
