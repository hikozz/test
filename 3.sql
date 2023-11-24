SELECT	 c_Cards.Code as 'Карта', 
				 c_Cards.Name as 'ФИО', 
				 c_Transactions.Sum as 'Сумма', 
				 c_Transactions.TransactionDateTime as 'Дата', 
				 c_Transactions.SalePlace,
				 c_Transactions.TransactionType,
				 c_Transactions.Description
				 
FROM c_Transactions 
inner join c_Cards on c_Cards.CardID = c_Transactions.CardID

WHERE 
c_Transactions.SalePlace = 'РПФ Буфет Убойного Цеха' AND
c_Transactions.Description = 'Чек продажи' AND 
c_Transactions.TransactionType = '2' AND


(TransactionDateTime >= '2023-10-24 20:40:00.001' AND TransactionDateTime <= '2023-10-24 20:44:59.999') or
(TransactionDateTime >= '2023-10-24 22:45:00.001' AND TransactionDateTime <= '2023-10-24 22:50:59.999') or

(TransactionDateTime >= '2023-10-27 21:25:00.001' AND TransactionDateTime <= '2023-10-27 21:34:59.999') or
(TransactionDateTime >= '2023-10-27 23:00:00.001' AND TransactionDateTime <= '2023-10-27 23:04:59.999') or

(TransactionDateTime >= '2023-10-28 20:10:00.001' AND TransactionDateTime <= '2023-10-28 20:14:59.999') or
(TransactionDateTime >= '2023-10-28 21:10:00.001' AND TransactionDateTime <= '2023-10-28 21:14:59.999') or

(TransactionDateTime >= '2023-10-31 23:10:00.001' AND TransactionDateTime <= '2023-10-31 23:14:59.999') or
(TransactionDateTime >= '2023-10-31 23:20:00.001' AND TransactionDateTime <= '2023-10-31 23:24:59.999') or

(TransactionDateTime >= '2023-11-01 19:55:00.001' AND TransactionDateTime <= '2023-11-01 20:04:59.999') or
(TransactionDateTime >= '2023-11-02 05:40:00.001' AND TransactionDateTime <= '2023-11-02 05:49:59.999') or

(TransactionDateTime >= '2023-11-05 19:30:00.001' AND TransactionDateTime <= '2023-11-05 19:34:59.999') or
(TransactionDateTime >= '2023-11-05 23:35:00.001' AND TransactionDateTime <= '2023-11-05 23:39:59.999') or

(TransactionDateTime >= '2023-11-08 20:05:00.001' AND TransactionDateTime <= '2023-11-08 20:04:59.999') or
(TransactionDateTime >= '2023-11-08 23:10:00.001' AND TransactionDateTime <= '2023-11-08 23:19:59.999') or

(TransactionDateTime >= '2023-11-09 23:10:00.001' AND TransactionDateTime <= '2023-11-09 23:19:59.999')

--ContractorID = 'ЭСК ЧТПЗ АО'
--AND c_Cards.Code = '0010847470'

GROUP BY c_Transactions.TransactionDateTime, c_Cards.Name, c_Cards.Code,  c_Transactions.Sum, c_Transactions.SalePlace
ORDER BY c_Transactions.TransactionDateTime, c_Cards.Name, c_Cards.Code,  c_Transactions.Sum, c_Transactions.SalePlace;

