Sub CensusFixes()
    'This will run the loop through all worksheets
    For Each ws In Worksheets
    
    
        'creates a variable to Hold File Name, Last row, and year
        Dim WorksheetName As String
        
        'Determine the Last Row
        LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
        
        'Grabs the worksheet Name
        WorksheetName = ws.Name
        
        'Splits the name of the worksheet until it runs into the delimiter "_"
        CensusYear = Split(WorksheetName, "_")
        
        'Adds a column on A1
        ws.Range("A1").EntireColumn.Insert
        
        ws.Cells(1, 1).Value = "Year"
        
        'Places the Year into the "Year" column
        ws.Range("A2:A" & LastRow) = CensusYear(0)
    
        'Split the county and state into seperate columns
        ws.Range("C1").EntireColumn.Insert
        
        ws.Cells(1, 2).Value = "County"
        
        ws.Cells(1, 3).Value = "State"
        
        'For loop to place the county and state in seperate columns
        For i = 2 To LastRow
            
            CountyState = ws.Cells(i, 2).Value
            CSSplit = Split(CountyState, ", ")
            
            ws.Cells(i, 2).Value = CSSplit(0)
            
            ws.Cells(i, 3).Value = CSSplit(1)
        
        Next i
        
        'For loop to change the style of the income columns to currency
        
        For i = 2 To LastRow
        
            For j = 6 To 7
            
                ws.Cells(i, j).Style = "Currency"
                
            Next j
            
        Next i
        
    Next ws
    
    MsgBox ("Fixes Complete")
    
End Sub
