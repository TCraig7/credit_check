require "pry"

class CreditCheck
  attr_reader   :card_number

  def initialize(card_number)
    @card_number = card_number
  end

  def change_to_digits_and_reverse
# Want to convert the string into integers and then convert to an array
    card_number.to_i.digits
  end

  def double_every_other_number
# Want to double every other number in the array
    change_to_digits_and_reverse.map.with_index do |number, index|
      if index.odd?
        number * 2
      else
        number
      end
    end
  end

  def sum_integers_greater_than_nine
# Want to sum every number greater than 9
    double_every_other_number.map do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

  def sum_numbers
#Want to sum the array
    sum_integers_greater_than_nine.sum
  end

  def modulo_to_zero
#Want to see if credit card number modulo returns 0
    if  sum_numbers % 10 == 0
      p "The number is valid!"
    else
      p "The number is invalid!"
    end
  end
end
