                    Project Rescueme
================

Objectives
----------

-   Ticketting system.
-   Allowing customers to ask for help and to exchange through the system.
-   Assistants will be able to manage ticket, changing status, priority, etc.

Behaviors
---------

### Customers/Users:

-   Customer log into his account to check or create a ticket
-   In his account he will be able to see all of his tickets ordered by default by presumed fixing date.
-   He will be able to add comments to open tickets and to reference previous tickets to his currents ones.
-   Customers will be linked to a society with a main account that will be able to create others accounts.

### Tickets:

-   When a customer create a ticket, he will have to add a explicit title, select a category/type amoung previously defined ones, and add a message. With his message he will be able to link images to provide more informations about his demand.
-   By default a created ticket will have a date depending of it’s category/type (following status are only for example):
    -   Information => By default a short time of 1/2 a day.
    -   Development => Priorizes (Low, Medium, High)
    -   Bugs priorities:
        -   Low: Default due date between half and a day.
        -   Medium: Default due date between 1 and 2 1/2 days.
        -   High: Default due date between 2 and 4 days.

-   To those delays will be automatically added treatment delay defined by the service. So when a customer create a ticket he will have a default solving date (maybe with a default treatment delay).
-   A closed ticket can be reopened
-   Tickets have a category:
    -   Information
    -   Development (feature)
    -   Bugs

-   In some case a level:
    -   Low
    -   Medium
    -   high

-   A Status:
    -   Opened
    -   In treatment
    -   Closed
    -   Cancelled
    -   Rejected
    -   Need more details
    -   Delayed

-   A development ticket level can be changed by a customer until his status has changed to ‘in treatment’

### Assistants:

-   After connecting to their accounts they will able to see a list of the open tickets ordered by creation date.
-   They will be able to order them or filter them differently.
-   They will be able to change a ticket status and it’s delays. Exchange with the customers via their tickets. They will be able to change a ticket status when it’s done they will be the only one able to do change the status.
-   When a ticket status is changed an email is automatically sent to the creator to update him about his demand.

Models specs
------------

-   Users with a role and linked to a company
    -   Roles:
        -   Assistant
        -   Administrator
        -   Customer
        -   Reviewer (maybe)

-   Related informations:
    -   FirstName
    -   LastName
    -   Password + Password confirmation
    -   Creation and Modification dates
    -   Enabled or not

-   Roles
    -   Previous roles

-   Tickets
    -   Category
    -   Level
    -   Status
    -   Related informations:
        -   Creation and modification dates
        -   Title
        -   Object
        -   Description

-   TicketStatus
    -   Previous indicated status

-   TicketCategories
    -   Previous indicated status

-   TicketLevel
    -   Previous indicated status

-   Messages
    -   Link between 2 users and a ticket.

-   Companies
    -   Related informations:
        -   Title
        -   Address fields
        -   etc.

-   Projects
    -   Related informations:
        -   Title

-   Statistics (feature)
