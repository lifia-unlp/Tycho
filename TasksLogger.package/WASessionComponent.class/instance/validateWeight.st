rendering-protocols-weight
validateWeight
     ^ (self experimentSession protocols inject: 0 into: [ :sum :protocol | sum + protocol weight ]) = 100.