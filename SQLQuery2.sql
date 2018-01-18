begin transaction

declare @balance int
update account with (rowlock) set account.balance = account.balance - 500 where account.account_number = 6274;
select @balance = balance from account where account_number = 6274
print @balance

commit
