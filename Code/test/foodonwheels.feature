Feature: Sign Up, Log In, Log Out

Scenario: Sign Up (Sunny)

Given the user fills the form with these random details:
| first_name | middle_initial | last_name | email_address | password | contact_number | home_address |
| Paul | F | Lee | paul@gmail.com | pass | 09061234567 | address1 |
When I submit the sign up form
Then I should get a '200' response
And it will return these details:
| message | status |
| Sign Up success | ok |


Scenario: Sign Up (Rainy) email address already exists

Given the user fills the form with these details:
| first_name | middle_initial | last_name | email_address | password | contact_number | home_address |
| Paul | F | Lee | paulf00@gmail.com | pass | 09061234567 | address1 |
When I submit the sign up form
Then I should get a '200' response
And it will return these messages:
| message | status |
| Email address already exists | error1 |


Scenario: Sign Up (Rainy) invalid email address

Given the user fills the form with these details:
| first_name | middle_initial | last_name | email_address | password | contact_number | home_address |
| Paul | F | Lee | paulf0019 | pass | 09061234567 | address1 |
When I submit the sign up form
Then I should get a '200' response
And it will return these messages:
| message | status |
| Invalid email address | error2 |


Scenario: Sign Up (Rainy) no email address and password

Given the user fills the form with these details:
| first_name | middle_initial | last_name | email_address | password | contact_number | home_address |
| Paul | F | Lee | | | 09061234567 | address1 |
When I submit the sign up form
Then I should get a '200' response
And it will return these messages:
| message | status |
| Email address cannot be blank | error1 |


Scenario: Log In (Sunny)

Given login details:
| email_address | password |
| paul@gmail.com | pass |
When I click login button
Then I should get a '200' response
And it will return these messages:
| message | status |
| Successfully logged in | ok |


Scenario: Log In (Rainy) wrong password

Given login details:
| email_address | password |
| paul@gmail.com | paasa |
When I click login button
Then I should get a '200' response
And it will return these messages:
| message | status |
| Password is incorrect | error |


Scenario: Log In (Rainy) email address does not exist

Given login details:
| email_address | password |
| noemail@gmail.com | pass |
When I click login button
Then I should get a '200' response
And it will return these messages:
| message | status |
| Email address does not exist | error |


Scenario: Log Out (Sunny)

Given user is logged in as:
| email_address | password |
| paul@gmail.com | pass |
When I click logout button
Then I should get a '200' response
And it will return these messages:
| message | status |
| Successfully logged out | ok |