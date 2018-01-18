begin transaction

declare @balance1 int
update account with (nowait) set account.balance = account.balance - 500 where account.account_number = 6274;
select @balance1 = balance from account where account.account_number = 6274
print @balance1

commit