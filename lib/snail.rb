# frozen_string_literal: true

class Snail
  def snail_path(array)
    @top = true
    @left = true
    @snail_trail = []

    until finished?(array)
      if @top && @left
        top_left_motion(array)
      elsif @top
        top_right_motion(array)
      elsif @left
        bottom_left_motion(array)
      else
        bottom_right_motion(array)
      end
    end
    @snail_trail
  end

  private

  def top_left_motion(array)
    @snail_trail.concat(array.shift)
    @left = false
  end

  def top_right_motion(array)
    array.each { |element| @snail_trail.push(element.pop) }
    @top = false
  end

  def bottom_left_motion(array)
    array.reverse.each { |element| @snail_trail.push(element.shift) }
    @top = true
  end

  def bottom_right_motion(array)
    @snail_trail.concat(array.pop.reverse)
    @left = true
  end

  def finished?(array)
    [[[]], []].include?(array)
  end
end
