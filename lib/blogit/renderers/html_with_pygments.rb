# Create a custom renderer that allows highlighting of code blocks
class Redcarpet::Render::HTMLWithPygments < Redcarpet::Render::HTML
  require "pygments"

  def block_code(code, language)
    Pygments.highlight(code, lexer: language)
  end
end
