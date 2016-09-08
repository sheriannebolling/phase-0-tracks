#Coyotes

class TodoList
    def initialize(chore)
        @list = chore
        p "initialize"
    end
    def get_items
        @list
    end
    def add_item(item)
        @list << item     
    end
    def delete_item(item)
        @list.delete(item)      
    end
    def get_item(index)
        @list[index]
    end
end



#Bobolinks

		# class TodoList
		# 	def initialize(to_do)
		# 		puts "initializing"
		# 		@to_do_list = to_do
		# 	end

		# 	def get_items
		# 		@to_do_list
		# 	end

		# 	def add_item(item)
		# 		@to_do_list << item
		# 		@to_do_list
		# 	end

		# 	def delete_item(item)
		# 		@to_do_list.delete(item)
		# 		@to_do_list
		# 	end

		# 	def get_item(index)
		# 		@to_do_list[index]
		# 	end
		# end