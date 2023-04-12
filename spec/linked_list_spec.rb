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
end
