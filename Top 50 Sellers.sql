select Top 50 Total_Spent, c.Category,  c.Name, Points_Earned, Purchased_Item_Count
from dbo.receipts As a
Join dbo.users As b
On a.Document_Index_generated = b.Document_Index_generated
Join dbo.brands As c
On a.Document_Index_generated = c.Document_Index_generated
Order By Total_Spent DESC