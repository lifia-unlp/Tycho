store
dateAndTimeFromString: aString
  | parts dateParts timeParts |
  
  parts := aString findTokens: ', '.

  dateParts := (parts first findTokens: '/') collect: [:e | e asNumber].
  timeParts := (parts second findTokens: ':') collect: [:e | e asNumber].

  ^ DateAndTime
    year: dateParts third
    month: dateParts second
    day: dateParts first
    hour: timeParts first
    minute: timeParts second
    second: timeParts third.