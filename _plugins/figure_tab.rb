# _plugins/figure_tag.rb

module Jekyll
  module FigureTag
    def render_figure(tag, args)
      # 这里的逻辑是将 {% figure /path/to/img | Caption %} 转化为 HTML
      # args[0] 是路径，args[1] 是说明文字
      
      image_path = args[0].strip
      caption = args[1].strip

      # 构建输出的 HTML 字符串
      html = <<~HTML
        <div class="custom-figure" style="text-align: center; margin: 2em 0;">
          <img src="#{image_path}" alt="#{caption}" style="max-width: 100%; height: auto; border-radius: 4px;">
          <p class="figure-caption" style="font-size: 0.85em; color: #666; font-style: italic; margin-top: 10px;">
            #{caption}
          </p>
        </div>
      HTML

      html
    end

    # 注册这个标签，名字叫 'figure'
    Liquid::Template.register_tag('figure', FigureTag)
  end
end
