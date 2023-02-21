class Clearmetadata < Formula
    desc "A terminal program that clears the 'where from' metadata attribute from a file on macOS"
    homepage "https://example.com"
    url "https://raw.githubusercontent.com/allmightychaos/clear-where-from/main/rmd.py"
    sha256 "23fd8c892c0b7b01f2789c0e88f9bfec973aeb5bb1e4e4856b4a86edc9d341a6"
    license "MIT"
    version: "1.0.0"
  
    def install
      bin.install "clear_wherefroms.py"
      (bin/"clearmetadata").write <<~EOS
        #!/bin/sh
        python "#{bin}/clear_wherefroms.py" "$@"
      EOS
    end
  
    test do
      system "#{bin}/clearmetadata", "--version"
    end
  end
  
