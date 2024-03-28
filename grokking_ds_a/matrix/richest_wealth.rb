# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  accounts.map{|x| x.sum}.max
end
