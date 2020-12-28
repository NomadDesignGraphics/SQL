use OkulDb
go

declare @newnigger varchar(12)='Turizm'
declare @bolumid int

select @bolumid =Id from Bolum where Ad=@newnigger

--2.yol {
--if @bolumid is null 
----eðer bölüm id deki rakam
---- üst tarafta belirtilen select komutundaki Ad verisinin
----@new nigger tagýna eriþemiyorsa yan yana sýralamada
----sisteme tabloya @newnigger daki veriyi gir 
--begin
--	insert Bolum(Ad) values (@newnigger)
--	print('Okke eklenmiþtir yeni bölüm')
--end
--else
--	print('Zaten var böyle bir bölüm')

--select * from Bolum
--go
--}

--ayrý yol
--{
--if not exists(select * from Bolum where Ad=@newnigger)
---- eðer bölüm yoksa bölüm kýsmýndan Ad segmentini seç
--begin
----baþlamaný
--	insert Bolum(Ad) values(@newnigger)
--	--Bölümdeki Ad segmentine @newnigger tagýndaki deðeri sok
--	print 'Bölüm eklendi'
--	--ve log kayýtlarýna verinin eklendiðini bildir
--end
----if bölgesini bitir
--else
----tam tersi olursa
--	print 'Bölüm zaten var'
--	--iþlemi yapma ve zaten var diye log kaydý gir
--}


--declare @sil_veri varchar(15)='Makine'
--declare @sil_id int 

--select @sil_id =Id from Bolum where Ad=@sil_veri

--if @sil_veri is not null
--begin
--if not exists(select * from Ogrenci where BolumId=@sil_id)
--begin
--	delete from Bolum where Id=@sil_id
--	print 'Bölüm GG'
--end
--else
--	print 'Bölümün öðrencisi var'
--end
--else
--	print 'Bölüm yok'

--select *
--from Bolum