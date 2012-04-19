
require 'formula'

class Octomap < Formula
  url 'git://github.com/ahornung/octomap.git', {:using => :git, :tag => 'upstream/1.4.1'}
  homepage 'http://octomap.sourceforge.net/'
  version '1.4.1'

  depends_on 'cmake'



  def install
    ENV.universal_binary
    system "mkdir build"
    system "cd build && cmake .. #{std_cmake_parameters}"
    system "cd build && make install"
  end

end
