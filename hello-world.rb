# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HelloWorld < Formula
  desc "Hello World in Golang"
  homepage "https://github.com/whitehatsec-innovations/hello-world"
  url "https://github.com/whitehatsec-innovations/hello-world/raw/master/hello-world-darwin.tar.bz2"
  sha256 "5280957d21c862071a0a0e04673ebc0ae7bf3cf252c96c74e7c909f6478d6e1a"
  version "1.0"
  license "https://github.com/whitehatsec-innovations/hello-world/blob/master/License.md"

  def install
    prefix.install "reports", "browser", "test-config.txt"
    bin.install "hello-world"
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
    #system "false"
  end
end
