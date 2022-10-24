
class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    #puts sel.list.class - descobrir o tipo
    self.list.push(avenger)
  end
end

#TDD (Desev. guiado por testes)
describe AvengersHeadQuarter do
  it "deve adicionar um vingador" do
    hq = AvengersHeadQuarter.new

    hq.put("spiderman")
    expect(hq.list).to eql ["spiderman"]
  end

  it "deve adicionar uma lista de vingadores" do
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    #res = hq.list.size > 0
    expect(hq.list).to include "Thor"
    #ou
    #expect(hq.list.size).to be > 0
    #expect(res).to be true
  end

  it "Thor deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to start_with("Thor")
  end

  it "Spidermand deve ser o ultimo da lista" do
    hq = AvengersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to end_with("Spiderman")
  end

  #it "Deve conter o sobrenome" do
  # avenger = Peter Paker

  #expect(avenger).to match (/Paker/)
  #expect(avenger).not_to match (/Gabi/)
  #end
end
