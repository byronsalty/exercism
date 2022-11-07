defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    before_discount - (before_discount * (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    ceil(daily_rate(apply_discount(hourly_rate, discount)) * 22)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    # days_no_budget = budget / daily_rate(hourly_rate)
    # days = if days_no_budget < 22 do
    #   days_no_budget
    # else
    #   budget / daily_rate(apply_discount(hourly_rate, discount))
    # end
    # Float.round(days, 1)
    Float.floor(budget / daily_rate(apply_discount(hourly_rate, discount)), 1)
  end
end
