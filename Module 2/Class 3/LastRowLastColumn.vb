'This is how you find the last row and column in a workbook for nested for loops


Sub StarCounter()
    Dim Total As Integer
    lastrow = Cells(Rows.Count, 1).End(xlUp).Row
    lastcolumn = Cells(1, Columns.Count).End(xlToLeft).Column
    
    Total = 0
    For i = 2 To lastrow
        For j = 4 To lastcolumn
            If Cells(i, j).Value = "Full-Star" Then
                Total = Total + 1
            End If
        Next j
    Next i
    
    Range("I2").Value = Total
    
    
End Sub
