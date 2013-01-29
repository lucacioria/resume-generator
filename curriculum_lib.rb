# encoding: UTF-8
require 'prawn'
require "prawn/measurement_extensions"
require './helper.rb'

class Curriculum
	
	LEFT = 40
	BODY_LEFT = 180
	SECTION_RIGHT = BODY_LEFT - 10
	RIGHT = 500
	WIDTH = RIGHT - LEFT
	INITIAL_Y = 620

	GRAY = "888888"
	AZZURRO = "22a3d6"
	BLACK = "000000"

	def initialize
		@p = Prawn::Document.new(:page_size => "LETTER")
		@p.font_families.update(
	   		"OpenSans" =>
	   			{ :bold        => "OpenSans-Bold.ttf",
	              :italic      => "OpenSans-Italic.ttf",
	              :light       => "OpenSans-Light.ttf",
                  :regular     => "OpenSans-Regular.ttf" })
		@p.font "OpenSans", :style => :regular
		@p.font_size 12
		@current_y = INITIAL_Y
	end

	def name(first, last)
		@p.bounding_box([LEFT, 700], :width => WIDTH, :height => 150) do
			size 40
			text first.bold.color(AZZURRO) + last.light.color("fcb268")
		end
		dotted_line LEFT + 2, RIGHT + 2, 663
	end

	def telephone_and_mail(tel, mail)
		@p.bounding_box([LEFT, 655], :width => WIDTH, :height => 50) do
			size 12
			ball = BallCallback.new(:document => @p)
			@p.formatted_text [ {:text => tel + "   ", :color => GRAY, :callback => ball},
								{:text => "   " + mail, :color => GRAY}], :align => :right
		end
	end

	def inline(a,b)
		size 10
		@p.pad_bottom(10) {
			@p.indent BODY_LEFT do
				text a.bold.color(BLACK) + " " + b.color(GRAY)
			end
		}
	end

	def par(title)
		size 10
		@p.default_leading 2
		@p.pad_bottom(10) {
			@p.indent BODY_LEFT do
				text title.bold.color(BLACK)
			end
			yield
		}
	end

	def blank_line
		text " "
	end

	def txt(s)
		@p.indent BODY_LEFT do
			text s.color(GRAY)
		end
	end

	def body
		@p.bounding_box([0, 700], :width => RIGHT, :height => 700) do
			@p.move_cursor_to INITIAL_Y
			yield
		end
	end

	def section(title)
		size 14

		if @p.cursor < 50
			@p.start_new_page
			@current_y = 700
		end
		last_y = @current_y

		@p.formatted_text_box [ {:text => title, :color => AZZURRO}],
			:align => :right, :at => [0, @current_y], :width => SECTION_RIGHT
		yield
	
		@current_y -= last_y - @p.cursor
	end

	def render(filename)
		@p.render_file filename
	end

	private

	def text(s)
		@p.text s, :inline_format => true, :align => :justify
	end

	def text_right(s)
		@p.text s, :inline_format => true, :align => :right
	end

	def size(n)
		@p.font_size n
	end

	def font(f,s)
		@p.font f, :style => s
	end

	def dotted_line(start_x, end_x, y)
		@p.fill_color "aaaaaa"
		x = start_x
		while x < end_x do
			@p.circle [x, y], 0.5.mm
			@p.fill
			x += 2.mm
		end
	end

end

class BallCallback
	def initialize(options)
		@document = options[:document]
	end

	def render_in_front(fragment)
		@document.fill_color "22a3d6"
		@document.fill_circle([fragment.bottom_right[0], fragment.bottom_right[1] + 2.5.mm], 1.mm)
	end
end
