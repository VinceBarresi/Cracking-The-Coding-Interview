=begin
  Cracking The Coding Interview
  Chapter 3, Problem 3.7, page 81
  An animal shelter holds only dogs and cats,
  and operates on a strictly 'first in first out' 
  basis. People must adopt either the 'oldest' 
  (based on arrival time) of all animals at the shelter,
  or they can select whether they would prefer a dog
  or a cat (and will receive the oldest animal of that 
  type). They cannot select which specific animal they
  would like. Create the data structure to maintain
  this system and implement operations such as enqueue,
  dequeueAny, dequeueDog and dequeueCat. You may use
  the built-in LinkedList data structure.
=end

class AnimalShelter
  def initialize 
    @cats, @dogs = [], []
    @animals = [:cat, :dog]
    @current_animals = []
  end

  def animal_intake
    rand(1..10).times do
      enqueue(@animals.sample)
    end
  end

  def enqueue animal
    if @cats.empty? && @dogs.empty? == true 
      @oldest_animal == animal
      @oldest_animal == :cat ? @cats.push(animal) : @dogs.push(animal)
    end
    animal == :cat ? @cats.push(animal) : @dogs.push(animal)
    @current_animals.push(animal)
  end

  def dequeue_any
    if @oldest_animal && @current_animals != nil
      @oldest_animal == :cat ? dequeue_cat : dequeue_dog
      @current_animals.pop
      @oldest_animal = @current_animals[0]
    end
  end

  def dequeue_dog
    return nil if @dogs.empty? == true
    @current_animals.match(/dog/)[0].pop
    @dogs.pop
  end

  def dequeue_cat
    return nil if @cats.empty? == true
    @current_animals.match(/cat/)[0].pop
    @cats.pop
  end

  def select_animal
    puts '1. Oldest animal' + "\n" + '2. Cat' + "\n" + '3. Dog'
    choice = gets
    if choice == '1'
      dequeue_any
    elsif choice == '2'
      dequeue_cat
    elsif choice == '3'
      dequeue_dog
    else
      return 'Invalid Input'
    end
  end
end
