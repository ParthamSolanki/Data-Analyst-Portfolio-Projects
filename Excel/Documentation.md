# Excel project with basic dashboard and visualizations

Below are the steps listed to create the whole project.

- **Creating copies of the raw data** - Creating a copy of the original file, or saving as an excel workbook to create multiple sheets within one as csv doesn't support that then creating a copy of the sheet in the workbook and using that without touching the original as say if something goes wrong, I can roll back. Doing both, creating a copy of the data as well as creating a copy of the sheet in the excel workbook itself.

- **Changing formatting of the textual stuff** - If you want to change the formatting of the names and textual stuff and feel like it is not properly formatted (this dataset feels fine when I glossed over it), you can just use UPPER, LOWER or PROPER to formate the stuff in a standardized format. You can also remove the additional columns by copying the values over the original column to make the whole sheet look neater.

- **Making the sheet look neat** - Most of the columns look congested and some of the data is not showing properly so I will quickly select all the data and use the `Autofit column width` function in the Format section in the Home pane.

- **Removing duplicates** - Selecting all the columns and removing duplicates using the in-built function of Excel.
    No duplicates found.

- **Glossing over the columns to remove anomalies** - Adding up filters for viewing to see their are any anomalies in the data or some stuff needs changing, then using this will view most of the columns as needed.
    - It seems that there is no managerID for the manager named "Webster Butler". After checking the manager name column using the filter dropdown, it seems that some of the other columns have the managerID for this manager which is 39. So we will populate all the other empty cells for this person with this managerID.

    Seems like no other column has any problems with NULL values of empty cells.
    
- **Changing blanks into NULL** - There are many in the Date of termination but that's to be expected as it would be empty for people who haven't been terminated. 
    For changing these blank cells to NULL -> Select the column > Go to special from the upper ribbon > Toggle Blank on then press ok > Type NULL without clicking anywhere > Ctrl + Enter to populate all the blank cells.
 Since its advisable to change it to NULL or something like that so that it doesn't cause issues later on when you are working with the data in a querying language, so we will be changing it. It can also be done manually by populating all the empty cells that show after you filter for blank cells.

- **TRIM unnecessary spaces** - Since while looking through the columns there was not any problem with the leading or trailing spaces, so will not be trimming but if needed can be done using the trim function promptly and easily.

- **Formatting and assigning correct datatype to dates** - Standardizing the dates to be of the date datatype or if there is any sort of problem or inconsistency with the way they are written it will be corrected using the inbuilt datatype changing function of excel after selecting all the columns. Will still recheck using the filter to see if it messed something up and take care of it.

- **Separating the whole name into first and last name columns** - Will be creating some useful columns like first name and last name as the names are in one column.
    - For separating the first name to its own column use `=TRIM(MID(A2, FIND(",", A2)+1, LEN(A2)))` this will use the MID to extract all the stuff after the ',' and then trim it as there is a space after the ',' but if you are sure that there is a space in all the rows you can just use `=MID(A2, FIND(",", A2)+2, LEN(A2))` instead. Mine contains some rows where there is no space after the delimiter so I will just use the previous one.
    - For separating the last name to its own column use `=LEFT(A2, FIND(",", A2)-1)`, and then auto populate all the other rows in the columns.

- **Creating an age column to get the age of the employees in years** - The DOB has been formatted properly so we can just use `=DATEDIF(R2, TODAY(), "Y")` to get the present age of individuals dynamically. We can also check the minimum and maximum ages using the filter which are 33 and 74 respectively.

- **Creating an age bracket column to make more insightful visualizations** - We are going to use the column of age created in the previous step to segregate the people into age brackets of say 10 year intervals. The code will be `=IF(AND(AM2>=30, AM2<=40), "30-40", IF(AND(AM2>40, AM2<=50), "40-50", IF(AND(AM2>50, AM2<=60), "50-60", IF(AND(AM2>60, AM2<=70), "60-70", IF(AM2>70, "70+ years", "NULL")))))` . It can seem pretty hectic but its just a basic nested IF as long as you remember the brackets and don't input too many arguments into one IF statement.

