use OkulDb
go

--cursor,try-catch

--cursor

--cursor ile ilgili satýrdaki verilerin 
--tutulacaðý deðiþkenlerin tanýmlanmasýný saðladým
declare @id int, @ad varchar(100)

--cursor iþlemlerinin belirlenmesi
declare nigger cursor for select Id,Ad from Bolum

--cursor burda açilacak
open nigger

--cursor kullanýmý 
while 1=1
begin

	--satýrdaki verileri çekme noktasý
	fetch next from nigger into @id , @ad
	if @@FETCH_STATUS<0 break
	--fetch status kayýt varsa 0 olacak yoksa -1 olacak
	
	--print concat(@id, '-' , @ad) bu yolda oluyorda farklý birþey
	--deniyor hoca
	select * from Ogrenci where BolumId=@id order by Numara
end

--cursor u durdur
close nigger

--cursor la kaplanan belleði temizleme
deallocate nigger

--eðer quiz de yada sýnavda sorarsa diye 
--hata olursa komutu
--@@error
--print 'Hata'

--örnek try catch bloðu
--begin try
--set @a = @b / @c
--print concat('Sonuc:',@a)
--end try

--begin catch
--	print @@error
--	print @@ERROR_MESSAGE()
--	print @@ERROR_NUMBER()
--	print @@ERROR_STATE()
--	print 'Hata'
--end catch
