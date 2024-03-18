class InputSourceSelector < Formula
  desc "Tool to switch input source"
  homepage "https://github.com/minoki/InputSourceSelector"
  url "https://github.com/minoki/InputSourceSelector.git",
      revision: "7f655017d16ad9f345d36ccaeec11e0a607cb6a1"
  version "0.1"

  depends_on "make" => :build

  def install
    system "make"
    bin.install "InputSourceSelector"
  end

  test do
    system "#{bin}/InputSourceSelector", "-l"
  end
end
