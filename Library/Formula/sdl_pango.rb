require 'formula'

class SdlPango <Formula
  url 'http://downloads.sourceforge.net/sdlpango/SDL_Pango-0.1.2.tar.gz'
  homepage 'http://sdlpango.sourceforge.net/'
  md5 '85bbf9bb7b1cee0538154dadd045418c'

  depends_on 'sdl'
  depends_on 'pango'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--disable-sdltest"
    system "make install"
  end

  def patches
    # API patch needed by frozen-bubble 2.0.0
    { :p0 => "http://bugs.gentoo.org/attachment.cgi?id=100650" }
  end
end
