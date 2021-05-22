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
^adaptee writeList: socios.
]

{ #category : #initialization }
AdapterJson >> initialize [ 
adaptee :=NeoJSONWriter new.
]
