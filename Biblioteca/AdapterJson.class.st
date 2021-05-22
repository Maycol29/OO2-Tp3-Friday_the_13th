Class {
	#name : #AdapterJSON,
	#superclass : #Object,
	#instVars : [
		'adaptee'
	],
	#category : #Biblioteca
}

{ #category : #private }
AdapterJSON >> convertSocioToDict: aSocio [
	^ Dictionary new
		at: #nombre put: aSocio nombre;
		at: #email put: aSocio email;
		at: #legajo put: aSocio legajo;
		yourself
]

{ #category : #exporting }
AdapterJSON >> export: socios [
	^ adaptee toStringPretty: (self makeDictionaryListWith: socios)
]

{ #category : #initialization }
AdapterJSON >> initialize [ 
adaptee := STON .
]

{ #category : #private }
AdapterJSON >> makeDictionaryListWith: aSocioList [
	^ aSocioList collect: [ :socio | self convertSocioToDict: socio ]
]
