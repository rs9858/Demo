#Author: Rahul Sharma
@Hotelbooking
Feature: HotelBooking

Background: User has already logged in with valid credentials
and is navigated to hotelBooking page.


Scenario: check the title
Given User is hotel booking page
Then Check the title of the page


Scenario: Successfully hotel booking with all Valid data
Given User is on hotel booking page
When user enters all valid data
Then navigate to welcome page


Scenario: Failure in hotel Booking on leaving the first Name empty
Given User is on hotel booking page
When user leaves first Name blank
And clicks the button
Then display alert msg


Scenario: Failure in hotel Booking on incorrect eamil format
Given User is on Hotel bookin page
When user enters all data
But user enters incorrect email format and clicks the button
Then display alert msg


Scenario: Failure in hotel Booking on leaving the mobile no. blank
Given User is on Hotel booking Page
When user leaves Mobile no blank and clicks the button 
Then display alert msg

Scenario: Failure in hotel Booking on incorrect mobile no. format
Given User is on Hotel booking Page
When user enters incorrect mobileno format and clicks the button
|7897987754|
|0218900979|
|2345678978|
|87465|
|77722005566|
| |
Then display alert msg

Scenario: Failure in hotel Booking on not selecting the city
Given User is on Hotel booking Page
When user does not select city 
Then display alert msg


Scenario: Failure in hotel Booking on not selecting the state
Given User is on Hotel booking Page
When user does not select state
Then display alert msg

Scenario Outline: Validate the number of rooms alloted
Given user is on hotel booking page
When user enters <numberOfGuests>
Then allocate rooms such that 1 room for minimum 3 guests
Examples:
|numberOfGuests|
|2|
|6|
|9|


Scenario: Failure in hotel Booking on leaving the CardHolderName blank
Given User is on Hotel booking Page
When user leaves CardHolderName blank and clicks the button 
Then display alert msg
 
Scenario: Failure in hotel Booking on leaving the DebitCardNo blank
Given User is on Hotel booking Page
When user leaves DebitCardNo blank and clicks the button  
Then display alert msg

Scenario: Failure in hotel Booking on leaving the ExpirationMonth blank
Given User is on Hotel booking Page
When user leaves ExpirationMonth blank and clicks the button  
Then display alert msg

Scenario: Failure in hotel Booking on leaving the ExpirationYr blank
Given User is on Hotel booking Page
When user leaves ExpirationYr blank and clicks the button  
Then display alert msg
 