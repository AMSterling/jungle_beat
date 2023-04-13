require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  let(:list) { LinkedList.new}

  it 'exists' do
    expect(list).to be_a LinkedList
  end

  it 'has a default value of nil for head' do
    expect(list.head).to be_nil
  end

  it 'appends data to the list' do
    list.append('doop')

    expect(list.head).to be_a Node
    expect(list.head.next_node).to be_nil
    expect(list.count).to eq 1
    expect(list.to_string).to eq('doop')
  end

  it 'adds the next node to the list' do
    list.append('doop')
    list.append('deep')

    expect(list.head.next_node).to be_a Node
    expect(list.head.next_node.data).to eq('deep')
    expect(list.count).to eq 2
    expect(list.to_string).to eq('doop deep')
  end

  it 'prepends data to the list' do
    list.append('plop')

    expect(list.to_string).to eq('plop')

    list.append('suu')
    list.prepend('dop')

    expect(list.to_string).to eq('dop plop suu')
    expect(list.count).to eq 3
  end

  it 'inserts data to a specified index in the list' do
    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.insert(1, 'woo')

    expect(list.to_string).to eq('dop woo plop suu')
    expect(list.count).to eq 4
  end
end
