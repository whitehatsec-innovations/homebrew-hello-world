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
  sha256 "9edeb30d32347a0d5b5c5ca8860829ed4085eaac78e82f2ccae1492827db606b"
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
