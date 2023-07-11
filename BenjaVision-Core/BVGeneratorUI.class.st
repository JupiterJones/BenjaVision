Class {
	#name : #BVGeneratorUI,
	#superclass : #SpPresenter,
	#instVars : [
		'menu',
		'text'
	],
	#classVars : [
		'Instance'
	],
	#category : #'BenjaVision-Core'
}

{ #category : #singleton }
BVGeneratorUI class >> instance [
	^ Instance ifNil: [ Instance := self new ]
]

{ #category : #launch }
BVGeneratorUI class >> launch [

	<sampleInstance>
	^ self instance open
]

{ #category : #singleton }
BVGeneratorUI class >> resetInstance [
	Instance := nil
]

{ #category : #initialization }
BVGeneratorUI >> addItemTo: aGroup [
	aGroup
		addItem: [ :item | 
			item
				name: 'Dynamic';
				icon: (self iconNamed: #delete);
				action: [ aGroup menuItems remove: item.
					self needRebuild: false.
					self build ] ].
	self needRebuild: false.
	self build
]

{ #category : #layout }
BVGeneratorUI >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		add: menu expand: false;
		add: text;
		yourself
]

{ #category : #initialization }
BVGeneratorUI >> initialize [
	super initialize.
	self application: BVApplication new
]

{ #category : #initialization }
BVGeneratorUI >> initializePresenters [
	menu := self newMenuBar
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'File';
						icon: (self iconNamed: #open);
						subMenu: self subMenu ].
			group
				addItem: [ :item | 
					item
						name: '';
						description: 'Open file';
						icon: (self iconNamed: #open);
						action: [ self inform: 'Open File' ] ].
			group
				addItem: [ :item | 
					item
						name: '';
						description: 'Save File';
						icon: (self iconNamed: #smallSave);
						action: [ self inform: 'Save File' ] ].
			group
				addItem: [ :item | 
					item
						name: '';
						description: 'Print file';
						icon: (self iconNamed: #smallPrint);
						action: [ self inform: 'Print file' ] ] ];
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: '';
						description: 'Undo';
						icon: (self iconNamed: #smallUndo);
						action: [ self inform: 'Undo' ] ].
			group
				addItem: [ :item | 
					item
						name: '';
						description: 'Redo';
						icon: (self iconNamed: #smallRedo);
						action: [ self inform: 'Redo' ] ] ].
		
	menu addKeybindingsTo: self.
	text := self newText.
	self focusOrder add: text
]

{ #category : #accessing }
BVGeneratorUI >> menu [

	^ menu
]

{ #category : #initialization }
BVGeneratorUI >> subMenu [
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'Open';
				icon: (self iconNamed: #open);
				shortcut: $o meta;
				action: [ self inform: 'Open' ] ];
		addItem: [ :item | 
			item
				name: 'Save';
				icon: (self iconNamed: #smallSave);
				shortcut: $s meta;
				action: [ self inform: 'Save' ] ];
	
		addItem: [ :item | 
			item
				name: 'Kill';
				shortcut: $k meta;
				icon: (self iconNamed: #smallCancel);
				action: [ self inform: 'Kill' ] ];
		yourself
]

{ #category : #accessing }
BVGeneratorUI >> text [

	^ text
]

{ #category : #api }
BVGeneratorUI >> title [

	^ 'BenjaVision ProLuxe Generator'
]
