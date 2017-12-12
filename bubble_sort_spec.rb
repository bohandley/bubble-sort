require_relative 'bubble_sort'

describe 'bubble_sort' do 
  
  array1 = [1,2,3,2,5,4,6]
  array2 = []
  array3 = ['a',1,2] 
  array4 = 2 

  describe 'sorts an array of integers' do
    it 'returns an array' do
      expect(bubble_sort(array1)).to be_a Array
    end

    it 'sorts from least to greatest' do
      expect(bubble_sort(array1)).to eq [1,2,2,3,4,5,6]
    end
  end

  describe 'error handling' do
    it 'throws an error if array is empty' do
      expect{ bubble_sort(array2) }.to raise_error ArgumentError
    end

    it 'throws an error if array contains non-integers' do
      expect{ bubble_sort(array3) }.to raise_error ArgumentError
    end

    it 'throws an error if array is not an array' do
      expect{ bubble_sort(array4) }.to raise_error ArgumentError
    end
  end
end