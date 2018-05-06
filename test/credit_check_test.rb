require "minitest/autorun"
require "minitest/pride"
require "./lib/credit_check"

class CreditCheckTest < Minitest::Test
  def test_it_exists_and_is_created_with_number
    credit_check = CreditCheck.new("4929735477250543")
    assert_instance_of CreditCheck, credit_check
  end

  def test_it_changes_to_digits_and_reverses
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal [3,4,5,0,5,2,7,7,4,5,3,7,9,2,9,4], credit_check.change_to_digits_and_reverse
  end

  def test_it_doubles_every_other
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal [3,8,5,0,5,4,7,14,4,10,3,14,9,4,9,8], credit_check.double_every_other_number
  end

  def test_it_sums_greater_than_nine
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal [3,8,5,0,5,4,7,5,4,1,3,5,9,4,9,8], credit_check.sum_integers_greater_than_nine
  end

  def test_it_sums
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal 80, credit_check.sum_numbers
  end

  def test_modulo_to_zero
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal "The number is valid!", credit_check.modulo_to_zero
  end

  def test_it_can_do_Amex
    credit_check = CreditCheck.new("342804633855673")
    assert_equal "The number is valid!", credit_check.modulo_to_zero
  end
end
