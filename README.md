# Ajax #

## Before We Get Into Test Cases ##

There Are at Least Three things that I prefer about Cocoa over Swift. 

Now apparently I have been trying to re-do some previous projects in Obj-C since 05-13 also, apparently with some prototypes that are pretty noice. So when I ran into one of these I added some key components - An Abstracted set of paths and names that build up the CoreData Stack. Then I make sure that it accepts minor/reasonable changes to the xcdm, as we will change this now.

Next setp is to add a model to the project, and also to the test project. Populate it as basically as possible {with tests every change} now the tests are essentially nil at this point iirc it was 20% then walk over every paramertirized ivar and test these coverage goes to 60 and if I didn't have the template baggage it would be highter

{here's a sidenote : Why delete it now when I have to later. I don't even want to read it. _also_ I popped save over to the AppClass not the AbsClass. I mean it would could save but I would it want to init with the wrong class - which it cant do}
and the app still runs the same GUI.

So Yup tests work:

## Data Does Not Migrate to Master, TESTED Data Migrates to Master ## 

Okay The first step for this _entire_ project is to make an empty git repositary. And immediately add a LICENSE, README.md and a .gitignore to not version intermediate files. Then I need to branch it and add an application base. For the initial build I chose a Master/Detail without CoreData. Then I modified the project folder for better logical orginization. nothing special the project is still essentially empty. But that is not the feature. 

Next I branch the refactored base into a DataTest-branch with tests which must fail because there is no data to test, and branch that into a data Branch. It is from here that I will make the tests and then merge into dataTests, then master. It is in this way that I will make sure that dataTests does not include any bad tests. See if I had done data first then tried to test it, I would be looking at the wrong end of the microscope. 

<!--end -->