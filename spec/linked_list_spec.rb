require_relative '../lib/data_structure/linked_list.rb'
describe DataStructure::LinkedList do
  it {should respond_to(:head)}
  its(:head) {should be_nil}
  context "#add" do
    it "should append the node at the end of the list- to the head if the list is empty" do
      list = DataStructure::LinkedList.new
      node = DataStructure::Node.new(1)
      list.add(node)
      expect(list.head).to eq node
    end
    it "appends to the end if list is not empty" do
      list = DataStructure::LinkedList.new
      node1 = DataStructure::Node.new(1)
      node2 = DataStructure::Node.new(2)
      node3 = DataStructure::Node.new(3)
      list.add(node1)
      list.add(node2)
      list.add(node3)
      expect(list.last).to eq node3
    end    
    it "to_s prints out all the elements of the list from head to last" do
      list = DataStructure::LinkedList.new
      node1 = DataStructure::Node.new(1)
      node2 = DataStructure::Node.new(2)
      node3 = DataStructure::Node.new(3)
      list.add(node1)
      list.add(node2)
      list.add(node3)
      expect(list.to_s).to eq("123")
    end
    context "#add_to_front" do
      it "adds the elements from the front" do
        list = DataStructure::LinkedList.new
        node1 = DataStructure::Node.new(1)
        node2 = DataStructure::Node.new(2)
        node3 = DataStructure::Node.new(3)
        list.add_to_front(node1)
        expect(list.head).to eq node1
        list.add_to_front(node2)
        expect(list.head).to eq node2
        list.add_to_front(node3)
        expect(list.head).to eq node3
      end
    end    
  end
end

describe DataStructure::Node do
  #it {should respond_to(:data)}
  #it {should respond_to(:next)}
  context "#next" do
    it "refers to the node it points to" do
      node = DataStructure::Node.new(1)
      node.next = DataStructure::Node.new(2)
      expect(node.next.data).to eq 2
    end
  end
end
