class Fixnum
	def in_words
		case self
		when 0..9 then zero_to_nine(self)
		when 10..19 then ten_to_nineteen(self)
		when 20..99 then twenty_to_ninetynine(self)
		when 100..999 then hundred_to_thousand(self)
		when 1000..999999 then thousand_to_million(self)
		when 1000000..999999999 then million_to_billion(self)
		when 1000000000..999999999999 then billion_to_trillion(self)
		else trillion_to_quadrillion(self)
		end
	end

	def zero_to_nine(number)
		dict = ['zero','one','two','three','four','five','six','seven',\
			'eight','nine']
		dict[number]
	end

	def ten_to_nineteen(number)
		dict = ['ten','eleven','twelve','thirteen','fourteen','fifteen',\
		'sixteen','seventeen','eighteen','nineteen']
		dict[number - 10]
	end

	def twenty_to_ninetynine(number)
		dict = ['twenty','thirty','forty','fifty','sixty','seventy',\
			'eighty','ninety']
	 	index = (number / 10) - 2
		ones = number % 10
		ones == 0 ? (dict[index]) : (dict[index] + ' ' + zero_to_nine(ones))
	end

	def hundred_to_thousand(number)
		hundreds_place = number / 100
		everything_else = number % 100
		everything_else == 0 ? (hundreds_place.in_words + ' hundred') : \
		(hundreds_place.in_words + ' hundred ' + everything_else.in_words)
	end

	def thousand_to_million(number)
		thousands_place = number / 1000
		everything_else = number % 1000
		everything_else == 0 ? (thousands_place.in_words + ' thousand') : \
		(thousands_place.in_words + ' thousand ' + everything_else.in_words)
	end

	def million_to_billion(number)
		millions_place = number / 1000000
		everything_else = number % 1000000
		everything_else == 0 ? (millions_place.in_words + ' million') : \
		(millions_place.in_words + ' million ' + everything_else.in_words)
	end

	def billion_to_trillion(number)
		billions_place = number / 1000000000
		everything_else = number % 1000000000
		everything_else == 0 ? (billions_place.in_words + ' billion') : \
		(billions_place.in_words + ' billion ' + everything_else.in_words)
	end

	def trillion_to_quadrillion(number)
		trillions_place = number / 1000000000000
		everything_else = number % 1000000000000
		everything_else == 0 ? (trillions_place.in_words + ' trillion') : \
		(trillions_place.in_words + ' trillion ' + everything_else.in_words)
	end
end
