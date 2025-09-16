# Excel project with basic dashboard and visualizations

We are going

- Creating a copy of the original file or creating a copy of the sheet in the original and using that without touching the original as say if something goes wrong, I can roll back. Doing both, creating a copy of the data as well as creating a copy of the sheet in the excel workbook itself.
- If you want to change the formatting of the names and textual stuff and feel like it is not properly formatted (this dataset feels fine when I glossed over it), you can just use UPPER, LOWER or PROPER to formate the stuff in a standardized format. You can also remove the additional columns by copying the values over the original column to make the whole sheet look neater.
- Most of the columns look congested and some of the data is not showing properly so I will quicky select all the data and use the `Autofit column width` function in the Format section in the Home pane.
- Selecting all the columns and removing duplicates using the in-built function of Excel.
    No duplicates found.
- Adding up filters for viewing to see their are any anomalies in the data or some stuff needs changing, then using this will view most of the columns as needed.
    - It seems that there is no managerID for the manager named "Webster Butler". After checking the manager name column using the filter dropdown, it seems that some of the other columns have the managerID for this manager which is 39. So we will populate all the other empty cells for this person with this managerID.

    Seems like no other column has any problems with NULL values of empty cells.
- Since while looking through the columns there was not any problem with the leading or trailing spaces, so will not be trimming but if needed can be done with the trim function promptly and easily.