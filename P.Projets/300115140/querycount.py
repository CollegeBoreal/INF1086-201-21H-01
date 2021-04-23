# Total average of Transaction per day
# All the currencies are in USD
"""
FOR t IN Transactions
FILTER t.timestamp != NULL && t.pending != "Cancelled"
    COLLECT
      date = DATE_ROUND(t.timestamp, 1, "days")
    AGGREGATE
      count = COUNT(1),
      avg = AVG(t.amount)
      SORT date 
RETURN {date,avg, count}
"""
