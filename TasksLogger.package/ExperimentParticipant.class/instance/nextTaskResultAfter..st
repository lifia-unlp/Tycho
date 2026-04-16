task results
nextTaskResultAfter: aTaskResult
    "Returns the task result that immediately follows the given aTaskResult 
    in the taskResults collection. 
    
    If aTaskResult is not found in the collection, or if it is the last element,
    the method returns nil."

    | index |
    index := taskResults indexOf: aTaskResult ifAbsent: [ ^ nil ].
    index < taskResults size
        ifTrue: [ ^ taskResults at: index + 1 ]
        ifFalse: [ ^ nil ].