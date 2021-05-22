Class {
	#name : #AdapterJson,
	#superclass : #Object,
	#instVars : [
		'adaptee'
	],
	#category : #Biblioteca
}

{ #category : #exporting }
AdapterJson >> export:socios [
|col|
col:= socios collect: [:socio| (Dictionary new at: #nombre put: socio nombre ; at: #email put: socio email ; at: #legajo put: socio legajo ;
yourself) ].


^NeoJSONWriter toStringPretty: col.

]

{ #category : #initialization }
AdapterJson >> initialize [ 
adaptee :=NeoJSONWriter new .
]
