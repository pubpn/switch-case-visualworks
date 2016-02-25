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
<body>Implements a switch-case mechanism.
</comment>

<methods>
<class-id>Switch class</class-id> <category>instance creation</category>

<body package="Objectspace-Net-Controlling-Structures" selector="for:">for: anObject
</methods>


<methods>
<class-id>Switch</class-id> <category>private accessing</category>

<body package="Objectspace-Net-Controlling-Structures" selector="response">response

<body package="Objectspace-Net-Controlling-Structures" selector="satisfied:">satisfied: anObject

<body package="Objectspace-Net-Controlling-Structures" selector="response:">response: anObject

<body package="Objectspace-Net-Controlling-Structures" selector="value:">value: anObject

<body package="Objectspace-Net-Controlling-Structures" selector="value">value

<body package="Objectspace-Net-Controlling-Structures" selector="satisfied">satisfied
</methods>

<methods>
<class-id>Switch</class-id> <category>private testing</category>

<body package="Objectspace-Net-Controlling-Structures" selector="isSatisfied">isSatisfied
</methods>

<methods>
<class-id>Switch</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="caseIs:then:">caseIs: testObject then: execBlock

<body package="Objectspace-Net-Controlling-Structures" selector="case:then:">case: oneArgTestBlock then: execBlock

<body package="Objectspace-Net-Controlling-Structures" selector="caseIsAny:then:">caseIsAny: testCollection then: execBlock

<body package="Objectspace-Net-Controlling-Structures" selector="default:">default: execBlock

<body package="Objectspace-Net-Controlling-Structures" selector="caseIdentityIs:then:">caseIdentityIs: testObject then: execBlock
</methods>


<methods>
<class-id>Core.Object</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="switch">switch
</methods>


<methods>
<class-id>Kernel.BlockClosure</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="switch">switch
</methods>


<methods>
<class-id>UI.ValueHolder</class-id> <category>controlling</category>

<body package="Objectspace-Net-Controlling-Structures" selector="switch">switch
</methods>



</st-source>