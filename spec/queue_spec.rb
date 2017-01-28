require_relative '../lib/data_structure/queue.rb'
describe DataStructure::Queue do
  its(:size) {should == 0}
  its(:is_empty) { should be_true}
  context "#enqueue" do
    it "adds an element to the queue" do
      queue = DataStructure::Queue.new
      queue.enqueue("first")
      queue.enqueue("second")
      queue.enqueue("third")
      expect(queue.is_empty).to be_false
      expect(queue.size).to be 3
    end
  end
  context "#dequeue" do
    it "pops the first elements from the queue" do
      queue = DataStructure::Queue.new
      queue.enqueue(1)
      queue.enqueue(2)
      queue.enqueue(3)
      expect(queue.dequeue).to eq 1
      expect(queue.size).to eq 2
      expect(queue.dequeue).to eq 2
      expect(queue.dequeue).to eq 3
    end

    it "throws an exception if dequeue is called if queue is empty" do
      queue = DataStructure::Queue.new
      expect{queue.dequeue}.to raise_error(DataStructure::EmptyQueueException)
    end
  end
  context "#clear" do
    it "removes all the elements from the queue" do
      queue = DataStructure::Queue.new
      queue.enqueue(1)
      queue.enqueue(2)
      expect{queue.clear}.to change{queue.size}.to(0) 
    end
  end
end
