# frozen_string_literal: true

require 'snail'

describe Snail do
  describe '#snail_path' do
    before(:each) do
      @snail = Snail.new
    end

    it 'returns empty array for empty grid' do
      expect(@snail.snail_path([[]])).to eq([])
    end

    it 'returns correct path for 2x2 array' do
      array = [[1, 2], [3, 4]]
      result = [1, 2, 4, 3]
      expect(@snail.snail_path(array)).to eq(result)
    end

    it 'returns correct path for 3x3 array' do
      array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      result = [1, 2, 3, 6, 9, 8, 7, 4, 5]
      expect(@snail.snail_path(array)).to eq(result)
    end

    it 'returns correct path for 4x4 array' do
      array = [
        [1, 2, 3, 4],
        [5, 6, 7, 8],
        [9, 10, 11, 12],
        [13, 14, 15, 16]
      ]
      result = [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]
      expect(@snail.snail_path(array)).to eq(result)
    end

    it 'returns corrrect path for non-square array' do
      array = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [10, 11, 12]
      ]
      result = [1, 2, 3, 6, 9, 12, 11, 10, 7, 4, 5, 8]
      expect(@snail.snail_path(array)).to eq(result)
    end
  end
end
