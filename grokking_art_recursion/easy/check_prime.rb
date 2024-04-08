def check_prime(n)
  divisible?(n, 2)
end

def divisible?(n, factor)
  return true if n < factor ** 2
  return false if n % factor == 0

  return divisible?(n, factor+1)
end
