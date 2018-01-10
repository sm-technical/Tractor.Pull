# Tractor.Pull

NOTES:

	- By the end of programming your project should compile.
	- Please make use of code comments where you can to explain some of the reasoning behind your work.
	- You will need at least Microsoft SQL Server Express (64-bit) (Version 13.0.4001 is what we used)

	

* Scenario

We've had a contract for a tractor pulling contest. Competing the best of the best tractors against one another in a challenge to see who can pull the other over the line.

A tug-of-war but with horsepower and might!

We've have been asked to create an online catalogue of these tractors and their owners. We've started some of the project but we need you to take us the rest of the way!

Our app comprises of 3 components.

 - Tractor.Pull.Web : This represents our MVC UI elements
 - Tractor.Pull.Domain : This represents our data layer, and POCO objects
 - Tractor.Pull.Repository : This represents our data access

Before you start, you'll need:

	- Visual Studio (Community Edition is fine)
	- Microsoft SQL Server. You'll find the database scripts, and backup file attached.
	- Restore the Nuget packages in order to run the application

* Instructions

1. It seems like on of our developers has created a bug when viewing the owners of our tractor pull in "~\Views\Tractor\Index.cshtml", can you find and fix the error? 
	- You wont be able to run the project without correcting this first
	- It seems to be problem with the relationships in Entity Framework

2. Please extend the database, to include other information such owner email and phone number with the following criteria:
	- An owner can have more than one contact method
	- We should be able to set a "primary" method of contact 
	- We should be able to add contact types dynamically without the need of table re-design

3. We need to be able to view owner’s in a list, can you create an owners controller and view to represent:
	- A count of owner’s tractors
	- An owner’s cumulative score
	- Order by the highest score first

If you've got here, and want to try a little more can you look at Tractor.Pull.Domain and see how we can add some common generic methods in a base class for data access? If not then don't worry. We'll assess what you've worked on so far.

	- GetById()
	- GetCollection()
	- Update()
	- Create()


Once finished. If you could zip the files up and return to ourselves ensuring that you remove the "~\Tractor.Pull\packages" folder, and the bin and obj directories in each project then the file will be small enough to distribute on email.

You'll also need to include a backup file of the SQL database that you've modified.

* References

Entity Framework:	https://msdn.microsoft.com/en-us/library/aa937723(v=vs.113).aspx

ASP.NET MVC:		https://www.asp.net/mvc

AutoMapper:		http://automapper.org/
