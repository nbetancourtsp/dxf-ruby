require 'dxf/parser'
require 'byebug'

describe DXF::Parser do
    
    puts "must read from IO stream"
    # it 'must read from an IO stream' do
	#       File.open('test/fixtures/fix.dxf', 'r') {|f| DXF::Parser.new.parse(f) }
    # end
    # it 'must parse working file ' do
    #     puts "aurora_d " * 10
	#       parser = File.open('test/fixtures/test.dxf', 'sr') {|f| DXF::Parser.new.parse(f) }
    #     entities = parser.entities
    #     puts 'entities', entities.class, entities.length
    # end
    it 'must read from failing and adds' do
        puts "ad_d " * 10
	    parser = File.open('test/fixtures/fix.dxf', 'r') {|f| DXF::Parser.new.parse(f) }
        entities = parser.entities
        puts 'entities', entities.class, entities.length, entities
        # byebug
        # entities.each { |ent|
        #     pp 'lines', ent
        # }
        # unparser = DXF::Unparser(entities)
        # puts "unparser", unparser
    end
end