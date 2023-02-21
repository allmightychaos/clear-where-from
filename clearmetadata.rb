class Clearmetadata < Formula
    desc "A terminal program that clears the 'where from' metadata attribute from a file on macOS"
    homepage "https://example.com"
    url "https://example.com/clearmetadata-1.0.tar.gz"
    sha256 "..."
    license "MIT"
  
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
  