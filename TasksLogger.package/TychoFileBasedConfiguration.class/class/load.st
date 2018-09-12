loading
load
	| conf |
	^ './tycho-config.fuel' asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: './tycho-config.fuel'
				do: [ :aStream | conf := (FLMaterializer newDefault materializeFrom: aStream binary) root ].
			conf ]
		ifFalse: [ self new ]