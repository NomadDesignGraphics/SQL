use OkulDb
go 

--iif mantýðý 
--select Cinsiyet,
--iif (Cinsiyet ='E','Erkek','Kadýn'),
--case Cinsiyet
--	when 'E' then 'Erkek'
--	when 'K' then 'Kadýn'
--	end,
--	case
--	when Cinsiyet = 'E' then 'Erkek'
--	when Cinsiyet = 'K' then 'Kadýn'
--	else '-'
--	end,
--	iif(isnull(Cinsiyet,'E')='E','Erkek','Kadýn'),
--	case isnull(Cinsiyet,'E')
--	when 'E' then 'Erkek'
--	when 'K' then 'Kadýn'
--	end
--from Ogrenci

--select iif(Cinsiyet='E' and Ogretim=1,'E','-')
--from Ogrenci

--declare/set/if-else/goto/while/cursor/try-catch

--declare : namý diðer deðiþken atama variable verme

--declare @gokhan int
--set @gokhan = 2
----//////////////////
--select @gokhan=2
----//////////////////
--declare @b int=2

--declare @_1 int,@_3 int=24,@_2 int=5,@fuk float=22.5774

--set @_1=1
--select @_1=2
--print concat('toplam:' ,@fuk + @_3)
--select concat('toplam:',@fuk ,@_3)
--select @fuk * @_3 toplam 

--print concat('Toplam:' , ( @_1 + @_3 ))
--select 'Toplam',@_1 + @_3
--select 'Çýkarma',@_1 - @_3
--select 'Çarpma',@_1 * @_3
--select 'Bölüm',cast(@fuk as float) / @_1
--select 'Kalan',@_3 % @_2

--Makine bölümündeki erkek öğrenciler
--select *
--from Ogrenci o join Bolum b on.BolumId=b.Id
--where b.Ad='Makine' and o.Cinsiyet='E'


declare @bolumad varchar(50)='Bilgisayar' --Bölüm ismini çaðýrmak için ready asset tag
declare @bid int --Bölüm id çaðýrmak için
declare @cinsiyet varchar(1)='E' --Cinsiyet çağırma
declare @ad_baslangici varchar(1)='G' --Ad daki ilk harf ile eþleþen isimleri sýralatýr

select @bid=Id from Bolum where Ad=@bolumad
--bölüm id sini bid ile eþ görüp Bölüm
--tablosundan çekti 

--select * from Ogrenci where BolumId=@bid and Cinsiyet='E'

--geçici tablo yada anlýk hafýzaya atýlan tablo deðiþkenidir
declare @table1 table(Id int,AdSoyad varchar(50))

insert into @table1(Id,AdSoyad) 
--select Id,lower(Ad) +' '+lower(Soyad)  burasý küçük yazdýrýr herþeyi
select Id,Ad +' '+Soyad
from Ogrenci 
where BolumId=@bid 
	and Cinsiyet=@cinsiyet
	and Ad like @ad_baslangici+'%'


select * from @table1
