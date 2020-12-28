use OkulDb
go

--goto : C# daki gibi bi iþleme yönlendiriyor

--nigger:
--	print 'nigga'
--	goto nigger

--declare @a int = 0

--arttir:
--	set @a += 1
--	-- a'yý bir bir artacak þekilde ayarla

--	if @a = 5 goto arttir
	
--	print @a
--	--a'yý bi yaz
--	if @a<20
--	--zaten a 20 den küçükse
--	goto arttir
--	--set(arttýrma) komutunu tekrarlatmasý için en baþa dön

----bu normal bir 2 þerli arttýrým
--declare @a int=0

--while @a<10
--begin
--	set @a+=2
--	print @a
--end

------Burda if execute sistemli(kýsayol) çalýþýyor
--declare @a int=0

--while @a<10
--begin
--	set @a+=1
--	--bir bir artarken
--	if @a<>5
--	--eðer 5 e gelirse 5'i yazma
--	print @a
--end


--declare @a int=0

--while 1=1
----sistemi while komutunda booleanda True ya sokuyor
--begin
--	set @a+=1
--	if @a=5 continue
--	print @a
--	if @a>=10 break
--	--eðer @a 10 dan büyük yada eþitse dur
--end

--þuana kadar kullanýlanlar
-- if begin end else begin end
--goto
--while begin end
--"<>" ayný anda kullanýlýrsa hariç tut mansýna gelir
--declare binevi variable atama için
--örn: declare @_1 int = 1
--declare @a table(id int,ad varchar(10))
