# lambdas - a nameless method

squares_proc = Proc.new { |number| number ** 2 }
squares_proc_lambda = lambda { |number| number ** 2 }
squares_proc_lambda_alt = ->(number) { number ** 2}

p [1, 2, 3].map(&squares_proc)               # Squaring numbers in an array using a Proc
p [1, 2, 3].map(&squares_proc_lambda)        # Squaring numbers in an array using the traditional lambda syntax
p [1, 2, 3].map(&squares_proc_lambda_alt)    # Squaring numbers in an array using shorthand lambda syntax
p [1, 2, 3].map { |number| number ** 2 }     # Squaring numbers in an array using a Block method, *this is not reusable*
