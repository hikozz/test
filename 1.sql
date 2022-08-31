SELECT c_Cards.Code as 'Карта', c_Cards.Name as 'ФИО', sum(c_Transactions.Sum) as 'Сумма' 
FROM c_Transactions 
inner join c_Cards on c_Cards.CardID = c_Transactions.CardID
WHERE 
TransactionType = 2 AND 
TransactionDateTime >= '2022-08-23 00:00:00.001' AND 
TransactionDateTime <= '2022-08-23 23:59:59.999' AND 
ContractorID = 'ПНТЗ ОАО'
--AND c_Cards.Code = '0010847470'

GROUP BY c_Cards.Code, c_Cards.Name;
