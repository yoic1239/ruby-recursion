def fibs(num)
  result = []
  result.push(0) if num >= 1
  result.push(1) if num >= 2
  for i in 2...num
    result.push(result[i - 2] + result[i - 1])
  end
  result
end

def fibs_rec(num)
  # base case
  if num == 1
    [0]
  elsif num == 2
    fibs_rec(num - 1).push(1)
  else
    fibs_rec(num - 1).push(fibs_rec(num - 2).last + fibs_rec(num - 1).last)
  end
end

p fibs(8)
p fibs_rec(8)
