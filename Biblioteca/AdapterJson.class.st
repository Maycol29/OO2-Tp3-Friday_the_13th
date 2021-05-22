Class {
	#name : #AdapterJson,
	#superclass : #Object,
	#instVars : [
		'adaptee'
	],
	#category : #Biblioteca
}

{ #category : #private }
AdapterJson >> convertSocioToDict: aSocio [
	^ Dictionary new
		at: #nombre put: aSocio nombre;
		at: #email put: aSocio email;
		at: #legajo put: aSocio legajo;
		yourself
]

{ #category : #exporting }
AdapterJson >> export: socios [
	^ adaptee toStringPretty: (self makeDictionaryListWith: socios)
]

{ #category : #initialization }
AdapterJson >> initialize [ 
adaptee := NeoJSONWriter .
]

{ #category : #private }
AdapterJson >> makeDictionaryListWith: aSocioList [
	^ aSocioList collect: [ :socio | self convertSocioToDict: socio ]
]
