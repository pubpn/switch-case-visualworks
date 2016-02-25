<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 7.8.1 of 04. Januar 2012 on 25. Februar 2016 at 16:21:12</time-stamp>


<component-created>
<name>Objectspace-Net-Controlling-Structures</name> <type>package</type>
</component-created><!-- Package Objectspace-Net-Controlling-Structures(0.0.0-0.0-0.4,PrzemyslawNiescior)= -->


<component-created>
<name>Objectspace-Net-Controlling-Structures</name> <type>package</type>
</component-created>

<class>
<name>Switch</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>value satisfied response </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>Objectspace.net-Controlling Structures</category>
<attributes>
<package>Objectspace-Net-Controlling-Structures</package>
</attributes>
</class>

<comment>
<class-id>Switch</class-id>
<body>Implements a switch-case mechanism.Instance Variables	response	&lt;Object&gt;	The variable response will hold the result of the operation, which will be made in case of fulfillment of the conditions of any case.	satisfied	&lt;Object&gt;	The variable satisfied tells us, if any of the case conditions are met.	value	&lt;Object&gt;	The variable value will hold the object for which the switch is made. Created by: Przemyslaw Niescior, objectspace.net</body>
</comment>

<methods>
<class-id>Switch class</class-id> <category>instance creation</category>

<body package="Objectspace-Net-Controlling-Structures" selector="for:">for: anObject	^self new value: anObject</body>
</methods>


<methods>
<class-id>Switch</class-id> <category>private accessing</category>

<body package="Objectspace-Net-Controlling-Structures" selector="response">response	^ response</body>

<body package="Objectspace-Net-Controlling-Structures" selector="satisfied:">satisfied: anObject	satisfied := anObject</body>

<body package="Objectspace-Net-Controlling-Structures" selector="response:">response: anObject	response := anObject</body>

<body package="Objectspace-Net-Controlling-Structures" selector="value:">value: anObject	value := anObject</body>

<body package="Objectspace-Net-Controlling-Structures" selector="value">value	^ value</body>

<body package="Objectspace-Net-Controlling-Structures" selector="satisfied">satisfied	^ satisfied</body>
</methods>

<methods>
<class-id>Switch</class-id> <category>private testing</category>

<body package="Objectspace-Net-Controlling-Structures" selector="isSatisfied">isSatisfied	^satisfied == true</body>
</methods>

<methods>
<class-id>Switch</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="caseIs:then:">caseIs: testObject then: execBlock	^self case: [:aValue | testObject = aValue] then: execBlock</body>

<body package="Objectspace-Net-Controlling-Structures" selector="case:then:">case: oneArgTestBlock then: execBlock	"The oneArgTestBlock must return a Boolean value when passed the value of the receiver"		self isSatisfied ifFalse: [		(oneArgTestBlock value: self value) ifTrue: [			self response: execBlock value.			self satisfied: true]].	^self response</body>

<body package="Objectspace-Net-Controlling-Structures" selector="caseIsAny:then:">caseIsAny: testCollection then: execBlock	^self case: [ :aValue | testCollection includes: aValue ] then: execBlock</body>

<body package="Objectspace-Net-Controlling-Structures" selector="default:">default: execBlock	self isSatisfied ifFalse: [		self response: execBlock value]. 	^self response </body>

<body package="Objectspace-Net-Controlling-Structures" selector="caseIdentityIs:then:">caseIdentityIs: testObject then: execBlock	^self case: [:aValue | testObject == aValue] then: execBlock</body>
</methods>


<methods>
<class-id>Core.Object</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="switch">switch	^Switch for: self</body>
</methods>


<methods>
<class-id>Kernel.BlockClosure</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="switch">switch	^Switch for: self value</body>
</methods>


<methods>
<class-id>UI.ValueHolder</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="switch">switch	^Switch for: self value</body>
</methods>



</st-source>
