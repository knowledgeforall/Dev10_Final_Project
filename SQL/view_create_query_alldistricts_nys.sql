create view [nys_alldistricts] as
select [D].*, [I].[MedianIncome], [F].[FederallyFunded]
from [districts] as [D]
left join 
    (select [DistrictName], round(avg([HouseholdIncome]),2) as MedianIncome
    from [zipcodedistrict] as [ZCD]
    join [zipcodeincome] as [ZCI] on [ZCD].[ZipCode] = [ZCI].[ZipCode]
    group by [DistrictName]) as I
on [D].[DistrictName] = [I].[DistrictName]
left join [federallyfunded] as [F]
on [F].[DistrictName] = [D].[DistrictName]