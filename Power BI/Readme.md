# Power BI project
Going to make a simple dashboard using power bi, going to take the data from the excel project as it is already more or less cleaned and there is not meant to be a lot of cleaning and data transforming to be done in power query as it is not as capable as the other tools that are specifically for data manipulation. Thinking about making similar dashboard to the one that was made in excel.

# Broad steps
- Importing data, deleting and creating columns that will be useful for the viz 
- Making all the different charts and stuff in the dashboard area.
- Arranging them and cleaning up and perfecting all the various nuances.
- Removing cluttering elements to refine the dashboard some more.
- Changing the color palette for the whole dashboard to make it look more uniform then messing around to make it look better.

# Procedure
1. Importing the data to Power BI from the Excel project.
    - There were a decent chunk of sheets in the excel workbook so only importing these sheets - Working, Managers.
2. In `Model View` checking what these sheets are joined upon.
    - Seems to be `ManagerID` and that works so not changing it.
3. Gonna have a quick look on the Working sheet in Power Query to see what need to be done.
    - Gonna change date of hire format to be `yyyy-mm-dd` rather than the long format as it would be easier to work with.
    - Also gonna change the Last performance review date to the `yyyy-mm-dd` format.
4. Possible viz that I'm thinking about adding to the `Report View` after looking at the cleaning data.
    - Employee count, also dividing it into gender to go below the normal count in smaller format.
    - Make a salary viz with age and department or position.
    - Gonna make a viz showing count of individuals from various Race and also try to drill down on it based on whether they are a US citizen or not.
    - Make a recruitment source viz to see where the focus should be for HR for recruiting.
    - Creating an attrition rate by department with a drill down for managerid, chart too.
    - Gonna make a short viz for employee satisfaction.

    Not gonna add more stuff as that would feel more cluttered, will see while arranging the stuff later on what more can be added or not. 
5. Adding a card showing count of currently active employees, created a new measure using DAX Query `Total_Employees_Current = CALCULATE(COUNT('Working'[EmpID]), 'Working'[Termd] = 0)`. This allows to only count the number of currently active employees in the company.
    Using similar DAX query will add stuff based on genders too.
    Just right click the column name and click New measure to get the DAX query editor for creating the new measure
6. Creating an average salary by department stacked bar chart.
7. Creating an average salary by gender Donut chart.
8. Creating a recruitment resource chart to know from where most hires come from.
9. Creating an attrition rate chart based on departments and drill down to managers.
10. Publishing it to power bi, yeah so power bi for some reason doesn't allow consumers like outlook to sign in, you need to have company or school id. So hosting it on github will need to do it. Will add an exported pdf for easier viewing.
11. Exported to a pdf and converted the pdf to jpg for embedding on the [site](https://parthamsolanki.github.io/Portfolio-Site/)

# Jargons
- Viz - Visualization(s)
- DAX - Data Analysis eXpressions