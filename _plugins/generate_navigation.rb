# Auto-generates navigation
# {% generate_navigation %}
#

require 'pathname'

module Jekyll
  class Page
    def source_path
      File.join(@dir, @name).sub(%r{^/*},'')
    end
    def parent
      @dir.sub(%r{^/*},'')
    end
  end
  class IncludeListingTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
    end

    def add_item(page)
      if page.index?
        title = page.parent
      else
        title = page.basename
      end
      # Try to read title from source file
      source_file = File.join(@source,page.source_path)
      if File.exists?(source_file)
        content = File.read(source_file)

        if content =~ /^(---\s*\n.*?\n?)^(---\s*$\n?)/m
          content = $POSTMATCH
          begin
            data = YAML.load($1)
          rescue => e
            puts "YAML Exception reading #{name}: #{e.message}"
          end
        end

        if data['title']
          title = data['title']
        end
      else
        puts "File not found: #{source_file}"
      end
      s = "<li><a href=\"/#{page.parent}#{page.url}\">#{title}</a></li>"
    end

    def render(context)
      site = context.registers[:site]
      @source = site.source
      site_pages = context.environments.first['site']['pages']
      html = '<ul class="nav nav-list">'
      list = Hash.new {|h,k| h[k] = [] }
      site_pages.each do |page|
        next if page.index?
        list[page.parent] << self.add_item(page)
      end
      list = list.sort
      list.each { |header, subs|
       html += "<li class=\"nav-header\">#{header}</li>"
       subs.each { |sub| html += sub }
      }
      html += '</ul>'

      html
    end
  end
end

Liquid::Template.register_tag('generate_navigation', Jekyll::IncludeListingTag)