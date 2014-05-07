class Expense
	attr_accessor :id, :item, :amount

	def initialize(id, item, amount)
		self.id = id
		self.item = item
		self.amount = amount
	end

	def add(item, amount)
		last_expense = expenses.last
		some_id = last_expense[:id] + 1
		expense = Expense.new(some_id, params[:item], params[:amount])
		expenses << expense
	end
	
	def display
		"New item is #{self.item} and I am a #{self.amount}"
	end
end

