# Excel project with basic dashboard and visualizations

Below are the steps listed to create the whole project.

- Creating a copy of the original file, or saving as an excel workbook to create multiple sheets within one as csv doesn't support that then creating a copy of the sheet in the workbook and using that without touching the original as say if something goes wrong, I can roll back. Doing both, creating a copy of the data as well as creating a copy of the sheet in the excel workbook itself.

- If you want to change the formatting of the names and textual stuff and feel like it is not properly formatted (this dataset feels fine when I glossed over it), you can just use UPPER, LOWER or PROPER to formate the stuff in a standardized format. You can also remove the additional columns by copying the values over the original column to make the whole sheet look neater.

- Most of the columns look congested and some of the data is not showing properly so I will quicky select all the data and use the `Autofit column width` function in the Format section in the Home pane.

- Selecting all the columns and removing duplicates using the in-built function of Excel.
    No duplicates found.

- Adding up filters for viewing to see their are any anomalies in the data or some stuff needs changing, then using this will view most of the columns as needed.
    - It seems that there is no managerID for the manager named "Webster Butler". After checking the manager name column using the filter dropdown, it seems that some of the other columns have the managerID for this manager which is 39. So we will populate all the other empty cells for this person with this managerID.

    Seems like no other column has any problems with NULL values of empty cells.
    
- There are many in the Date of termination but that's to be expected as it would be empty for people who haven't been terminated. 
    For changing these blank cells to NULL -> Select the column > Go to special from the upper ribbon > Toggle Blank on then press ok > Type NULL without clicking anywhere > Ctrl + Enter to populate all the blank cells.
 Since its advisable to change it to NULL or something like that so that it doesn't cause issues later on when you are working with the data in a querying language, so we will be changing it. It can also be done manually by populating all the empty cells that show after you filter for blank cells.

- Since while looking through the columns there was not any problem with the leading or trailing spaces, so will not be trimming but if needed can be done using the trim function promptly and easily.

- Standardizing the dates to be of the date datatype or if there is any sort of problem or inconsistency with the way they are written it will be corrected using the inbuilt datatype changing function of excel after selecting all the columns. Will still recheck using the filter to see if it messed something up and take care of it.

- Will be creating some useful columns like first name and last name as the names are in one column.
