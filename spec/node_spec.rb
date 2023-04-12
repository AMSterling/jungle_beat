require './lib/node'

RSpec.describe Node do
  let(:node) { Node.new('plop')}

  it 'exists' do
  	expect(node).to be_a Node
  end

  it 'has data' do
  	expect(node.data).to eq('plop')
  end

  it 'has nil value for next node' do
    expect(node.next_node).to be_nil
  end
end
