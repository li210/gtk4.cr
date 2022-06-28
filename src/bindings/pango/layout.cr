module Pango
  class Layout < GObject::Object
    def set_text(text : ::String) : Nil
      LibPango.pango_layout_set_text(to_unsafe, text, text.length)
    end

    def set_text(bytes : Bytes)
      LibPango.pango_layout_set_text(to_unsafe, bytes, bytes.length)
    end

    def set_text(bytes : Bytes, length : Int32)
      LibPango.pango_layout_set_text(to_unsafe, bytes, length)
    end
  end
end
