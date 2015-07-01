class LinkedList

    def initialize val
        # Initialize a new node at the head
        @head = Node.new(val, nil)
    end
    
    def add value
        # Traverse to the end of the list
        # And insert a new node over there with the specified value
        current = @head
        while current.next_node != nil
            current = current.next_node
        end 
        current.next_node = Node.new(value, nil)
        self    
    end

    def delete val
        current = @head
        if current.value == val
            # If the head is the element to be delete, the head needs to be updated
            @head = @head.next_node
        else
            # ... x -> y -> z
            # Suppose y is the value to be deleted, you need to reshape the above list to :
            #   ... x->z
            # ( and z is basically y.next_node )
            current = @head
            while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
                current = current.next_node
            end 

            if (current != nil) && (current.next_node != nil)
                current.next_node = (current.next_node).next_node
            end
        end
    end
    
    def delete_rand_kth list
        x = rand(10)
        puts 'removing ' + x.to_s + 'kth element from LinkedList'
        i = 1
        current = @head
        until i == x - 1 && current.next_node != nil 
            current = current.next_node
            i += 1
        end
        current.next_node = (current.next_node).next_node
    end

    def delete_kth kth, list
        x = kth
        puts 'removing ' + x.to_s + 'kth element from LinkedList'
        i = 1
        current = @head
        until i == x - 1 && current.next_node != nil 
            current = current.next_node
            i += 1
        end
        current.next_node = (current.next_node).next_node
    end
    
    def display
        # Traverse through the list till you hit the "nil" at the end
        current = @head
        full_list = [] 
        while current.next_node != nil 
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        puts full_list.join('->')
    end

    def list_to_int
        # Traverse through the list till you hit the "nil" at the end
        current = @head
        full_list = [] 
        while current.next_node != nil 
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        full_list.join('').to_i
    end

    def display_reverse_list
        # Traverse through the list till you hit the "nil" at the end
        current = @head
        full_list = []
        while current.next_node != nil 
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        puts full_list.reverse.join('->')
    end

    def check_if_palindrome
        current = @head
        full_list = []
        while current.next_node != nil
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        if full_list == full_list.reverse
            puts 'List is a Palindrome'
        else
            puts 'List is not a Palindrome'
        end
    end

    def list_reverse_to_int
        # Traverse through the list till you hit the "nil" at the end
        current = @head
        full_list = [] 
        while current.next_node != nil 
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        full_list.reverse.join('').to_i
    end

end
