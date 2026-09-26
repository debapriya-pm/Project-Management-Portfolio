# DAX KPI Layer

```DAX
Active Users = DISTINCTCOUNT ( MedicationEvents[User_ID] )
```

```DAX
Training Completion % =
DIVIDE(
    CALCULATE(DISTINCTCOUNT(Users[User_ID]), Users[Training_Status]="Completed"),
    DISTINCTCOUNT(Users[User_ID])
)
```

```DAX
Average Workflow Minutes = AVERAGE ( MedicationEvents[Duration_Minutes] )
```

```DAX
Support Tickets = COUNTROWS ( SupportTickets )
```

```DAX
High Severity Tickets =
CALCULATE(
    COUNTROWS(SupportTickets),
    SupportTickets[Severity] IN {"P1","P2"}
)
```

```DAX
Adoption % =
DIVIDE([Active Users], DISTINCTCOUNT(Users[User_ID]))
```

These are demonstration calculations using synthetic data.
