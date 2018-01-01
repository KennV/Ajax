# Ajax #

## Tests are Imperative ##

At least three times in the early life of this project I have found myself ahead of the test. __This is Aweosme!__ because I can space my classes and structure the architecture of the app out and test it without really breaking the base classes. and if that time does arise I can do it in an extension or a protocol. So getting high coverage on Abstract and Application Data Controllers lets me confidently press on to first writing getters and predicates for the AjaxEntity but also test these. {Also note the test rigs arent even rea;;y using a SUT} Intuitavely it feels like the right path

## The Three Things I _Really_ Like about Cocoa ##

Now I have not one bad thing to say about Swift, Hell I really like it. However I keep chasing a new spec around while the other spec is changing too. I just imported some code from at least five years ago into a Obj-C framework and it worked. And I make _that_ distinction because I have every reason to beleive that it will continue to work

__ *Three things I love about Cocoa* __
Backwards Compatibility
In Swift I am sort of pulled into having to do it with the Newest Xcode and the Newest IOS version. Now that is noramlly not a big case, but for a Library type extension it is a question I would rather defer. Actually I just tweaked the build scheme and I am able to run it on IOS 10 versus 11.x for swift. And if I used the old-AF manual container I could run as low as say IOS 9.

Consistancy of tests and data / methodology
As I can run this on a lower OS I would have been stable if I had kept to my non-containerized Old CoreData Tool. My tests would all still be valid and I would be much further along. See - As to be expected as Swift changes I have to change my implementation. Ususally not terribly but it does have an impact and a takeaway value from the time that I am actually working code versus chasing a patch trail to hell.

Really nice square braces both for accessors and functions. I mean it. I have nothing against Java, but with the square braces I feel a higher level of confidence in the scope of this variable. And that isn't the only reason. The IDE, well any capable text editor will match the trailing square to the leading one and it is relably obvious what it says. I mean some things, like accessors should be a matter of faith but even then wrap it as a message
for example
[[tOne databaseName]isEqualToString:(@"Ajax.sqlite")]
is fairly easy to parse, and a lot less error prone it it is defined elsewhere. Regardless it is the way that ~90% of the code in this unit is written until I can be provided a better rationale

Also of note CCC Commits are Code Cleanup Tags. I change the documentation fairly readily. Back to _Tests_

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