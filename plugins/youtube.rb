module Jekyll
  class Youtube < Liquid::Tag

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<div class="embed-video-container"><br/> <iframe src="//www.youtube.com/embed/#{@id.strip}" allowfullscreen></iframe><br/> </div>)
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::Youtube)



