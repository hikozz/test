SELECT 
	c_Cards.Name as 'ФИО',
	SUM(c_ProdCategoryCounters.[Qty]) as 'Кол-во',
	c_Transactions.SalePlace as 'Столовая'
	--(CONVERT(DATE, c_ProdCategoryCounters.TransactionDateTime)) as 'Дата'
FROM c_ProdCategoryCounters
INNER JOIN c_Cards on c_Cards.CardID = c_ProdCategoryCounters.CardID
INNER JOIN c_Transactions on c_ProdCategoryCounters.TransactionID = c_Transactions.TransactionID
WHERE 
c_Transactions.TransactionType = 2
AND	c_ProdCategoryCounters.TransactionDateTime BETWEEN '2022-09-01 00:00:00.001' AND '2022-09-20 23:59:59.999'
AND (c_Transactions.SalePlace = 'Столовая цеха N64' or c_Transactions.SalePlace = 'Буфет АБК')
AND c_ProdCategoryCounters.CategoryCode = 'Молоко'

GROUP BY c_Cards.Name, c_Transactions.SalePlace; --, c_ProdCategoryCounters.TransactionDateTime;
ORDER BY c_Cards.Name, c_Transactions.SalePlace;
