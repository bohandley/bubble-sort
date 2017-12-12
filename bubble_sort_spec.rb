require_relative 'bubble_sort'

describe 'bubble_sort' do 
  
  array1 = [1,2,3,2,5,4,6]

  describe 'sorts an array of integers' do
    it 'returns an array' do
      expect(bubble_sort(array1)).to be_a Array
    end

    it 'sorts from least to greatest' do
      expect(bubble_sort(array1)).to eq [1,2,2,3,4,5,6]
    end
  end


end