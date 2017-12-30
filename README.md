# Ajax #

## Data Does Not Migrate to Master, TESTED Data Migrates to Master ## 

Okay The first step for this _entire_ project is to make an empty git repositary. And immediately add a LICENSE, README.md and a .gitignore to not version intermediate files. Then I need to branch it and add an application base. For the initial build I chose a Master/Detail without CoreData. Then I modified the project folder for better logical orginization. nothing special the project is still essentially empty. But that is not the feature. 

Next I branch the refactored base into a DataTest-branch with tests which must fail because there is no data to test, and branch that into a data Branch. It is from here that I will make the tests and then merge into dataTests, then master. It is in this way that I will make sure that dataTests does not include any bad tests. See if I had done data first then tried to test it, I would be looking at the wrong end of the microscope. 

<!--end -->