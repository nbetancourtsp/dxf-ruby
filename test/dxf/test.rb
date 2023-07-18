require 'dxf/parser'
require 'byebug'

describe DXF::Parser do
  it 'must read from an IO stream' do
	  File.open('test/fixtures/test.dxf', 'r') {|f| DXF::Parser.new.parse(f) }
  end
  it 'must read from an IO stream with Polyline' do
	  File.open('test/fixtures/fix.dxf', 'r') {|f| DXF::Parser.new.parse(f) }
  end
end