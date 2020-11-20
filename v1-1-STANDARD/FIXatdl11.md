![](media/image1.png){width="5.935416666666667in"
height="8.250694444444445in"}

**FIX Algorithmic Trading Definition Language (FIXatdl^SM^)**

**Version 1.1 Specification with Errata 20101221**

Includes Errata adjustments as of December 21, 2010

**[Errata Purpose:]{.underline}**

[This document includes a list of minor adjustments to the FIXatdl 1.1
Specification document due to typographical errors or
ambiguities.]{.underline}

[The specific adjustments made to the original FIXatdl version 1.1
specification as a result of the Errata can be seen and printed via
Microsoft Word's revision feature of this document. A separate document
with an itemized list of changes is available via the FIX
website.]{.underline}

December 21, 2010

**Document History**

+-------------+---------------+---------------+---+---------------+
| Revison   | Date        | Author      |   | Comments      |
+=============+===============+===============+===+===============+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 1   | October 12, | Greg        |   | Original      |
|             | 2009        |             |   | draft.        |
|             |               |  Malatestinic |   |               |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 2   | November    | Greg        |   | Added element |
|             | 16,         |             |   | hierarchy and |
|             |               |  Malatestinic |   | sample code.  |
|             |               |               |   | Deleted       |
+-------------+---------------+---------------+---+---------------+
|             | 2009        |               |   | schema        |
|             |               |               |   | diagrams.     |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 3   | December    | Greg        |   | Added XML     |
|             | 12, 2009    |             |   | element       |
|             |               |  Malatestinic |   | descriptions. |
|             |               |               |   | Replaced XML  |
|             |               |               |   | Spy           |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | generated     |
|             |               |               |   | attribute     |
|             |               |               |   | tables with   |
|             |               |               |   | custom table. |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 4   | December    | Greg        |   | Changes based |
|             | 28, 2009    |             |   | on Scott      |
|             |               |  Malatestinic |   | Atwell‟s      |
|             |               |               |   | review. Added |
|             |               |               |   | new           |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | tables for    |
|             |               |               |   | extension     |
|             |               |               |   | attributes    |
|             |               |               |   | that include  |
|             |               |               |   | attribute     |
|             |               |               |   | type          |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | information.  |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 5   | January 12, | Greg        |   | Addition of   |
|             | 2010        |             |   | Key Concepts  |
|             |               |  Malatestinic |   | section.      |
|             |               |               |   | Formatting    |
|             |               |               |   | cleaned-      |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | up. Further   |
|             |               |               |   | editing based |
|             |               |               |   | on review of  |
|             |               |               |   | Jan 6, 2010.  |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 6   | January 18, | Greg        |   | Added         |
|             | 2010        |             |   | Paramet       |
|             |               |  Malatestinic |   | er-to-Control |
|             |               |               |   | binding and   |
|             |               |               |   | Transport of  |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | Strategy      |
|             |               |               |   | Parameters to |
|             |               |               |   | Key Concepts  |
|             |               |               |   | section.      |
|             |               |               |   | Added         |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | comments to   |
|             |               |               |   | the sample    |
|             |               |               |   | instance.     |
|             |               |               |   | More changes  |
|             |               |               |   | based on      |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | Scott         |
|             |               |               |   | Atwell‟s      |
|             |               |               |   | review.       |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 7   | February 4, | Greg        |   | Changes made  |
|             | 2010        |             |   | based on the  |
|             |               |  Malatestinic |   | review by     |
|             |               |               |   | Ryan Pierce.  |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 8   | February 8, | Scott       |   | Typographical |
|             | 2010        | Atwell      |   | changes.      |
|             |               |               |   | Added         |
|             |               |               |   | Parameter     |
|             |               |               |   | T             |
|             |               |               |   | ype-Attribute |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | Matrix and    |
|             |               |               |   | Control       |
|             |               |               |   | T             |
|             |               |               |   | ype-Attribute |
|             |               |               |   | Matrix.       |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Draft 9   | February    | Greg        |   | Updated to    |
|             | 22, 2010    |             |   | reflect       |
|             |               |  Malatestinic |   | changes made  |
|             |               |               |   | to schema     |
|             |               |               |   | after public  |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   | comment       |
|             |               |               |   | period.       |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Final     | March 2,    |               |   | Draft 9       |
|             | 2010        |               |   | approved by   |
|             |               |               |   | GTC           |
|             |               |               |   | Governance    |
|             |               |               |   | Board         |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Errata    | Dec 8, 2010 | Greg        |   | Corrections.  |
|             |               |             |   |               |
|             |               |  Malatestinic |   |               |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Errata    | Dec 15,     | Steve       |   | Further       |
|             | 2010        | Wilkinson   |   | corrections   |
|             |               |               |   | from WG       |
|             |               |               |   | review.       |
+-------------+---------------+---------------+---+---------------+
| Final     |               | Greg        |   |               |
|             |               |             |   |               |
|             |               |  Malatestinic |   |               |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Errata    | Dec 21,     | Greg        |   | Further typos |
|             | 2010        |             |   | corrected.    |
|             |               |  Malatestinic |   |               |
+-------------+---------------+---------------+---+---------------+
| Final     |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
| Published |               |               |   |               |
+-------------+---------------+---------------+---+---------------+
|             |               |               |   |               |
+-------------+---------------+---------------+---+---------------+

December 21, 2010 2 FIXatdl v1.1 with Errata 20101221

DISCLAIMER

THE INFORMATION CONTAINED HEREIN AND THE FINANCIAL INFORMATION EXCHANGE
ALGORITHMIC TRADING DEFINITION LANGUAGE (COLLECTIVELY, THE \"FIXadtl^SM^
SCHEMA\") ARE PROVIDED \"AS IS\" AND NO PERSON OR ENTITY ASSOCIATED WITH
THE FIX PROTOCOL AND/OR THE FIXadtl SCHEMA MAKES ANY REPRESENTATION OR
WARRANTY, EXPRESS OR IMPLIED, AS TO THE FIXadtl SCHEMA (OR THE RESULTS
TO BE OBTAINED BY THE USE THEREOF) OR ANY OTHER MATTER AND EACH SUCH
PERSON AND ENTITY SPECIFICALLY DISCLAIMS ANY WARRANTY IN RELATION TO THE
SAME, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OF ORIGINALITY,
FREEDOM FROM INFRINGEMENT, ACCURACY, COMPLETENESS, MERCHANTABILITY,
SATISFACTORY QUALITY OR FITNESS FOR A PARTICULAR PURPOSE. SUCH PERSONS
AND ENTITIES DO NOT WARRANT THAT THE FIX PROTOCOL AND/OR THE FIXadtl
SCHEMA WILL CONFORM TO ANY DESCRIPTION THEREOF OR BE FREE OF ERRORS. THE
ENTIRE RISK OF ANY USE OF THE FIX PROTOCOL AND/OR THE FIXadtl SCHEMA IS
ASSUMED BY THE USER.

NO PERSON OR ENTITY ASSOCIATED WITH THE FIX PROTOCOL AND/OR FIXadtl
SCHEMA SHALL HAVE ANY LIABILITY FOR DAMAGES OF ANY KIND ARISING IN ANY
MANNER OUT OF OR IN CONNECTION WITH ANY USER\'S USE OF (OR ANY INABILITY
TO USE) THE FIXadtl SCHEMA, WHETHER DIRECT, INDIRECT, INCIDENTAL,
SPECIAL OR CONSEQUENTIAL (INCLUDING, WITHOUT LIMITATION, LOSS OF DATA,
LOSS OF USE, CLAIMS OF THIRD PARTIES OR LOST PROFITS OR REVENUES OR
OTHER ECONOMIC LOSS), WHETHER IN TORT (INCLUDING NEGLIGENCE AND STRICT
LIABILITY), CONTRACT OR OTHERWISE, WHETHER OR NOT ANY SUCH PERSON OR
ENTITY HAS BEEN ADVISED OF, OR OTHERWISE MIGHT HAVE ANTICIPATED THE
POSSIBILITY OF, SUCH DAMAGES.

All intellectual property rights vesting in the FIXadtl SCHEMA are
strictly reserved to FIX Protocol Limited (\"FPL\"), its affiliates or
its licensors. FIXatdl is a service mark of FPL. You do not acquire any
ownership rights in the FIXatdl SCHEMA through your use of it. FPL
grants you a non-exclusive right and licence to use the FIXadtl SCHEMA
(but excluding the FIXatdl SCHEMA service mark) solely for reasonable
internal use within your organisation and/or for the purpose of
conducting your organisation\'s business. You are not permitted to
modify or create derivative works of the FIXadtl SCHEMA for any other
purpose.

© Copyright 2010 FIX Protocol Limited, all rights reserved

December 21, 2010 3 FIXatdl v1.1 with Errata 20101221

**Contents**

**[INTRODUCTION](#page5) [5](#page5)**

[AUDIENCE](#page5) [5](#page5)

**[FIXATDL SCHEMA FILES](#page6) [6](#page6)**

**[KEY CONCEPTS](#page7) [7](#page7)**

[ELEMENT HIERARCHY](#page7) [7](#page7)

[PARAMETER DESCRIPTION](#page10) [10](#page10)

[VALIDATION RULES](#page10) [10](#page10)

[GUI LAYOUT DESCRIPTION](#page12) [12](#page12)

[FLOW CONTROL RULES](#page14) [14](#page14)

[PARAMETER-TO-CONTROL BINDINGS](#page16) [16](#page16)

[TRANSPORT OF STRATEGY PARAMETERS](#page17) [17](#page17)

**[ELEMENT DEFINITIONS](#page19) [19](#page19)**

**[ATTRIBUTE DEFINITIONS](#page21) [21](#page21)**

**[PARAMETER TYPE-ATTRIBUTE MATRIX](#page41)
[[41]{.underline}~~40~~](#page41)**

**[CONTROL TYPE-ATTRIBUTE MATRIX](#page42)
[[42]{.underline}~~41~~](#page42)**

**[TYPE DEFINITIONS](#page42) [[42]{.underline}~~41~~](#page42)**

**[ABSTRACT ELEMENT EXTENSIONS](#page48)
[[48]{.underline}~~47~~](#page48)**

[PARAMETER ELEMENT EXTENSION](#page48)
[[48]{.underline}~~47~~](#page48)

[CONTROL ELEMENT EXTENSION](#page52) [[52]{.underline}~~51~~](#page52)

**[DEPENDENCIES AND STRUCTURAL CONSTRAINTS BEYOND XML SCHEMA](#page54)
[[54]{.underline}~~53~~](#page54)**

**[A SAMPLE FIXATDL DOCUMENT](#page56)
[[56]{.underline}~~55~~](#page56)**

**[APPENDIX 1 - LOCALMKTTZ TYPE](#page60)
[[60]{.underline}~~59~~](#page60)**

December 21, 2010 4 FIXatdl v1.1 with Errata 20101221

[]{#page5 .anchor}

**Introduction**

This document serves as a specification of the FIX Algorithmic Trading
Definition Language (FIXatdl), a markup language that works in
conjunction with the FIX Protocol. FIXatdl is used to define the FIX
interface of algorithmic order types. An algorithmic order interface
description consists of: a description of tags that are to be included
in FIX New Order Single, Order Cancel Request and Order Cancel/Replace
Request messages that are to be sent to an order recipient; rules for
validating the data entered into an order form by a user; suggestions on
how to render GUI controls within an order entry form; and rules
affecting the visual state of the GUI controls as information is being
entered into the order form.

Rather than describing interfaces in a natural language, such as
English, which can be subject to differing interpretations, FIXatdl
standardizes the way algorithmic interfaces are described thus reducing
interpretation errors and allowing for the creation of documents in a
machine-readable format. It is envisioned that applications supporting
this standard would be able to receive an XML document conforming to
FIXatdl and, based on the information within this document, be able to:

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

Dynamically display an order ticket containing algorithmic order
parameters.

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

Change the visual state of GUI controls based on user input.

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

Validate the values entered into the ticket before an order is
transmitted.

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

Create and transmit a FIX order message with the appropriate standard
and/or user-defined fields populated.

These capabilities are achievable without the need for custom software
development or subsequent product deployment.

**Audience**

This specification is intended for those interested in either: (1)
developing applications with FIX order entry capabilities supporting
order type definition via FIXatdl; or (2) algorithmic order providers
who wish to describe the interface to their algorithms in FIXatdl.

December 21, 2010 5 FIXatdl v1.1 with Errata 20101221

[]{#page6 .anchor}

**FIXatdl Schema Files**

A set of XML Schema files has been created to describe the structure
of a FIXatdl document instance. These files can be used with
commercial XML parsing software to validate a FIXatdl document
instance. They can also be used with XML data binding utilities to
generate source code which maps classes to XML representations. The
files are grouped into two functional categories:

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

**Data Contract** -- Defines the wire-value interface of an
algorithmic order. For each algorithm/strategy it defines the valid
set of parameters and availability of the strategy for specific
markets. For each parameter of an algorithm/strategy it defines the
type; the legal range of values (including minimum and maximum
values); whether it is optional or required; and value constraints
based on certain conditions or the value of other parameters
(validation rules).

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

**GUI** -- Defines the recommended GUI controls that should be
rendered on the order entry screen and their location on the screen.
Defines the rules that affect the state of a GUI control. Provides a
mapping of the on screen controls with the parameters of the data
contract.

The constructs of the schema files have been categorized this way to
ensure that the data contract is de-coupled from the GUI. This
provides some flexibility for E/OMS vendors in how FIXatdl is applied.
For example, data contract functions, such as parameter validation,
may be performed in an application downstream from the E/OMS without
the need for the XML that describes the GUI.

The FIXatdl language definition, ver. 1.1, is contained within six XML
Schema files:

+------------------------+---+---+------------------------+---+---+
| **XML Schema file /  |   |   | **Purpose**            |   |   |
| namespace**          |   |   |                        |   |   |
+========================+===+===+========================+===+===+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
| fixatdl-core-1-1.xsd |   |   | Data: Defines          |   |   |
|                        |   |   | attributes and         |   |   |
|                        |   |   | elements that are used |   |   |
|                        |   |   | to describe the        |   |   |
+------------------------+---+---+------------------------+---+---+
|                      |   |   | data content of the    |   |   |
|  http://www.fixprotoco |   |   | algorithm and the      |   |   |
| l.org/FIXatdl-1-1/Core |   |   | parameters.            |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
| fixa                 |   |   | Data: Defines          |   |   |
| tdl-validation-1-1.xsd |   |   | attributes and         |   |   |
|                        |   |   | elements used to       |   |   |
|                        |   |   | author rules that are  |   |   |
+------------------------+---+---+------------------------+---+---+
| http:                |   |   | applied to the         |   |   |
| //www.fixprotocol.org/ |   |   | parameter values as a  |   |   |
| FIXatdl-1-1/Validation |   |   | validation check.      |   |   |
|                        |   |   | These rules            |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   | can be simple where    |   |   |
|                        |   |   | boundary conditions    |   |   |
|                        |   |   | are checked, or        |   |   |
|                        |   |   | complex                |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   | where compound boolean |   |   |
|                        |   |   | expressions involving  |   |   |
|                        |   |   | several parameters     |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   | are evaluated.         |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                      |   |   | GUI: XML constructs to |   |   |
| fixatdl-layout-1-1.xsd |   |   | describe how a         |   |   |
|                        |   |   | parameter should be    |   |   |
+------------------------+---+---+------------------------+---+---+
| h                    |   |   | rendered within a user |   |   |
| ttp://www.fixprotocol. |   |   | interface -- this      |   |   |
| org/FIXatdl-1-1/Layout |   |   | includes               |   |   |
|                        |   |   | recommendations        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   | about GUI controls and |   |   |
|                        |   |   | their relative         |   |   |
|                        |   |   | location within the    |   |   |
|                        |   |   | interface.             |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
| fixatdl-flow-1-1.xsd |   |   | GUI: Provides the      |   |   |
|                        |   |   | ability to dynamically |   |   |
|                        |   |   | affect the behavior of |   |   |
|                        |   |   | a                      |   |   |
+------------------------+---+---+------------------------+---+---+
|                      |   |   | GUI control. Rules can |   |   |
|  http://www.fixprotoco |   |   | be created to enable   |   |   |
| l.org/FIXatdl-1-1/Flow |   |   | or disable parameters  |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   | based on values        |   |   |
|                        |   |   | entered by the user in |   |   |
|                        |   |   | other parameters.      |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
| f                    |   |   | Data: Enumeration      |   |   |
| ixatdl-regions-1-1.xsd |   |   | values for countries   |   |   |
|                        |   |   | within three regions:  |   |   |
+------------------------+---+---+------------------------+---+---+
| ht                   |   |   | TheAmericas,           |   |   |
| tp://www.fixprotocol.o |   |   | EuropeMiddleEastAfrica |   |   |
| rg/FIXatdl-1-1/Regions |   |   | and AsiaPacificJapan.  |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
| fix                  |   |   | Data: Lists            |   |   |
| atdl-timezones-1-1.xsd |   |   | enumeration values for |   |   |
|                        |   |   | world timezones based  |   |   |
|                        |   |   | on                     |   |   |
+------------------------+---+---+------------------------+---+---+
| http                 |   |   | zoneinfo database.     |   |   |
| ://www.fixprotocol.org |   |   |                        |   |   |
| /FIXatdl-1-1/Timezones |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+
|                        |   |   |                        |   |   |
+------------------------+---+---+------------------------+---+---+

December 21, 2010 6 FIXatdl v1.1 with Errata 20101221

[]{#page7 .anchor}

**Key Concepts**

**Element Hierarchy**

The FIXatdl schema provides a set of XML elements that are used to
create a conforming FIXatdl document. These elements are described later
in this section. The attributes of each of these elements are described
in latter in this document.

In a FIXatdl document an algorithm provider can define any number of
algorithmic order interfaces by using multiple Strategy elements. Each
strategy is identified by a unique name that must be provided in the XML
of each of the Strategy elements. Instances of documents begin with the
root element, Strategies, and follow the hierarchy:

\<Strategies\>

\<Strategy\>

... strategy definition ...

\</Strategy\>

\<Strategy\>

... strategy definition ...

\</Strategy\>

. . .

\<Strategy\>

... strategy definition ...

\</Strategy\>

\</Strategies\>

At the root level, the algorithm provider must specify which tag to use
to identify the individual strategies. (At one time TargetStrategy (tag
847) was intended to carry this information. However, most providers use
a user-defined field for this purpose.) For example to indicate that tag
5009 will be used to identify strategies the Strategies element would be
written as

\<Strategies strategyIdentifierTag="5009"/\>

Parameters for each strategy are defined via Parameter elements.
Validation rules are defined via StrategyEdit elements. Each strategy
can have any number of parameters or validation rules. An algorithm can
have only one section where the layout of the controls is defined. A
layout is defined via the StrategyLayout element. So if we look deeper
into the strategy definition we‟ll see that it follows the hierarchy:

\<Strategy\>

\<Parameter\>
>
\<Parameter\>
>
. . .
>
\<Parameter\>
>
\<StrategyEdit\>
>
\<StrategyEdit\>
>
. . .
>
\<StrategyEdit\>
>
\<StrategyLayout\>

December 21, 2010 7 FIXatdl v1.1 with Errata 20101221

\</Strategy\>

The following figure shows the hierarchy of elements in tree form
starting from the root element, Strategies. The XML Schema values
minOccurs and maxOccurs are given for each branch of the tree. Elements
with optional or required child elements are indicated by double-line
borders. Elements with no children (leaf nodes) have single-line
borders. Abstract elements, ones which require the use of a substitution
group, are shaded. The elements, Parameter, StrategyLayout and
StrategyEdit are somewhat complex; the hierarchy of their children is
shown in figures 2 through 4.

<table>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Strategies</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>1..inf</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>0..inf</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Description</td>
<td></td>
<td></td>
<td></td>
<td>Strategy</td>
<td></td>
<td></td>
<td></td>
<td>Edit</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td><blockquote>
<p>0..inf</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>Regions</td>
<td></td>
<td>Markets</td>
<td></td>
<td><blockquote>
<p>Edit</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Description</td>
<td></td>
<td></td>
<td></td>
<td>RepeatingGroup</td>
<td></td>
<td>SecurityTypes</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>1..3</td>
<td></td>
<td></td>
<td>1..inf</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>1..inf</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>Region</td>
<td></td>
<td>Market</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>1..inf</td>
<td></td>
<td>SecurityType</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Description</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Parameter</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>0..inf</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Country</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>0..inf</p>
</blockquote></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>0..inf</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Parameter</td>
<td></td>
<td></td>
<td>StrategyLayout</td>
<td></td>
<td></td>
<td>StrategyEdit</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

***Figure 1: Root Element Hierarchy***

The following figure gives the hierarchy of elements descending from the
Parameter element.

Parameter
>
0..1
>
Description
>
0..inf

EnumPair

***Figure 2: Parameter Hierarchy***

The following figure gives the hierarchy of elements descending from the
StrategyLayout element. This element is responsible for binding GUI
controls to parameters and describing their arrangement on the
order-entry screen.

December 21, 2010 8 FIXatdl v1.1 with Errata 20101221

<table>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>StrategyLayout</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>StrategyPanel</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><blockquote>
<p>1..inf</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>1..inf</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>StrategyPanel</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Control</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>0..1</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>0..inf</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>HelpText</td>
<td></td>
<td></td>
<td>StateRule</td>
<td></td>
<td></td>
<td>ListItem</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>0..1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>xor</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>Description</td>
<td></td>
<td></td>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td>1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Edit</td>
<td></td>
<td></td>
<td>EditRef</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

***Figure 3: StrategyLayout Hierarchy***

The following figure shows the StrategyEdit hierarchy. This element is
used to describe validation rules which are applied to the values of a
strategy‟s parameters at order-generation time. Each StrategyEdit must
contain a single Edit element (may contain further nested Edit rules)
which is used to describe a particular condition that must be met in
order to pass validation.

StrategyEdit

  ------------- ------ -- -- ------ -- -- --- --------- -- -- -- ---

                                              xor                
                0..1                      1                      1
  Description                Edit             EditRef            


  ------------- ------ -- -- ------ -- -- --- --------- -- -- -- ---

***Figure 4: StrategyEdit Hierarchy***

December 21, 2010 9 FIXatdl v1.1 with Errata 20101221

[]{#page10 .anchor}

**Parameter Description**

The interface of an algorithmic order type is described by a set of FIX
messages, the required, optional and user-defined fields of those
messages, and user-defined restrictions on the range of values for
particular fields. In general, when we speak of the parameters of an
algorithmic order we are, in fact, referring to the user-defined fields
of a New Order Single, Order Cancel Request or Order Cancel/Replace
Request. (In some cases a parameter may also refer to a standard FIX
field, one with a tag number in the range 1-5000, that broker-dealers
commonly included in their algorithmic interface specifications, such as
EffectiveTime (tag 168) and ExpireTime (tag 128).)

Parameters are strictly described in FIXatdl by the target firm who will
receive them (*order recipients*), and are communicated via an XML file
to various senders (*order initiators*). To describe these parameters,
FIXatdl provides the Parameter element. Parameter elements are
identified by their "name" attribute. There is no limit to the number of
parameters a strategy may have as long as each is uniquely identified at
the strategy level. Besides a parameter‟s name, other parameter
attributes include: its type; its maximum and minimum values (if
applicable); its corresponding FIX tag number; and its usage (optional
vs. required). For example, the following code snippet describes an
integer type parameter:

\<Parameter name="SampleRate" xsi:type="Int\_t" fixTag="8000"
use="optional" minValue="1" maxValue="9"/\>

This listing describes a parameter named "SampleRate" which can
optionally be populated in tag 8000 of an Order message. The attributes
"minValue" and "maxValue" describes the minimum and maximum values that
the recipient of an Order messages is expecting. Orders with SampleRate
values outside that range may be rejected. The attribute "xsi:type"
describes the parameter‟s type which must be one of the datatypes
specified by the FIX Protocol. FIXatdl provides enumeration values for
xsi:type that map directly to the FIX datatypes. (An explanation of
xsi:type can be found in this document in the section entitled "Abstract
Element Extensions".)

For certain parameters it may be appropriate to limit the legal values
to a set of enumerated values. This is done by adding child EnumPair
elements to the Parameter element. Each EnumPair represents one of the
enumerated values expected to be transmitted over the wire. For example:

\<Parameter name="Aggression" xsi:type="Char\_t" fixTag="8001"
use="required"\\<EnumPair enumID="low" wireValue="L"/\>
>
\<EnumPair enumID="medium" wireValue="M"/\>
>
\<EnumPair enumID=‟high" wireValue="H"/\>

\</Parameter\>

This describes the "Aggression" parameter. An order recipient would
expect to receive one of the values, "L", "M" or "H" in tag 8001 of an
Order message. The attribute EnumPair/\@enumID is a unique identifier of
EnumPair elements.

If a user of an order-entry system were to submit an order with
"SampleRate" set to 5 and "Aggression" set to "high", the order
recipient would expect to receive a FIX message containing a substring
similar to:

...35=D\|11=0001\|55=AXP\|44=77.25\| ... 8000=5\|8001=H ...

**Validation Rules**

Validation rules are defined by use of the StrategyEdit element. This
XML element enables the creation of complex and conditional rules which
can be applied to the orders generated by an E/OMS. The goal of a
validation rule is to process the

December 21, 2010 10 FIXatdl v1.1 with Errata 20101221

values of the strategy parameters after they have been entered by the
user. Each validation rule consists of a condition and an error message.
If the condition is true then the values of the parameters are valid. If
the condition is false then the values of the parameters are invalid and
the provided error message should be displayed. That is to say,
validation conditions are much like assertions. When an assertion has
failed an error has occurred.

The conditions described within a validation rule are defined by use of
the Edit element. An Edit element defines a Boolean expression where
values of parameters can be compared to one another or to constant
values.

To illustrate, consider the most common parameters of all algorithms,
StartTime and EndTime. Their description and a rule guaranteeing that
StartTime precedes EndTime can be described by the following statements:

\<Parameter name="StartTime" xsi:type="UTCTimestamp\_t" fixTag="8005"
use="required"/\\<Parameter name="EndTime" xsi:type="UTCTimestamp\_t"
fixTag="8006" use="required"/\\<StrategyEdit errorMessage=\"Start Time
must precede End Time.\"\>

\<Edit field=\"StartTime\" operator=\"LT\" field2="EndTime"/\>

\</StrategyEdit\>

Here we have defined both StartTime and EndTime as UTCTimestamp
parameters. At validation time, the rule described in StrategyEdit
instructs the E/OMS to perform an evaluation of the Boolean expression
provided by the Edit element. In this case a comparison of StartTime and
EndTime will be made using the "LT" (less than) operator. If StartTime
is less than EndTime then the parameter values are deemed to be valid.
However, if StartTime is greater than or equal to EndTime then the
parameter values are invalid and the E/OMS can inform the user by
displaying the error message in a dialog box.

For more complex rules, Boolean expression may be formed by multiple
Edit elements organized in an expression tree using logical operators
AND, OR, XOR and NOT. For example consider these declarations:

\<Parameter name="ParticipationRate" xsi:type="Float\_t" fixTag="8008"
use="optional"/\\<StrategyEdit errorMessage=\"If Participation Rate is
entered it must be between 1 and 50\"\>

\<Edit logicOperator="OR"\>
>
\<Edit field=\"ParticipationRate\" operator=\"NX\"/\>
>
\<Edit logicOperator="AND"\>
>
\<Edit field=\"ParticipationRate\" operator=\"GE\" value=\"1\"/\>
>
\<Edit field=\"ParticipationRate\" operator=\"LE\" value=\"50\"/\>
>
\</Edit\>

\</Edit\>

\</StrategyEdit\>

Here we see a tree of Edit elements. The root Edit element is describing
a logical "OR" condition asserting that either ParticipationRate was not
provided or its value is in the range from 1 to 50. Note how in the
"AND" expression a parameter value is compared not to another parameter
but to a constant value.

Also note that the logical operators, AND and OR, can have more than two
operands. Furthermore, they both perform short-circuit evaluation of
their operands. [(I.e. their operands are evaluated from left to right.
As soon as the value is]{.underline} [known, evaluation of the
expression stops and the value is returned. Consequently, not all
operands need to be evaluated. For example, consider the previous
example in which "ParticipationRate" is an optional parameter. It is
quite possible that the user does not provide a value for
"ParticipationRate". If that is the case then evaluation of the "OR"
statement will terminate after it is established that its first operand,
\<Edit field="ParticipationRate" operator="NX"/\>, is true. The "AND"
statement that follows is never evaluated -- which is a good result
since, if we had attempted to evaluate it, it is]{.underline}

December 21, 2010 11 FIXatdl v1.1 with Errata 20101221

[]{#page12 .anchor}

[quite possible that a]{.underline} ["Null Reference"]{.underline}
[error would occur.)]{.underline} That being the case, it is important
that XML parsing or binding libraries maintain the order of the elements
as they appear; otherwise unexpected results may occur.

[The logical operator XOR can also have more than two operands. As a
convention we define XOR as "one and only one",]{.underline} which means
it evaluates to "true" when one and only one of its operands is true. If
none or more than one of its operands [is true then XOR is false.
Short-circuit evaluation cannot be applied to XOR.]{.underline}

The "field" attribute of an Edit element is not restricted to strategy
parameters. Standard order tags (those not described in a FIXatdl
instance but nevertheless are required tags of order, cancel and
cancel/replace messages) may also be used to create Boolean expressions.
For example:

\<StrategyEdit errorMessage=\"For IOC orders Participation Rate must
be between 1 and 25\"\\<Edit logicOperator="OR"\>
>
\<Edit field="FIX\_TimeInForce" operator="NX"/\>
>
\<Edit field=\"FIX\_TimeInForce\" operator=\"NE\" value=\"3\"/\>
>
\<Edit logicOperator="AND"\>
>
\<Edit field=\"ParticipationRate\" operator=\"GE\" value=\"1\"/\>
>
\<Edit field=\"ParticipationRate\" operator=\"LE\" value=\"25\"/\>
>
\</Edit\>

\</Edit\>

\</StrategyEdit\>

This rule incorporates the value of TimeInForce which is a standard tag
found in most order messages. The values associated with standard tags
are those that are sent over the wire. For example, TimeInForce is an
enumeration of char values ranging from "1" to "7". So care must be
taken to assure the corresponding operand, "value", is of a similar
type. Support for these types of expressions is highly dependent on a
vendor‟s implementation of FIXatdl. Not all standard tags may be
available.

In cases where the field attribute is not recognized or not supported,
the rule containing the offending Edit element should be skipped-over by
a vendor‟s application and should not cause a validation error. The
end-result will be the same as if the condition of the rule were true.

**GUI Layout Description**

In order to render a parameter within an order entry screen, an OMS must
be able to pick an appropriate GUI control to display. For instance, a
parameter representing a price would best be rendered as a number
spinner control while a parameter representing a choice between limited
numbers of values, such as "High", "Medium" and "Low", would best be
rendered as a combo box.

Once the GUI controls have been selected, the OMS must appropriately
arrange them on the screen. By using the elements and attributes of the
Layout Schema, an algorithm provider can describe the GUI controls to
use and describe how they should be arranged on the screen.

FIXatdl does not attempt to dictate user-interface style or
look-and-feel. It is designed to be platform neutral. The components
that are provided are those typically found in .Net, Java and Web
environments.

December 21, 2010 12 FIXatdl v1.1 with Errata 20101221

The layout schema allows GUI controls to be arranged by adding them to a
container define by the StrategyPanel element. Controls within a panel
may be arranged either vertically or horizontally. Panel themselves may
be nested and arranged either vertically or horizontally as well. The
attributes of the StrategyPanel element include

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

**Title** -- a string representing the panel title which may or may
not be displayed

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

**Collapsible** -- a Boolean value indicating whether the panel can be
collapsed.

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

**Collapsed** -- a Boolean value indicating the panel‟s initial state.

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

**Orientation** -- defines whether the panel‟s components should be
vertically or horizontally aligned.

An important aspect of the GUI description is that it is platform
neutral. The algorithm provider describes GUI controls without knowing
how an E/OMS has been implemented or knowledge of the widget toolkit
that it uses. The controls provided by FIXatdl are those typically found
in .Net, Java or Web environments. (The initial intention was to adopt a
standard such as XAML or XUL. However, it was believed that this would
put an excessive constraint on the E/OMS vendors. So a conscious
decision was made not to adopt any one of these languages. Instead
FIXatdl presents its own with the understanding that a vendor may extend
or transform it to be aligned with their architecture and internal data
structures.)

Most Controls are associated with a particular Parameter. This is done
via the Control attribute, parameterRef. However some controls may not
have an associated Parameter. These controls are typically defined in
order to affect the state of other controls via the use of a StateRule.

The following listing describes four parameters and the layout of their
four associated controls. (Key identifiers have been highlighted.) If we
examine the code we‟ll notice that the controls are enclosed in two
StrategyPanels, one entitled "Time Parameters" and the other entitled
"Advanced". These two panels are nested horizontally into the top-level
StrategyPanel of the StrategyLayout element.

\<Parameter name="StartTime" xsi:type="UTCTimestamp\_t" fixTag="8005"
use="required"/\\<Parameter name="EndTime" xsi:type="UTCTimestamp\_t"
fixTag="8006" use="required"/\\<Parameter name="ParticipationRate"
xsi:type="Float\_t" fixTag="8007" use="optional"/\\<Parameter
name="Aggression" xsi:type="Char\_t" fixTag="8001" use="required"\>

\<EnumPair enumID="e\_low" wireValue="L"/\>
>
\<EnumPair enumID="e\_med" wireValue="M"/\>
>
\<EnumPair enumID="e\_high" wireValue="H"/\>

\</Parameter\>

\<StrategyLayout\>

\<StrategyPanel orientation="HORIZONTAL"\>
>
\<StrategyPanel title="Time Parameters" orientation="VERTICAL"\>
>
\<Control ID="c\_ST" xsi:type="Clock\_t" label="Start Time"
parameterRef="StartTime"/\\<Control ID="c\_ET" xsi:type="Clock\_t"
label="End Time" parameterRef="EndTime"/\>
>
\</StrategyPanel\>
>
\<StrategyPanel title="Advanced" orientation="VERTICAL"\>
>
\<Control ID="c\_PR" xsi:type="SingleSpinner" label="Partic. Rate"
parameterRef="ParticipationRate"/\\<Control ID="c\_A"
xsi:type="DropDownList\_t" label="Aggression"
parameterRef="Aggression"\>
>
\<ListItem enumID="e\_low" uiRep="Low"/\>
>
\<ListItem enumID="e\_med" uiRep="Medium"/\>
>
\<ListItem enumID="e\_high" uiRep="High"/\>
>
\</Control\>
>
\</StrategyPanel\>
>
\</StrategyPanel\>

\</StrategyLayout\>

December 21, 2010 13 FIXatdl v1.1 with Errata 20101221

[]{#page14 .anchor}

Notice how the Parameter/\@name attributes match with the
Control/\@parameterRef attributes. This creates the binding between
parameters and controls. Also note how the EnumPair/\@EnumID attributes
match with the ListItem/\@EnumID attributes. This creates the binding
between the enumeration values of the parameter and the items of a
drop-down list.

If an application were to render this information on an order ticket it
would have to decide which GUI controls to instantiate and find a way to
insert them into panels and lay the panels out according to the
instructions of the XML. Different platforms will have different
controls and panels available for this purpose and the application built
on these platforms will have different appearances. So, a rendering of
the controls described in the previous listing may look similar to the
following image:

![](media/image3.jpeg){width="3.622916666666667in"
height="1.0618055555555554in"}

**Flow Control Rules**

Interdependencies among standard FIX tags affecting their applicability
are quite common. For example, Price (44) is not applicable when OrdType
(40) is set to Market. The same can be said for algorithmic order types
and their parameters. Many algorithmic order types will have parameters
whose applicability is dependent on the value of one or more other
parameters. These rules are often listed in algorithmic order
specifications in the comments column of tables that describe the
parameters of the algorithm.

In order to standardize the way these rules are described we have
provided a sub-schema which contains elements and attributes used to
define rules that can be applied to the visual state of GUI Controls.
This capability is a means to direct the user‟s workflow and this is why
it has been called "flow control". When creating flow-control rules the
expectations are that they are evaluated every time a Control‟s value
has changed. Based on the outcome of the evaluations, certain GUI
controls may become grayed-out or hidden as the user enters values into
text fields or selects items from drop-down lists.

Flow-control rules can be described via the StateRule element. A
StateRule will consist of a Boolean expression and an action to take
when the Boolean expression is true. There are three actions that are
supported: (1) change the "enabled" state of a control to either True or
False; (2) change the "visible" state of a control to either True or
False; and (3) change the current value of the control to a supplied
value. (Supplied values may be a constant string value, an enumID, or
the special token {NULL}.)

As with validation rules, flow-control rules employ the Edit element to
describe the condition (or Boolean expression). However, when an Edit is
used in a Flow-control rule, it will not make comparisons of parameter
values; rather it will compare the values returned by the controls. For
example, the attributes Edit/\@field and Edit/\@field2 will refer to
either control values or constant values.

Another difference between validation rules and flow-control rules is
that the action of a flow-control rule is performed when the condition
it describes is true. This differs from validation rules, where the
action of "raising an error" occurs when the condition is false.

December 21, 2010 14 FIXatdl v1.1 with Errata 20101221

To illustrate the description of a Flow-control rule consider the
following code snippet. (Note how the highlighted Control/\@ID attribute
matches the highlighted Edit/\@field attribute and how the highlighted
enumID attribute matches the highlighted value attribute):

\<Parameter name="AlphaMode" xsi:type="Int\_t" fixTag="8300"
use="required"\\<EnumPair enumID="e\_Annual" wireValue="1"/\>
>
\<EnumPair enumID="e\_Daily" wireValue="2"/\>
>
\<EnumPair enumID="e\_Custom" wireValue="3"/\>

\</Parameter\>

\<Parameter name="CustomValue" xsi:type="Float\_t" fixTag="8301"
use="optional"/\\<StrategyLayout\>

\<StrategyPanel orientation="HORIZONTAL"\>
>
\<Control ID="c\_AlphaMode" xsi:type="DropDownList" label="Alpha
Benchmark" parameterRef="AlphaMode"\\<ListItem enumID="e\_Annual"
uiRep="Annual"/\>
>
\<ListItem enumID="e\_Daily" uiRep="Daily"/\>
>
\<ListItem enumID="e\_Custom" uiRep="Custom"/\>
>
\</Control\>
>
\<Control ID="c\_CustomValue" xsi:type="SingleSpinner\_t"
label="Custom Alpha" parameterRef="CustomValue"\\<StateRule
enabled="true"\>
>
\<Edit field="c\_AlphaMode" operator="EQ" value="e\_Custom"/\>
>
\</StateRule\>
>
\<StateRule value="{NULL}"\>
>
\<Edit field="c\_AlphaMode" operator="NE" value="e\_Custom"/\>
>
\</StateRule\>
>
\</Control\>
>
\</StrategyPanel\>

\</StrategyLayout\>

In this listing we have defined two parameters, "AlphaMode" and
"CustomValue". We have also defined two controls corresponding to the
parameters. A rule has been supplied to the control identified by
"c\_CustomValue" governing its visual behavior. The rule should be
interpreted as: "The control c\_CustomValue is enabled only when the
value of control c\_AlphaMode has been set to "Custom". So a user who
selects "Annual" or "Daily" would not able to enter a custom Alpha
value. Only when "Custom" is selected from the dropdown list would the
custom Alpha control be able to accept values entered by the user.

While StateRules are explicit in defining the changes to a control when
the condition, described by its Edit element, makes the transition from
being false to being true, it is not clear what changes to make when the
condition becomes false again (or is initially false). So, to clarify
the behavior of the controls, the following conventions are applied:

i.  A StateRule that changes the "enabled" property of a control to X
    when its condition becomes true, will implicitly cause the
    "enabled" property of the control to change to NOT(X) when its
    condition becomes false, where X is Boolean. (The \"enabled\"
    property simply controls whether or not the value within the
    control can be changed (is read-only) and is not a determining
    factor in whether or not the control\'s value is to be included in
    the message transmitted over the wire.)

ii. A StateRule that changes the "visible" property of a control to X
    when its condition becomes true, will implicitly cause the
    "visible" property of the control to change to NOT(X) when its
    condition becomes false, where X is Boolean.

iii. A StateRule that changes the value of a control when its condition
     becomes true will cause no action to take place when its
     condition becomes false. Provided the vale expressed in the
     StateRule element is not the special token "{NULL}".

December 21, 2010 15 FIXatdl v1.1 with Errata 20101221

[]{#page16 .anchor}

iv. A StateRule that changes the value of a control to "{NULL}" when its
    condition becomes true will cause the control‟s value to revert
    back to its previous non-{NULL} value or its initial value.

Note that due to (iv), when a StateRule condition becomes false it may
cause the control to become un-initialized. When this occurs the control
will have no value. Should a New Order Single, Order Cancel Request or
Order Cancel/Replace Request message be generated while the control is
in this condition, the associated parameter will not be included in that
message.

Also note that the state of a control‟s enabled property or visible
property does not influence whether the control‟s associated parameter
is sent on the wire or not. This behavior is governed entirely by the
control‟s value. To clarify this, we must adhere to another convention:

v.  To the extent that a control‟s value determines the "wire-value" of
    a particular parameter, if the control is un-initialized or has
    been set to the value of "{NULL}" then the associated parameter
    will not have a "wire-value" and will not have its tag-value pair
    included in a New Order Single, Order Cancel Request or Order
    Cancel/Replace Request message.

In other words, if a user enters a value into a control and subsequently
the control becomes disabled then the value that was entered would cause
a tag to be populated in the generated FIX message and the value would
go out over the wire. This is why, in the previous listing, a second
StateRule was required:

\<StateRule value="{NULL}"\>
>
\<Edit field="c\_AlphaMode" operator="NE" value="e\_Custom"/\>
>
\</StateRule\>

If this rule had not been provided, a "CustomValue" parameter (tag 8301)
would be transmitted on the wire if the user had entered a value into
the spinner and then selected "Daily" or "Annual" from the drop-down
list.

**Parameter-to-Control Bindings**

In order for an E/OMS to generate an order message it must iterate
through all the parameters, find the associated controls, retrieve the
control values and determine appropriate values with which to populate
the custom FIX tags of the order message. In order for this to be
accomplished FIXatdl provides a means for relating controls to
parameters, mainly, the parameterRef attribute of the Control element.
This attribute is set to the value of a Parameter‟s name attribute, thus
providing a binding between the two.

Bindings of controls to parameters may be either one-to-one, where one
control is bound to one parameter, or many-to-one, where multiple
controls are bound to one parameter. (The only cases of many-to-one
bindings involve groups of radio buttons. All other bindings are
one-to-one.)

When a binding of a control to a parameter is declared it must be
possible for the control‟s value to be converted to a legal wire-value
of the control. For example, it makes little sense for a checkbox
control to be bound to a floating point parameter. Rather, a checkbox is
more logically fit to be bound to a Boolean parameter.

Not all parameters need an associated control. Some parameters are
intended to act as constants and have no GUI control representation. The
FIX tags of the parameters are expected to be populated with the same
value in every order message regardless of the values of other
parameters. When this is the case, an attribute of the Parameter
element, constValue, is used to indicate that the parameter is a
constant and provides the value, as in the following listing.

December 21, 2010 16 FIXatdl v1.1 with Errata 20101221

[]{#page17 .anchor}

\<Parameter name="ExecService" xsi:type="Char\_t" fixTag="9050"
constValue="A"/\>

Based on this description of "ExecService" the order recipient would
expect to receive a FIX message containing the substring "9050=A".

Conversely, it is also the case that not all control need to be bound to
a parameter. Controls with no declared parameterRef attribute are
considered helper controls. They are used to manage the state of other
controls via the use of flow-control rules. For example, the following
listing describes two controls -- a helper control and a control bound
to some integer parameter named "CrossQty".

\<Control ID="EnableCross" xsi:type="CheckBox\_t" label="Enable Cross"
initValue=false/\\<Control ID="CrossQty" xsi:type="SingleSpinner\_t"
label="Cross Qty" parameterRef="CrossQty"\>

\<StateRule enable="true"\>
>
\<Edit field="EnableCross" operator="EQ" value="true"/\>
>
\</StateRule\>

\</Control\>

For a strategy rendered from this description, the user would not be
able to enter a value into the CrossQty spinner control unless the
EnableCross checkbox is checked.

**Transport of Strategy Parameters**

The FIX Protocol allows algorithmic order parameters to be transported
between parties either by use of the StrategyParametersGrp repeating
group or by use of user-defined tags mutually agreed upon by the order
originator and order recipient. FIXatdl provides a means for the order
recipient to inform the order originator which of these methods to use.

An algorithmic order provider indicates that it can receive parameters
through the StrategyParametersGrp component block (tags 957-960) by
setting the attribute of the Strategies element, tag957Support, to true.
The recipient can also indicate that it is able to receive parameters
via user-defined tags by proving values for the fixTag attributes of
each Parameter element. An algorithmic order provider may support both
transport methods.

To illustrate, consider the following listing:

\<Strategies strategyIdentifierTag=\"7000\"
versionIdentifierTag=\"7001\" tag957Support="true"\\<Strategy
name=\"POV\" uiRep=\"POV\" wireValue=\"v\" version=\"1\"
fixMsgType=\"D\"\>
>
\<Parameter name="PctVol" xsi:type="Percentage\_t" fixTag="7002"
use="required"/\\<Parameter name="FC" xsi:type="Boolean\_t"
fixTag="7003" use="required"/\\<StrategyLayout\>
>
\<StrategyPanel\>
>
\<Control ID="c\_PctVol" xsi:type="SingleSpinner\_t" label="Pct of
Volume" parameterRef="PctVol"/\\<Control ID="c\_FC"
xsi:type="CheckBox\_t" label="Force Completion" parameterRef="FC"/\>
>
\</StrategyPanel\>
>
\</StrategyLayout\>
>
\</Strategy\>

\</Strategies\>

This document instance describes an algorithm with two parameters,
PctVol and ForceCompletion. The algorithm provider has also indicated
that it supports receipt of these parameters via StrategyParametersGrp
and via the custom tags, 7002 and 7003. So an E/OMS would be free to
choose between the two methods when it transmits the parameters. If this

December 21, 2010 17 FIXatdl v1.1 with Errata 20101221

were to be rendered by an E/OMS and a user was to enter a PctVol value
of 0.15 and check the Force Completion checkbox, then the order
generated may contain a substring similar to:
>
. . 35=D\|11=1234\|55=AXP\|. .
\|7000=v\|7001=1\|957=2\|958=PctVol\|959=11\|960=0.15\|958=FC\|959=13\|960=Y
>
In this case the E/OMS has decided to use the StrategyParametersGrp
repeating group. If tag957Support were set to false then the E/OMS
would be forced to use the UDFs, 7002 and 7003, as in:
>
. . 35=D\|11=1234\|55=AXP\|. . \|7000=v\|7001=1\|7002=0.15\|7003=Y
>
The general rule for determining which method to use is as follows.

+--------------------+--------------------+---+--------------------+
|                  | **fixTag         |   | **Method for       |
|  **tag957Support** | attributes       |   | transmitting       |
|                    | provided**       |   | parameters**       |
+====================+====================+===+====================+
|                    |                    |   |                    |
+--------------------+--------------------+---+--------------------+
| true             | no               |   | Str                |
|                    |                    |   | ategyParametersGrp |
+--------------------+--------------------+---+--------------------+
|                    |                    |   |                    |
+--------------------+--------------------+---+--------------------+
| true             | yes              |   | Str                |
|                    |                    |   | ategyParametersGrp |
|                    |                    |   | or UDFs (but never |
|                    |                    |   | both)              |
+--------------------+--------------------+---+--------------------+
|                    |                    |   |                    |
+--------------------+--------------------+---+--------------------+
| false            | yes              |   | UDFs               |
+--------------------+--------------------+---+--------------------+
|                    |                    |   |                    |
+--------------------+--------------------+---+--------------------+
| false            | no               |   | (Not allowed -- at |
|                    |                    |   | least one method   |
|                    |                    |   | must be specified) |
+--------------------+--------------------+---+--------------------+
|                    |                    |   |                    |
+--------------------+--------------------+---+--------------------+

December 21, 2010 18 FIXatdl v1.1 with Errata 20101221

[]{#page19 .anchor}

**Element Definitions**
>
A high-level description of the elements is provided in the following
table.

+-----------------+-----------------+---+-----------------+---+---+
| **Element     | **Parent      |   | **Description** |   |   |
| Name**        | Element(s)**  |   |                 |   |   |
+=================+=================+===+=================+===+===+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| Country       | Region        |   | An element used |   |   |
|                 |                 |   | to build a list |   |   |
|                 |                 |   | of countries    |   |   |
|                 |                 |   | that may be     |   |   |
|                 |                 |   | included or     |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | excluded from a |   |   |
|                 |                 |   | region. Its     |   |   |
|                 |                 |   | attribute,      |   |   |
|                 |                 |   | CountryCode,    |   |   |
|                 |                 |   | contains an ISO |   |   |
|                 |                 |   | 3166-           |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | 1 alpha-2 code. |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| Description   | Parameter,    |   | Text providing  |   |   |
|                 |                 |   | a description   |   |   |
|                 |                 |   | of its parent   |   |   |
|                 |                 |   | element.        |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |               |   |                 |   |   |
|                 | RepeatingGroup, |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 | Strategies,   |   |                 |   |   |
|                 | Strategy      |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| Edit          | StrategyEdit, |   | Boolean         |   |   |
|                 |                 |   | expression      |   |   |
|                 |                 |   | evaluated in    |   |   |
|                 |                 |   | validation and  |   |   |
|                 |                 |   | flow control    |   |   |
|                 |                 |   | rules. An       |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 | StateRule,    |   | Edit element    |   |   |
|                 |                 |   | will describe a |   |   |
|                 |                 |   | condition that  |   |   |
|                 |                 |   | is either true  |   |   |
|                 |                 |   | or false.       |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 | Strategies,   |   | An Edit element |   |   |
|                 | Strategy      |   | is most         |   |   |
|                 |                 |   | commonly used   |   |   |
|                 |                 |   | within          |   |   |
|                 |                 |   | StrategyEdit    |   |   |
|                 |                 |   | and             |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | StateRule       |   |   |
|                 |                 |   | elements where  |   |   |
|                 |                 |   | its scope is    |   |   |
|                 |                 |   | limited to its  |   |   |
|                 |                 |   | parent element. |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | However, when   |   |   |
|                 |                 |   | an Edit is      |   |   |
|                 |                 |   | child of a      |   |   |
|                 |                 |   | Strategy        |   |   |
|                 |                 |   | element, its    |   |   |
|                 |                 |   | scope extends   |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | the entire      |   |   |
|                 |                 |   | Strategy and    |   |   |
|                 |                 |   | can be          |   |   |
|                 |                 |   | reference by    |   |   |
|                 |                 |   | the child       |   |   |
|                 |                 |   | StateRule and   |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | StrategyEdit    |   |   |
|                 |                 |   | elements of the |   |   |
|                 |                 |   | Strategy        |   |   |
|                 |                 |   | element. When   |   |   |
|                 |                 |   | an Edit is a    |   |   |
|                 |                 |   | child of        |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | the Strategies  |   |   |
|                 |                 |   | element, its    |   |   |
|                 |                 |   | scope extends   |   |   |
|                 |                 |   | the entire XML  |   |   |
|                 |                 |   | instance and    |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | may be          |   |   |
|                 |                 |   | referenced by   |   |   |
|                 |                 |   | any StateRule   |   |   |
|                 |                 |   | or              |   |   |
|                 |                 |   | StrategyEdit.   |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| EditRef       | StrategyEdit, |   | Child of a      |   |   |
|                 |                 |   | StrategyEdit    |   |   |
|                 |                 |   | element used to |   |   |
|                 |                 |   | refer to an     |   |   |
|                 |                 |   | Edit element    |   |   |
|                 |                 |   | which           |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 | StateRule     |   | was declared as |   |   |
|                 |                 |   | a child of a    |   |   |
|                 |                 |   | Strategy or as  |   |   |
|                 |                 |   | a child of      |   |   |
|                 |                 |   | Strategies.     |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| EnumPair      | Parameter     |   | Defines a legal |   |   |
|                 |                 |   | value of a      |   |   |
|                 |                 |   | parameter in    |   |   |
|                 |                 |   | the form of a   |   |   |
|                 |                 |   | wire value. A   |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | Parameter       |   |   |
|                 |                 |   | element will    |   |   |
|                 |                 |   | have an         |   |   |
|                 |                 |   | EnumPair        |   |   |
|                 |                 |   | element for     |   |   |
|                 |                 |   | each enumerated |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | value which the |   |   |
|                 |                 |   | parameter can   |   |   |
|                 |                 |   | take.           |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| HelpText      | Control       |   | Text describing |   |   |
|                 |                 |   | the use of a    |   |   |
|                 |                 |   | particular GUI  |   |   |
|                 |                 |   | control. This   |   |   |
|                 |                 |   | element is used |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | when            |   |   |
|                 |                 |   | information     |   |   |
|                 |                 |   | about a control |   |   |
|                 |                 |   | is lengthy and  |   |   |
|                 |                 |   | would only be   |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | appropriate to  |   |   |
|                 |                 |   | display in a    |   |   |
|                 |                 |   | dialog box --   |   |   |
|                 |                 |   | not as a        |   |   |
|                 |                 |   | tooltip.        |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| ListItem      | Control       |   | Used for        |   |   |
|                 |                 |   | controls that   |   |   |
|                 |                 |   | let the user    |   |   |
|                 |                 |   | choose from a   |   |   |
|                 |                 |   | list of items.  |   |   |
|                 |                 |   | When a          |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | Control element |   |   |
|                 |                 |   | is mapped top a |   |   |
|                 |                 |   | Parameter       |   |   |
|                 |                 |   | element, via    |   |   |
|                 |                 |   | means of the    |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | Control         |   |   |
|                 |                 |   | element\'s      |   |   |
|                 |                 |   | \               |   |   |
|                 |                 |   | "parameterRef\" |   |   |
|                 |                 |   | attribute, each |   |   |
|                 |                 |   | ListItem will   |   |   |
|                 |                 |   | contain a       |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | reference to an |   |   |
|                 |                 |   | EnumPair        |   |   |
|                 |                 |   | defined within  |   |   |
|                 |                 |   | the Parameter   |   |   |
|                 |                 |   | element.        |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| Market        | Markets       |   | Used as a child |   |   |
|                 |                 |   | element of the  |   |   |
|                 |                 |   | Markets         |   |   |
|                 |                 |   | element.        |   |   |
|                 |                 |   | Defines a       |   |   |
|                 |                 |   | particular      |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | market using a  |   |   |
|                 |                 |   | market          |   |   |
|                 |                 |   | identifier code |   |   |
|                 |                 |   | (MIC). An       |   |   |
|                 |                 |   | attribute,      |   |   |
|                 |                 |   | inclusion,      |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | determines      |   |   |
|                 |                 |   | whether the     |   |   |
|                 |                 |   | market should   |   |   |
|                 |                 |   | be included or  |   |   |
|                 |                 |   | excluded from   |   |   |
|                 |                 |   | the             |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | list of markets |   |   |
|                 |                 |   | created by the  |   |   |
|                 |                 |   | patterned       |   |   |
|                 |                 |   | element,        |   |   |
|                 |                 |   | Markets.        |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+
| Markets       | Strategy      |   | This element    |   |   |
|                 |                 |   | defines the     |   |   |
|                 |                 |   | ma              |   |   |
|                 |                 |   | rkets/exchanges |   |   |
|                 |                 |   | (by ISO 10383   |   |   |
|                 |                 |   | MIC             |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | Code) of which  |   |   |
|                 |                 |   | the strategy is |   |   |
|                 |                 |   | applicable. If  |   |   |
|                 |                 |   | no Markets      |   |   |
|                 |                 |   | element is      |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | defined then    |   |   |
|                 |                 |   | the strategy is |   |   |
|                 |                 |   | applicable for  |   |   |
|                 |                 |   | \*ALL\*         |   |   |
|                 |                 |   | markets. If a   |   |   |
|                 |                 |   | market is       |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   | defined and has |   |   |
|                 |                 |   | its             |   |   |
|                 |                 |   | \'inclusion\'   |   |   |
|                 |                 |   | attribute set   |   |   |
|                 |                 |   | to \"Include\", |   |   |
|                 |                 |   | then it is      |   |   |
|                 |                 |   | implied         |   |   |
+-----------------+-----------------+---+-----------------+---+---+
|                 |                 |   |                 |   |   |
+-----------------+-----------------+---+-----------------+---+---+

December 21, 2010 19 FIXatdl v1.1 with Errata 20101221

+------------------+------------------+------------------------------+
|                  |                  | that the strategy is       |
|                  |                  | applicable for \*ONLY\*    |
|                  |                  | that market. If a region   |
|                  |                  | is                         |
+==================+==================+==============================+
|                  |                  | defined and is set to      |
|                  |                  | \"Exclude\", then it is    |
|                  |                  | implied that the strategy  |
|                  |                  | is                         |
+------------------+------------------+------------------------------+
|                  |                  | applicable for all markets |
|                  |                  | \*EXCEPT\* that market.    |
+------------------+------------------+------------------------------+
|                  |                  | Include takes precedence   |
|                  |                  | over Exclude - for         |
|                  |                  | example, if XNAS is        |
|                  |                  | defined                    |
+------------------+------------------+------------------------------+
|                  |                  | and set to \"Include\" and |
|                  |                  | XLON is defined and set to |
|                  |                  | \"Exclude\" then all       |
+------------------+------------------+------------------------------+
|                  |                  | other markets will also be |
|                  |                  | excluded since the         |
|                  |                  | \"Include\" on XNAS takes  |
+------------------+------------------+------------------------------+
|                  |                  | precedence over the        |
|                  |                  | \"Exclude\" on XLON. In    |
|                  |                  | this example, the          |
|                  |                  | definition                 |
+------------------+------------------+------------------------------+
|                  |                  | of XLON as \"Exclude\" is  |
|                  |                  | unnecessary.               |
+------------------+------------------+------------------------------+
|                  |                  | Markets are used in        |
|                  |                  | conjunction with regions   |
|                  |                  | and countries to define    |
|                  |                  | the                        |
+------------------+------------------+------------------------------+
|                  |                  | scope of the strategy.     |
|                  |                  | Markets take precedence    |
|                  |                  | over regions and           |
+------------------+------------------+------------------------------+
|                  |                  | countries. For example, if |
|                  |                  | AsiaPacificJapan is        |
|                  |                  | defined as \"Exclude\" but |
+------------------+------------------+------------------------------+
|                  |                  | the Fukuoka Stock Exchange |
|                  |                  | (XFKA) is defined as an    |
|                  |                  | included market,           |
+------------------+------------------+------------------------------+
|                  |                  | the strategy will be       |
|                  |                  | applicable for all markets |
|                  |                  | in The Americas and        |
+------------------+------------------+------------------------------+
|                  |                  | EMEA, as well as only the  |
|                  |                  | Fukuoka Stock Exchange in  |
|                  |                  | the APAC region.           |
+------------------+------------------+------------------------------+
|                  |                  |                              |
+------------------+------------------+------------------------------+
| Parameter      | Strategy,      | Element to define the      |
|                  |                  | characteristics of an algo |
|                  |                  | parameter with respect to  |
+------------------+------------------+------------------------------+
|                  | RepeatingGroup | the data interface with    |
|                  |                  | the algo provider.         |
+------------------+------------------+------------------------------+
|                  |                  |                              |
+------------------+------------------+------------------------------+
| Region         | Regions        | An individual region used  |
|                  |                  | as a child element of the  |
|                  |                  | Regions element.           |
+------------------+------------------+------------------------------+
|                  |                  |                              |
+------------------+------------------+------------------------------+
| Regions        | Strategy       | This element defines the   |
|                  |                  | globally based regions to  |
|                  |                  | which the strategy is      |
+------------------+------------------+------------------------------+
|                  |                  | applicable. It serves as a |
|                  |                  | container of Region        |
|                  |                  | elements. To define a set  |
|                  |                  | of                         |
+------------------+------------------+------------------------------+
|                  |                  | regions for a strategy use |
|                  |                  | one or more Region         |
|                  |                  | elements. Region elements  |
+------------------+------------------+------------------------------+
|                  |                  | contain the attribute      |
|                  |                  | "inclusion" that           |
|                  |                  | determines whether the     |
|                  |                  | region is                  |
+------------------+------------------+------------------------------+
|                  |                  | included from the set or   |
|                  |                  | excluded.                  |
+------------------+------------------+------------------------------+
|                  |                  | If no Regions element is   |
|                  |                  | defined then the strategy  |
|                  |                  | is applicable for          |
+------------------+------------------+------------------------------+
|                  |                  | \*ALL\* regions. If a      |
|                  |                  | region is defined and has  |
|                  |                  | its \'inclusion\'          |
|                  |                  | attribute set to           |
+------------------+------------------+------------------------------+
|                  |                  | \'Include\', then it is    |
|                  |                  | implied that the strategy  |
|                  |                  | is applicable for \*ONLY\* |
|                  |                  | that                       |
+------------------+------------------+------------------------------+
|                  |                  | region. If a region is     |
|                  |                  | defined and is set to      |
|                  |                  | \'Exclude\', then it is    |
|                  |                  | implied that               |
+------------------+------------------+------------------------------+
|                  |                  | the strategy is applicable |
|                  |                  | for all regions \*EXCEPT\* |
|                  |                  | that region.               |
+------------------+------------------+------------------------------+
|                  |                  | \'Include\' takes          |
|                  |                  | precedence over            |
|                  |                  | \'Exclude\' - for example, |
|                  |                  | if TheAmericas is          |
+------------------+------------------+------------------------------+
|                  |                  | defined and set to         |
|                  |                  | \'Include\' and            |
|                  |                  | EuropeMiddleEastAfrica is  |
|                  |                  | defined and                |
+------------------+------------------+------------------------------+
|                  |                  | set to \'Exclude\' then    |
|                  |                  | AsiaPacificJapan will also |
|                  |                  | be excluded since the      |
+------------------+------------------+------------------------------+
|                  |                  | \'Include\' on TheAmericas |
|                  |                  | takes precedence over the  |
|                  |                  | \'Exclude\' on             |
+------------------+------------------+------------------------------+
|                  |                  | EuropeMiddleEastAfrica. In |
|                  |                  | this example, the          |
|                  |                  | definition of              |
+------------------+------------------+------------------------------+
|                  |                  | \"EuropeMiddleEastAfrica\" |
|                  |                  | as \'Exclude\' is          |
|                  |                  | unnecessary.               |
+------------------+------------------+------------------------------+
|                  |                  | Regions also contain a     |
|                  |                  | child element called       |
|                  |                  | \"Country\" that allows    |
|                  |                  | the algo                   |
+------------------+------------------+------------------------------+
|                  |                  | author to further specify  |
|                  |                  | the geographic scope of    |
|                  |                  | the strategy. Countries    |
+------------------+------------------+------------------------------+
|                  |                  | can be included and        |
|                  |                  | excluded in the same       |
|                  |                  | manner as regions and the  |
|                  |                  | same                       |
+------------------+------------------+------------------------------+
|                  |                  | rules of precedence apply. |
|                  |                  | Please see                 |
|                  |                  | fixatdl-regions-1-1.xsd    |
|                  |                  | for the list of            |
+------------------+------------------+------------------------------+
|                  |                  | ISO 3166 Country Code to   |
|                  |                  | region mappings.           |
+------------------+------------------+------------------------------+
|                  |                  |                              |
+------------------+------------------+------------------------------+
| RepeatingGroup | Strategy       | Container of a group of    |
|                  |                  | Parameter elements that    |
|                  |                  | are intended for use with  |
+------------------+------------------+------------------------------+
|                  |                  | multi-leg or basket        |
|                  |                  | strategies.                |
+------------------+------------------+------------------------------+
|                  |                  |                              |
+------------------+------------------+------------------------------+

December 21, 2010 20 FIXatdl v1.1 with Errata 20101221

[]{#page21 .anchor}

+-------------+-------------+-------------+-------------+---+---+
|             |             |           |             |   |   |
|             |             |  Parameters |             |   |   |
|             |             | contained |             |   |   |
|             |             | within a  |             |   |   |
|             |             | Rep       |             |   |   |
|             |             | eatingGroup |             |   |   |
|             |             | element   |             |   |   |
|             |             | are       |             |   |   |
|             |             | intended  |             |   |   |
|             |             | to        |             |   |   |
+=============+=============+=============+=============+===+===+
|             |             | have      |             |   |   |
|             |             | their     |             |   |   |
|             |             | tag=value |             |   |   |
|             |             | pairs     |             |   |   |
|             |             | populated |             |   |   |
|             |             | in either |             |   |   |
|             |             | the       |             |   |   |
|             |             |           |             |   |   |
|             |             |  ListOrdGrp |             |   |   |
|             |             | repeating |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | group of  |             |   |   |
|             |             | a New     |             |   |   |
|             |             | Order     |             |   |   |
|             |             | List      |             |   |   |
|             |             | message   |             |   |   |
|             |             | or the    |             |   |   |
|             |             | LegOrdGrp |             |   |   |
|             |             | repeating |             |   |   |
|             |             | group of  |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | a New     |             |   |   |
|             |             | Order     |             |   |   |
|             |             | Multileg  |             |   |   |
|             |             | message.  |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |           |             |   |   |
|             |             |  Parameters |             |   |   |
|             |             | not       |             |   |   |
|             |             | contained |             |   |   |
|             |             | within a  |             |   |   |
|             |             | Rep       |             |   |   |
|             |             | eatingGroup |             |   |   |
|             |             | element   |             |   |   |
|             |             | have      |             |   |   |
|             |             | their     |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | values    |             |   |   |
|             |             | populated |             |   |   |
|             |             | in the    |             |   |   |
|             |             | main body |             |   |   |
|             |             | of a      |             |   |   |
|             |             | message.  |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
| S         | Se        | An        |             |   |   |
| ecurityType | curityTypes | element   |             |   |   |
|             |             | used to   |             |   |   |
|             |             | describe  |             |   |   |
|             |             | a         |             |   |   |
|             |             | security  |             |   |   |
|             |             | type that |             |   |   |
|             |             | may be    |             |   |   |
|             |             | included  |             |   |   |
|             |             | or        |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | excluded  |             |   |   |
|             |             | from the  |             |   |   |
|             |             | list      |             |   |   |
|             |             | built by  |             |   |   |
|             |             | the       |             |   |   |
|             |             | parent    |             |   |   |
|             |             | element,  |             |   |   |
|             |             | Sec       |             |   |   |
|             |             | urityTypes. |             |   |   |
|             |             | Its       |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |           |             |   |   |
|             |             |  attribute, |             |   |   |
|             |             | "name",   |             |   |   |
|             |             | contains  |             |   |   |
|             |             | a FIX     |             |   |   |
|             |             | S         |             |   |   |
|             |             | ecurityType |             |   |   |
|             |             | (tag 167) |             |   |   |
|             |             | value.    |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
| Se        | Strategy  | The list  |             |   |   |
| curityTypes |             | of        |             |   |   |
|             |             | security  |             |   |   |
|             |             | types (by |             |   |   |
|             |             | S         |             |   |   |
|             |             | ecurityType |             |   |   |
|             |             | (tag      |             |   |   |
|             |             | 167)) for |             |   |   |
|             |             | which the |             |   |   |
|             |             | given     |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | strategy  |             |   |   |
|             |             | is valid. |             |   |   |
|             |             | The       |             |   |   |
|             |             | absence   |             |   |   |
|             |             | of any    |             |   |   |
|             |             | security  |             |   |   |
|             |             | types     |             |   |   |
|             |             | implies   |             |   |   |
|             |             | that the  |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | strategy  |             |   |   |
|             |             | is valid  |             |   |   |
|             |             | for all   |             |   |   |
|             |             | security  |             |   |   |
|             |             | types.    |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
| StateRule | Control   | Defines   |             |   |   |
|             |             | workflow  |             |   |   |
|             |             | rule for  |             |   |   |
|             |             | a         |             |   |   |
|             |             | Control.  |             |   |   |
|             |             | Defines a |             |   |   |
|             |             | workflow  |             |   |   |
|             |             | rule for  |             |   |   |
|             |             | a GUI     |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | control.  |             |   |   |
|             |             | Using     |             |   |   |
|             |             | StateRule |             |   |   |
|             |             | as a      |             |   |   |
|             |             | child     |             |   |   |
|             |             | element   |             |   |   |
|             |             | of a      |             |   |   |
|             |             | Control   |             |   |   |
|             |             | element,  |             |   |   |
|             |             | rules     |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | can be    |             |   |   |
|             |             | defined   |             |   |   |
|             |             | which     |             |   |   |
|             |             | affect    |             |   |   |
|             |             | the       |             |   |   |
|             |             |           |             |   |   |
|             |             | \"enabled\" |             |   |   |
|             |             | and       |             |   |   |
|             |             |           |             |   |   |
|             |             |  \"hidden\" |             |   |   |
|             |             |           |             |   |   |
|             |             |  properties |             |   |   |
|             |             | of the    |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |           |             |   |   |
|             |             |  underlying |             |   |   |
|             |             | Java/.N   |             |   |   |
|             |             | et/Web/etc. |             |   |   |
|             |             | rendered  |             |   |   |
|             |             | on the    |             |   |   |
|             |             | screen.   |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | A         |             |   |   |
|             |             | StateRule |             |   |   |
|             |             | element   |             |   |   |
|             |             | must      |             |   |   |
|             |             | contain a |             |   |   |
|             |             | child     |             |   |   |
|             |             | Edit      |             |   |   |
|             |             | element.  |             |   |   |
|             |             | The       |             |   |   |
|             |             | action    |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | defined   |             |   |   |
|             |             | by the    |             |   |   |
|             |             | StateRule |             |   |   |
|             |             | is        |             |   |   |
|             |             | in-effect |             |   |   |
|             |             | when the  |             |   |   |
|             |             | condition |             |   |   |
|             |             | described |             |   |   |
|             |             | by its    |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | child     |             |   |   |
|             |             | Edit      |             |   |   |
|             |             | element   |             |   |   |
|             |             | is true.  |             |   |   |
|             |             | The       |             |   |   |
|             |             | action is |             |   |   |
|             |             | not       |             |   |   |
|             |             | in-effect |             |   |   |
|             |             | when the  |             |   |   |
|             |             | condition |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | described |             |   |   |
|             |             | by its    |             |   |   |
|             |             | child     |             |   |   |
|             |             | Edit      |             |   |   |
|             |             | element   |             |   |   |
|             |             | is false. |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|           | \[n/a\]   | Container |             |   |   |
|  Strategies |             | for all   |             |   |   |
|             |             | strategy  |             |   |   |
|             |             | elements. |             |   |   |
|             |             | It is the |             |   |   |
|             |             | root      |             |   |   |
|             |             | element   |             |   |   |
|             |             | of all    |             |   |   |
|             |             | FIXatdl   |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |           |             |   |   |
|             |             |  conforming |             |   |   |
|             |             |           |             |   |   |
|             |             |  documents. |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
| Strategy  |           | Root      |             |   |   |
|             |  Strategies | level of  |             |   |   |
|             |             | a         |             |   |   |
|             |             | strategy  |             |   |   |
|             |             |           |             |   |   |
|             |             | definition. |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
| S         | Strategy  |           |             |   |   |
| trategyEdit |             |  Definition |             |   |   |
|             |             | of a      |             |   |   |
|             |             |           |             |   |   |
|             |             |  validation |             |   |   |
|             |             | rule. A   |             |   |   |
|             |             | S         |             |   |   |
|             |             | trategyEdit |             |   |   |
|             |             | element   |             |   |   |
|             |             | must      |             |   |   |
|             |             | contain   |             |   |   |
|             |             | an        |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | Edit      |             |   |   |
|             |             | element   |             |   |   |
|             |             | as a      |             |   |   |
|             |             | child.    |             |   |   |
|             |             | The       |             |   |   |
|             |             | boolean   |             |   |   |
|             |             |           |             |   |   |
|             |             |  expression |             |   |   |
|             |             | described |             |   |   |
|             |             | by the    |             |   |   |
|             |             | Edit      |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | element   |             |   |   |
|             |             | is an     |             |   |   |
|             |             |           |             |   |   |
|             |             |  assertion, |             |   |   |
|             |             | i.e.,     |             |   |   |
|             |             |           |             |   |   |
|             |             |  validation |             |   |   |
|             |             | succeeds  |             |   |   |
|             |             | if the    |             |   |   |
|             |             | condition |             |   |   |
|             |             | described |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | by the    |             |   |   |
|             |             | Edit is   |             |   |   |
|             |             | true and  |             |   |   |
|             |             | fails     |             |   |   |
|             |             | when the  |             |   |   |
|             |             | condition |             |   |   |
|             |             | described |             |   |   |
|             |             | by the    |             |   |   |
|             |             | Edit      |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | element   |             |   |   |
|             |             | is false. |             |   |   |
|             |             | In the    |             |   |   |
|             |             | case      |             |   |   |
|             |             | where     |             |   |   |
|             |             |           |             |   |   |
|             |             |  validation |             |   |   |
|             |             | fails,    |             |   |   |
|             |             | the error |             |   |   |
|             |             | message,  |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | supplied  |             |   |   |
|             |             | by the    |             |   |   |
|             |             | errorMsg  |             |   |   |
|             |             | attribute |             |   |   |
|             |             | of        |             |   |   |
|             |             | St        |             |   |   |
|             |             | rategyEdit, |             |   |   |
|             |             | may be    |             |   |   |
|             |             | displayed |             |   |   |
|             |             | to an     |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | OMS user  |             |   |   |
|             |             | or        |             |   |   |
|             |             | logged.   |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
| Str       | Strategy  | Container | ~~at~~      |   |   |
| ategyLayout |             | for       |             |   |   |
|             |             | stra      |             |   |   |
|             |             | tegyPanels. |             |   |   |
|             |             | If        |             |   |   |
|             |             | declared, |             |   |   |
|             |             | a         |             |   |   |
|             |             | str       |             |   |   |
|             |             | ategyLayout |             |   |   |
|             |             | must      |             |   |   |
|             |             | contain   |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | ~~least~~ | exactly one |   |   |
|             |             |             | st          |   |   |
|             |             |             | rategyPanel |   |   |
|             |             |             | as a child  |   |   |
|             |             |             | element.    |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
| St        | Str       | Container |             |   |   |
| rategyPanel | ategyLayout | for       |             |   |   |
|             |             | either    |             |   |   |
|             |             | groups of |             |   |   |
|             |             |           |             |   |   |
|             |             |  parameters |             |   |   |
|             |             | or        |             |   |   |
|             |             | stra      |             |   |   |
|             |             | tegyPanels, |             |   |   |
|             |             | but not   |             |   |   |
|             |             | both.     |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | I.e., a   |             |   |   |
|             |             | St        |             |   |   |
|             |             | rategyPanel |             |   |   |
|             |             | will      |             |   |   |
|             |             | contain   |             |   |   |
|             |             | either    |             |   |   |
|             |             | all       |             |   |   |
|             |             | Control   |             |   |   |
|             |             | elements  |             |   |   |
|             |             | or all    |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             | St        |             |   |   |
|             |             | rategyPanel |             |   |   |
|             |             | elements. |             |   |   |
+-------------+-------------+-------------+-------------+---+---+
|             |             |             |             |   |   |
+-------------+-------------+-------------+-------------+---+---+

**Attribute Definitions**
>
The following table describes the attributes of all the FIXatdl XML
elements. The format of the attribute name is
>
December 21, 2010 21 FIXatdl v1.1 with Errata 20101221

\<element name\>/@\<attribute\where the element is one of the XML
elements defined by FIXatdl.
>
Since some of the attributes are overloaded due to the way the
Parameter and Control elements can be extended, types of certain
attributes will depend on the type of the element. For these
attributes, the conditions determining their type will be listed in
their description.

<table>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Attribute</strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Type</strong></p>
</blockquote></th>
<th></th>
<th><strong>Req’</strong></th>
<th></th>
<th><strong>Description</strong></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td><strong>d</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@checkedEnumRef</p>
</blockquote></td>
<td><blockquote>
<p>StringID</p>
</blockquote></td>
<td></td>
<td>N</td>
<td></td>
<td>Refers to an enumID defined in the definition of the Parameter</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>referred by Control/@parameterRef. This enumID is the output</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>from this control if it is checked/selected.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>(See the section “A Sample FIXatdl Document” in this</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>document for an example. Examine the Parameter</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>“AllowDarkPoolExec” and Control “DPOption” for</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>details.)</strong></td>
<td><del>Output enumID if checked/selected.</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is CheckBox_t or RadioButton_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@disableForTemplate</p>
</blockquote></td>
<td><blockquote>
<p>boolean</p>
</blockquote></td>
<td></td>
<td>N</td>
<td></td>
<td>For implementing systems that support saving order templates</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>or pre-populated orders for basket trading/list trading this</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute specifies that the control should be disabled when the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>order screen is going to be saved as a template and not actually</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>used to place an order.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@ID</p>
</blockquote></td>
<td><blockquote>
<p>StringID</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
<td>Unique identifier of this control. No two controls of the same</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>strategy can have the same ID.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@increment</p>
</blockquote></td>
<td><blockquote>
<p>decimal</p>
</blockquote></td>
<td></td>
<td>N</td>
<td></td>
<td>Limits the granularity of a spinner control. Useful in spinner</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>objects to enforce odd-lot and sub-penny restrictions.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is SingleSpinner_t or Slider_t. (In</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>this case a Slider_t must be used to select a value within a</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>continuous range, say a decimal value between a minimum and</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>maximum value. As opposed to the case where the Slider_t is</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>used to select from a set of values not unlike a</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>DropDownList_t.)<del>.</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@incrementPolicy</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td></td>
<td>N</td>
<td></td>
<td>For single spinner control, defines how to determine the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>increment.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Valid values:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“Static” – use value from increment attribute</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“LotSize” – use the round lot size of symbol. (If this</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>value is not available, use the value from the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>increment attribute.)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“Tick” - use symbol minimum tick size. (If this value</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>is not available, use the value from the increment</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute.)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image4.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 22 FIXatdl v1.1 with Errata 20101221

![](media/image5.png){width="4.870833333333334in"
height="8.122916666666667in"}

<table>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is SingleSpinner_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>If no value is supplied then use value from increment attribute.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>Please note: The schema file, fixatdl-layout-1-1.xsd, does</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>not include the “Static” enumeration value. If “Static”</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>behavior is desired then do not populate this attribute.</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@initFixField</p>
</blockquote></td>
<td><blockquote>
<p>pos int</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Indicates the initialization value is to be taken from this</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>standard FIX field. Format: "FIX_" + FIXFieldName. E.g.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>"FIX_OrderQty".</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Required when initPolicy=”UseFixField”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@initPolicy</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Describes how to initialize the control.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>If the value of this attribute is undefined or equal to</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>"UseValue" and initValue is defined then initialize with</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>initValue.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>If the value is equal to "UseFixField" then attempt to initialize</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>with the value of the tag specified in initFixField. If the value</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>is equal to "UseFixField" and it is not possible to access the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>value of the specified fix tag then revert to using initValue. If</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>the value is equal to "UseFixField", the field is not accessible,</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>and initValue is not defined, then do not initialize.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Valid values are:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>UseValue</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>UseFixField</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@initValue</p>
</blockquote></td>
<td><blockquote>
<p>(Depends</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>The value used to pre-populate the GUI component when the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>on value of</p>
</blockquote></td>
<td></td>
<td></td>
<td>order entry screen is initially rendered. The type of initValue is</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>xsi:type)</p>
</blockquote></td>
<td></td>
<td></td>
<td>dependent on the value of Control/@xsi:type.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>The following list give<span class="underline">s</spanthe type of this attribute based on the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>value of xsi:type.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>xsi:type</td>
<td></td>
<td>initValue type</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Clock_t</td>
<td></td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>TextField_t</td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>SingleSelectList_t</td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MultiSelectList_t</td>
<td>MultipleStringValue</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Slider_t</td>
<td>double</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>CheckBox_t</td>
<td><del>boolean</del></td>
<td>boolean (“true”/”false”)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>CheckBoxList_t</td>
<td>MultipleStringValue</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>SingleSpinner_t</td>
<td>double</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>DoubleSpinner</td>
<td>double</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>DropDownList</td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 23 FIXatdl v1.1 with Errata 20101221

**Formatted:** No bullets or numbering

**Formatted:** Font: Bold

**Formatted:** Font: Bold

**Formatted:** Font: Bold

  EditableDropDownList\_t   string                                   
  ------------------------- ------------- -------------------------- --
  RadioButton\_t            ~~boolean~~   boolean ("true"/"false")   
  RadioButtonList\_t        string                                   
  Label\_t                  string                                   

  HiddenField\_t            string                                   


The use of initValue also depends on the value of xsi:type.

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th>xsi:type</th>
<th></th>
<th>initValue use</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>Clock_t</td>
<td></td>
<td>A time (expressed in</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Control/@localMktTz)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>TextField_t</td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>SingleSelectList_t</td>
<td>enumID of a child ListItem</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>MultiSelectList_t</td>
<td>enumIDs of child ListItems</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>Slider_t</td>
<td>A valid value returned by the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>slider</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>CheckBox_t</td>
<td>“</td>
<td><del>T</del></td>
<td><span class="underline">t</span>rue” (checked) or “false”</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>(unchecked)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>CheckBoxList_t</td>
<td>enumIDs of ListItems to be</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>checked (separated by single</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>spaces)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>SingleSpinner_t</td>
<td>double</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>DoubleSpinner_t</td>
<td>double</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>DropDownList_t</td>
<td>enumID of a child ListItem</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>EditableDropDownList_t enumID of a child ListItem</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>RadioButton_t</td>
<td>“true” (selected) or “false”</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>(unselected)</td>
<td><del>boolean</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>RadioButtonList_t</td>
<td>enumID of ListItem to be pushed</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>Label_t</td>
<td>string to render</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>HiddenField_t</td>
<td>non-displayed string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>Required when initPolicy=”UseValue”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@initValueMode</p>
</blockquote></td>
<td><blockquote>
<p>int</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td>Defines the treatment of initValue time. 0: use initValue; 1: use</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>current time if initValue time has passed.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>The default value is 0.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>Applicable only when Control/@xsi:type is Clock_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@innerIncrement</p>
</blockquote></td>
<td><blockquote>
<p>decimal</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td>Limits the granularity of the inner spinner of a double spinner</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>control. Useful in spinner objects to enforce odd-lot and sub-</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>penny restrictions.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is DoubleSpinner_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@innerIncrementPolicy</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td>For double spinner control, defines how to determine the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>increment for the inner set of spinners.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td>Valid values:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

![](media/image6.png){width="2.7083333333333334e-2in"
height="5.208880139982502e-3in"}

December 21, 2010 24 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th>“Static” – use value from innerIncrement attribute</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“LotSize” – use the round lot size of symbol</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“Tick: - use symbol minimum tick size</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is DoubleSpinner_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>If no value is supplied then use value from innerIncrement</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>Please note: The schema file, fixatdl-layout-1-1.xsd, does</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>not include the “Static” enumeration value. If “Static”</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>behavior is desired then do not populate this attribute.</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@label</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>A title for this control which may be displayed.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>If the control is a Label_t then Control/@label or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Control/@initValue must be used to define the string which is</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>to be rendered. If both attributes are provided then</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Control/@initValue takes precedence.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@localMktTz</p>
</blockquote></td>
<td><blockquote>
<p>LocalMktT</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>The timezone in which initValue is represented in. Required</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>z</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>when initValue is supplied.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is Clock_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@orientation</p>
</blockquote></td>
<td><blockquote>
<p>Orientation</p>
</blockquote></td>
<td><blockquote>
<p><del>N</del></p>
</blockquote></td>
<td>Y</td>
<td></td>
<td>Must be “HORIZONTAL” or “VERTICAL”. Declares the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>orientation of the radio buttons within a RadioButtonList or the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>checkboxes within a CheckBoxList.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is RadioButtonList_t or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>CheckBoxList_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@outerIncrement</p>
</blockquote></td>
<td><blockquote>
<p>decimal</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Limits the granularity an outer spinner of a double spinner</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>control. Useful in spinner objects to enforce odd-lot and sub-</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>penny restrictions.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is DoubleSpinner_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@outerIncrementPolicy</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>For double spinner control, defines how to determine the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>increment for the outer set of spinners.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Valid values:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“Static” – use value from outerIncrement attribute</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“LotSize” – use the round lot size of symbol</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“Tick: - use symbol minimum tick size</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is DoubleSpinner_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>If no value is supplied then use value from outerIincrement</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>Please note: The schema file, fixatdl-layout-1-1.xsd, does</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

![](media/image7.jpeg){width="9.305555555555556e-2in"
height="0.12291666666666666in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 25 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th><strong>not include the “Static” enumeration value. If “Static”</strong></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>behavior is desired then do not populate this attribute.</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@parameterRef</p>
</blockquote></td>
<td><blockquote>
<p>StringID</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>The name of the parameter for which this control gives the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>visual representation. A parameter with this name must be</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>defined within the same strategy as this control.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@radioGroup</p>
</blockquote></td>
<td><blockquote>
<p>String</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Identifies a common group name used by a set of</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>RadioButton_t among which only one radio button may be</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>selected at a time.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is RadioButton_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Control/@tooltip</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Tool tip text for rendered GUI objects rendered for the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>parameter.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@uncheckedEnumRef</p>
</blockquote></td>
<td><blockquote>
<p>StringID</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Refers to an enumID defined in the definition of the Parameter</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>referred by Control/@parameterRef. This enumID is the output</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>from this control if it is unchecked/unselected.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>(See the section “A Sample FIXatdl Document” in this</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>document for an example. Examine the Parameter</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>“AllowDarkPoolExec” and Control “DPOption” for</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>details.)</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is CheckBox_t or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>RadioButton_t.</td>
<td><del>Output enumID if unchecked/not selected.</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><del>Applicable when xsi:type is CheckBox_t or RadioButton_t.</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Control/@xsi:type</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Indicates the type of GUI control that should be rendered on</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>the screen.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Valid values are:</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>CheckBox_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>CheckBoxList_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Clock_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>DoubleSpinner_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>DropDownList_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>EditableDropDownList_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>HiddenField_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Label_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>MultiSelectList_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>RadioButton_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>RadioButtonList_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>SingleSelectList_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>SingleSpinner_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Slider_t</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 26 FIXatdl v1.1 with Errata 20101221

+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | TextField\_t |   |
+================+================+=====+===+================+===+
|                |                |     |   | ~~Absence of   |   |
|                |                |     |   | this attribute |   |
|                |                |     |   | may indicate   |   |
|                |                |     |   | that the       |   |
|                |                |     |   | parameter~~    |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | ~~should not   |   |
|                |                |     |   | be visible to  |   |
|                |                |     |   | the user and   |   |
|                |                |     |   | the            |   |
|                |                |     |   | parameter‟s    |   |
|                |                |     |   | initValue~~    |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | ~~should be    |   |
|                |                |     |   | used to        |   |
|                |                |     |   | populate the   |   |
|                |                |     |   | FIX message.~~ |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
| Country      | String       | Y |   | ISO 3166-1     |   |
| /\@CountryCode |                |     |   | alpha-2 code   |   |
|                |                |     |   | for the        |   |
|                |                |     |   | countries to   |   |
|                |                |     |   | include or     |   |
+----------------+----------------+-----+---+----------------+---+
|                | restricted   |     |   | exclude in a   |   |
|                | to           |     |   | given region.  |   |
+----------------+----------------+-----+---+----------------+---+
|                | \"\[A-Z0-    |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
|                | 9\]{2}\"     |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
| Count        | string       | Y |   | Indicates      |   |
| ry/\@inclusion |                |     |   | whether this   |   |
|                |                |     |   | country should |   |
|                |                |     |   | be included or |   |
|                |                |     |   | excluded       |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | from           |   |
|                |                |     |   | encompassing   |   |
|                |                |     |   | list. Valid    |   |
|                |                |     |   | values: are    |   |
|                |                |     |   | "Include",     |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | "Exclude".     |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
| Edit/\@field | string       | N |   | Field name for |   |
|                |                |     |   | comparison.    |   |
|                |                |     |   | When the edit  |   |
|                |                |     |   | is used within |   |
|                |                |     |   | a              |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | stateRule,     |   |
|                |                |     |   | this field     |   |
|                |                |     |   | must refer to  |   |
|                |                |     |   | the ID of a    |   |
|                |                |     |   | Control. When  |   |
|                |                |     |   | the            |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | edit is used   |   |
|                |                |     |   | within a       |   |
|                |                |     |   | strategyEdit,  |   |
|                |                |     |   | this field     |   |
|                |                |     |   | must refer to  |   |
|                |                |     |   | either         |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | the name of a  |   |
|                |                |     |   | parameter or a |   |
|                |                |     |   | standard FIX   |   |
|                |                |     |   | field name.    |   |
|                |                |     |   | When           |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | referring to a |   |
|                |                |     |   | standard FIX   |   |
|                |                |     |   | tag then the   |   |
|                |                |     |   | name must be   |   |
|                |                |     |   | pre-           |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | pended with    |   |
|                |                |     |   | the string     |   |
|                |                |     |   | "FIX\_", e.g.  |   |
|                |                |     |   | "F             |   |
|                |                |     |   | IX\_OrderQty". |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | Required when: |   |
|                |                |     |   | E              |   |
|                |                |     |   | dit/\@operator |   |
|                |                |     |   | is defined.    |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
|              | string       | N |   | Value used as  |   |
|  Edit/\@field2 |                |     |   | the second     |   |
|                |                |     |   | operand. Used  |   |
|                |                |     |   | in conjunction |   |
|                |                |     |   | with           |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | Edit/\@field   |   |
|                |                |     |   | and            |   |
|                |                |     |   | Ed             |   |
|                |                |     |   | it/\@operator. |   |
|                |                |     |   | Similar        |   |
|                |                |     |   | definition to  |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | Edit/\@field   |   |
|                |                |     |   | except that it |   |
|                |                |     |   | is mutually    |   |
|                |                |     |   | exclusive with |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | Edit/\@value.  |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | Required when: |   |
|                |                |     |   | E              |   |
|                |                |     |   | dit/\@operator |   |
|                |                |     |   | is in {GE, GT, |   |
|                |                |     |   | LE, LT, EQ,    |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | NE} and        |   |
|                |                |     |   | Edit/\@value   |   |
|                |                |     |   | is not         |   |
|                |                |     |   | specified.     |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
| Edit/\@id    | string       | N |   | Optional       |   |
|                |                |     |   | identifier.    |   |
|                |                |     |   | Allows for     |   |
|                |                |     |   | re-use of this |   |
|                |                |     |   | edit within    |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | stateRule or   |   |
|                |                |     |   | editRef        |   |
|                |                |     |   | elements. This |   |
|                |                |     |   | attribute is   |   |
|                |                |     |   | required if    |   |
|                |                |     |   | the            |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | Edit element   |   |
|                |                |     |   | is a direct    |   |
|                |                |     |   | child of       |   |
|                |                |     |   | either the     |   |
|                |                |     |   | Strategies or  |   |
|                |                |     |   | Strategy       |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | elements.      |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+
| Edit/\       | LogicalOpe   | N |   | Operator where |   |
| @logicOperator |                |     |   | operands are   |   |
|                |                |     |   | one or more    |   |
|                |                |     |   | Edit elements. |   |
|                |                |     |   | Short-         |   |
+----------------+----------------+-----+---+----------------+---+
|                | rator        |     |   | circuit        |   |
|                |                |     |   | evaluation is  |   |
|                |                |     |   | assumed in all |   |
|                |                |     |   | edit           |   |
|                |                |     |   | statements.    |   |
|                |                |     |   | Valid          |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | values are one |   |
|                |                |     |   | of the         |   |
|                |                |     |   | following      |   |
|                |                |     |   | enumerated     |   |
|                |                |     |   | types:         |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | AND          |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | OR           |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | XOR          |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | NOT          |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | Required when  |   |
|                |                |     |   | operator is    |   |
|                |                |     |   | not present.   |   |
|                |                |     |   | An edit        |   |
|                |                |     |   | element must   |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | contain either |   |
|                |                |     |   | a              |   |
|                |                |     |   | logicOperator  |   |
|                |                |     |   | attribute or   |   |
|                |                |     |   | an operator    |   |
|                |                |     |   | attribute,     |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | but never      |   |
|                |                |     |   | both.          |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   | By convention, |   |
|                |                |     |   | XOR returns    |   |
|                |                |     |   | true when      |   |
|                |                |     |   | **one and only |   |
|                |                |     |   | one** of its   |   |
+----------------+----------------+-----+---+----------------+---+
|                |                |     |   |                |   |
+----------------+----------------+-----+---+----------------+---+

![](media/image8.jpeg){width="9.305555555555556e-2in"
height="0.12430555555555556in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 27 FIXatdl v1.1 with Errata 20101221

+----------------+------------+-----+---+----------------+---+
|                |            |     |   | operands is    |   |
|                |            |     |   | true.          |   |
+================+============+=====+===+================+===+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+
| E            | Operator | N |   | One of the     |   |
| dit/\@operator |            |     |   | following      |   |
|                |            |     |   | enumerated     |   |
|                |            |     |   | types:         |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | EX (Exists.  |   |
|                |            |     |   | I.e. the     |   |
|                |            |     |   | user has     |   |
|                |            |     |   | entered a    |   |
|                |            |     |   | value)       |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | NX (Not      |   |
|                |            |     |   | exists. I.e. |   |
|                |            |     |   | the user has |   |
|                |            |     |   | not entered  |   |
|                |            |     |   | a value)     |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | EQ (Equal)   |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | LT (Less     |   |
|                |            |     |   | than)        |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | GT (Greater  |   |
|                |            |     |   | than)        |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | NE (Not      |   |
|                |            |     |   | equal)       |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | LE (Less     |   |
|                |            |     |   | than equal)  |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | GE (Greater  |   |
|                |            |     |   | than equal)  |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | Required when  |   |
|                |            |     |   | logicOperator  |   |
|                |            |     |   | is not         |   |
|                |            |     |   | present. An    |   |
|                |            |     |   | edit element   |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | must contain   |   |
|                |            |     |   | either a       |   |
|                |            |     |   | logicOperator  |   |
|                |            |     |   | attribute or   |   |
|                |            |     |   | an operator    |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | attribute, but |   |
|                |            |     |   | never both.    |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+
| Edit/\@value | string   | N |   | Value used as  |   |
|                |            |     |   | the second     |   |
|                |            |     |   | operand. Used  |   |
|                |            |     |   | in conjunction |   |
|                |            |     |   | with           |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | Edit/\@field   |   |
|                |            |     |   | and            |   |
|                |            |     |   | Ed             |   |
|                |            |     |   | it/\@operator. |   |
|                |            |     |   | Represents a   |   |
|                |            |     |   | string literal |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | value and not  |   |
|                |            |     |   | a reference.   |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | When Edit is a |   |
|                |            |     |   | descendant of  |   |
|                |            |     |   | a StateRule    |   |
|                |            |     |   | element,       |   |
|                |            |     |   | Edit/\@value   |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | refers to the  |   |
|                |            |     |   | value of the   |   |
|                |            |     |   | control        |   |
|                |            |     |   | referred by    |   |
|                |            |     |   | Edit/\@field.  |   |
|                |            |     |   | If the         |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | control        |   |
|                |            |     |   | referred by    |   |
|                |            |     |   | Edit/\@field   |   |
|                |            |     |   | has enumerated |   |
|                |            |     |   | values then    |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | Edit/\@value   |   |
|                |            |     |   | refers to the  |   |
|                |            |     |   | enumID of one  |   |
|                |            |     |   | of the         |   |
|                |            |     |   | control‟s      |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | ListItem       |   |
|                |            |     |   | elements.      |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | When Edit is a |   |
|                |            |     |   | descendant of  |   |
|                |            |     |   | a StrategyEdit |   |
|                |            |     |   | element,       |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | Edit/\@value   |   |
|                |            |     |   | refers to the  |   |
|                |            |     |   | wireValue of   |   |
|                |            |     |   | the parameter  |   |
|                |            |     |   | referred       |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | by             |   |
|                |            |     |   | Edit/\@field.  |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | Required when: |   |
|                |            |     |   | E              |   |
|                |            |     |   | dit/\@operator |   |
|                |            |     |   | is in {GE, GT, |   |
|                |            |     |   | LE, LT, EQ,    |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | NE} and        |   |
|                |            |     |   | Edit/\@field2  |   |
|                |            |     |   | is not         |   |
|                |            |     |   | specified.     |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+
| EditRef/\@id | string   | Y |   | Refers to an   |   |
|                |            |     |   | ID of a        |   |
|                |            |     |   | previously     |   |
|                |            |     |   | defined edit   |   |
|                |            |     |   | element. The   |   |
|                |            |     |   | edit           |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | element may be |   |
|                |            |     |   | defined at the |   |
|                |            |     |   | strategy level |   |
|                |            |     |   | or at the      |   |
|                |            |     |   | strategies     |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | level.         |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+
| Enu          | StringID | Y |   | A unique       |   |
| mPair/\@enumID |            |     |   | identifier of  |   |
|                |            |     |   | an enumPair    |   |
|                |            |     |   | element per    |   |
|                |            |     |   | parameter.     |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+
| En           | integer  | N |   | *              |   |
| umPair/\@index |            |     |   | *Deprecated.** |   |
|                |            |     |   | Previously     |   |
|                |            |     |   | defined an     |   |
|                |            |     |   | ordering of    |   |
|                |            |     |   | the enumerated |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | values. If     |   |
|                |            |     |   | defined it     |   |
|                |            |     |   | should be      |   |
|                |            |     |   | ignored.       |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+
| EnumPa       | string   | Y |   | The            |   |
| ir/\@wireValue |            |     |   | corresponding  |   |
|                |            |     |   | value that is  |   |
|                |            |     |   | used to        |   |
|                |            |     |   | populate the   |   |
|                |            |     |   | FIX            |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | message.       |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+
| Lis          | StringID | N |   | A reference to |   |
| tItem/\@enumID |            |     |   | the enumPair   |   |
|                |            |     |   | specified in   |   |
|                |            |     |   | the parameter  |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | definition     |   |
|                |            |     |   | specified by   |   |
|                |            |     |   | the parent     |   |
|                |            |     |   | Control‟s      |   |
|                |            |     |   | parameterRef   |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   | attribute. Use |   |
|                |            |     |   | is optional    |   |
|                |            |     |   | when the       |   |
|                |            |     |   | parent Control |   |
|                |            |     |   | element does   |   |
+----------------+------------+-----+---+----------------+---+
|                |            |     |   |                |   |
+----------------+------------+-----+---+----------------+---+

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 28 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th>not refer to a parameter.</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Required when: the parent Control element has a defined</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>parameterRef attribute.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>ListItem/@uiRep</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>The value shown in the list. These are the values that go into</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Java, .Net or Web list controls.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Market/@inclusion</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Indicates whether this market should be included or excluded</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>from encompassing list. Valid values: are “Include”,</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>“Exclude”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Market/@MICCode</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>String representing a market or exchange - ISO 10383 Market</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Identifier Code (MIC).</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Parameter/@constValue</p>
</blockquote></td>
<td><blockquote>
<p>(Depends</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>The value of a parameter that is constant and is not referred by</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>on value of</p>
</blockquote></td>
<td></td>
<td></td>
<td>a Control element. This value must be sent on the wire by the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>xsi:type)</p>
</blockquote></td>
<td></td>
<td></td>
<td>order generating application.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>The following list give the type of this attribute based on the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>value of xsi:type.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>xsi:type</td>
<td></td>
<td><del><span class="underline">init</span></del></td>
<td>constValue type</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Int_t</td>
<td></td>
<td>int</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Length_t</td>
<td>positiveInteger</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>NumInGroup_t</td>
<td>positiveInteger</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>SeqNum_t</td>
<td>positiveInteger</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>TagNum_t</td>
<td>positiveInteger</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Float_t</td>
<td>decimal</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Qty_t</td>
<td>Qty</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Price_t</td>
<td>Price</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>PriceOffset_t</td>
<td>PriceOffset</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Amt_t</td>
<td>Amt</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Percentage_t</td>
<td>Percentage</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Char_t</td>
<td>char</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Boolean_t</td>
<td>B</td>
<td><del>B</del></td>
<td>oolean („Y‟/‟N‟)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>String_t</td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MultipleCharValue_t</td>
<td>MultipleCharValue</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Currency_t</td>
<td>Currency</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Exchange_t</td>
<td>Exchange</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MonthYear_t</td>
<td>MonthYear</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCTimestamp_t</td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCTimeOnly_t</td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>LocalMktDate_t</td>
<td>date</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCDateOnly_t</td>
<td>UTCDateOnly</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Data_t</td>
<td>Data</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MultipleStringValue_t</td>
<td>MultipleStringValue</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Country_t</td>
<td>Count<span class="underline">r</span>y</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Language_t</td>
<td>language</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>TZTimestamp_t</td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 29 FIXatdl v1.1 with Errata 20101221

+----------------+-----------+-----+----------------+--------------+
|                |           |     |              | TZTimeOnly |
|                |           |     |  TZTimeOnly\_t |              |
+================+===========+=====+================+==============+
|                |           |     | Tenor\_t     | Tenor      |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | When defined |              |
|                |           |     | in           |              |
|                |           |     | U            |              |
|                |           |     | TCTimestamp\_t |              |
|                |           |     | elements the |              |
|                |           |     | following    |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | apply:       |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | Contains     |              |
|                |           |     | only time    |              |
|                |           |     | information  |              |
|                |           |     | - not day,   |              |
|                |           |     | month or     |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | year.        |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | Used in      |              |
|                |           |     | conjunction  |              |
|                |           |     | with         |              |
|                |           |     | Paramete     |              |
|                |           |     | r\@localMktTz, |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | this value   |              |
|                |           |     | must be used |              |
|                |           |     | for the time |              |
|                |           |     | portion of a |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | UTCTimestamp |              |
|                |           |     | that is sent |              |
|                |           |     | on the wire  |              |
|                |           |     | by the order |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | generating   |              |
|                |           |     | application. |              |
|                |           |     | For example, |              |
|                |           |     | if           |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | constVa      |              |
|                |           |     | lue="08:30:00" |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | l            |              |
|                |           |     | ocalMktTz="Ame |              |
|                |           |     | rica/Chicago", |              |
|                |           |     | daylight     |              |
|                |           |     | savings      |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | time is in   |              |
|                |           |     | effect in    |              |
|                |           |     | Chicago and  |              |
|                |           |     | the date is  |              |
|                |           |     | July 1,      |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | 2010, then   |              |
|                |           |     | the value    |              |
|                |           |     | "2010        |              |
|                |           |     | 0701-13:30:00" |              |
|                |           |     | would be     |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | sent on the  |              |
|                |           |     | wire.        |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     |                |              |
+----------------+-----------+-----+----------------+--------------+
| Parameter/   | boolean | N | Indicates    |              |
| \@definedByFIX |           |     | whether the  |              |
|                |           |     | parameter is |              |
|                |           |     | a            |              |
|                |           |     | redefinition |              |
|                |           |     | of a         |              |
|                |           |     | standard     |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | FIX tag. The |              |
|                |           |     | default      |              |
|                |           |     | value is     |              |
|                |           |     | False.       |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | For example, |              |
|                |           |     | if the       |              |
|                |           |     | algorithm    |              |
|                |           |     | redefines    |              |
|                |           |     | the order    |              |
|                |           |     | qty (tag 38) |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | then the     |              |
|                |           |     | Parameter    |              |
|                |           |     | declaration  |              |
|                |           |     | may be       |              |
|                |           |     | similar to:  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | \<Parameter  |              |
|                |           |     | n            |              |
|                |           |     | ame="OrderQty" |              |
|                |           |     | xsi          |              |
|                |           |     | :type="Qty\_t" |              |
|                |           |     | fixTag="38"  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | defin        |              |
|                |           |     | edByFIX="true" |              |
|                |           |     | use          |              |
|                |           |     | ="required"/\|              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     |                |              |
+----------------+-----------+-----+----------------+--------------+
| Parameter/\@ | string  | N | Applicable   |              |
| falseWireValue |           |     | only when    |              |
|                |           |     | xsi:type is  |              |
|                |           |     | Boolean\_t.  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **This       |              |
|                |           |     | attribute is |              |
|                |           |     | targeted for |              |
|                |           |     |              |              |
|                |           |     | deprecation.** |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **To achieve |              |
|                |           |     | the same     |              |
|                |           |     |              |              |
|                |           |     | functionality, |              |
|                |           |     | it is        |              |
|                |           |     | recommended  |              |
|                |           |     | that a**     |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **Char\_t or |              |
|                |           |     | St[r]{.un    |              |
|                |           |     | derline}ing\_t |              |
|                |           |     | type         |              |
|                |           |     | parameter be |              |
|                |           |     | used instead |              |
|                |           |     | of a**       |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     |              |              |
|                |           |     |  **Boolean\_t. |              |
|                |           |     | The          |              |
|                |           |     | parameter    |              |
|                |           |     | should have  |              |
|                |           |     | two          |              |
|                |           |     | EnumPairs**  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **defined    |              |
|                |           |     | with one     |              |
|                |           |     | defining the |              |
|                |           |     | false        |              |
|                |           |     | wire-value   |              |
|                |           |     | and the      |              |
|                |           |     | other**      |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **defining   |              |
|                |           |     | the true     |              |
|                |           |     | wire-value.  |              |
|                |           |     | The          |              |
|                |           |     | parameter    |              |
|                |           |     | should be**  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **bound to a |              |
|                |           |     | CheckBox     |              |
|                |           |     | control. The |              |
|                |           |     | CheckBox     |              |
|                |           |     | control**    |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **should     |              |
|                |           |     | define the   |              |
|                |           |     | parameters   |              |
|                |           |     |              |              |
|                |           |     | checkedEnumRef |              |
|                |           |     | and**        |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **un         |              |
|                |           |     | checkedEnumRef |              |
|                |           |     | to refer to  |              |
|                |           |     | the enumIDs  |              |
|                |           |     | of the**     |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **parameter. |              |
|                |           |     | (See the     |              |
|                |           |     | section "A   |              |
|                |           |     | Sample       |              |
|                |           |     | FIXatdl      |              |
|                |           |     | Document"**  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **in this    |              |
|                |           |     | document for |              |
|                |           |     | an example.  |              |
|                |           |     | Examine the  |              |
|                |           |     | Parameter**  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | **"Allo      |              |
|                |           |     | wDarkPoolExec" |              |
|                |           |     | and Control  |              |
|                |           |     | "DPOption"   |              |
|                |           |     | for**        |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     |              |              |
|                |           |     |  **details.)** |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | The          |              |
|                |           |     | deprecated   |              |
|                |           |     | use is       |              |
|                |           |     | described as |              |
|                |           |     | follows:     |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | Defines the  |              |
|                |           |     | value with   |              |
|                |           |     | which to     |              |
|                |           |     | populate the |              |
|                |           |     | FIX message  |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | when the     |              |
|                |           |     | boolean      |              |
|                |           |     | parameter is |              |
|                |           |     | False.       |              |
|                |           |     | Overrides    |              |
|                |           |     | the standard |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     | FIX boolean  |              |
|                |           |     | value of     |              |
|                |           |     | "N". I.e. if |              |
|                |           |     | this         |              |
|                |           |     | attribute is |              |
|                |           |     | not provided |              |
+----------------+-----------+-----+----------------+--------------+
|                |           |     |                |              |
+----------------+-----------+-----+----------------+--------------+

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 30 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th>then the order-sending application must use “N”.</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>If it is desired that the FIX message is not to be populated with</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>this tag when the value of the parameter is false, then</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>falseWireValue should be defined as “{NULL}”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Parameter/@fixTag</p>
</blockquote></td>
<td><blockquote>
<p>pos int</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>The tag that will hold the value of the parameter.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Required when: parameter value is intended to be transported</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>over the wire.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>If fixTag is not provided then the Strategies-level attribute,</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>tag957Support, must be set to true, indicating that the order</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>recipient expects to receive algo parameters in the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>StrategyParameterGrp repeating group beginning at tag 957.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Parameter/@invertOnWire</p>
</blockquote></td>
<td><blockquote>
<p>boolean</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Applicable when: xsi:type is MultipleStringValue_t or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MultipleCharValue_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Instructs the OMS whether to perform a bitwise “not”</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>operation on each element of these lists.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Parameter/@localMktTz</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Describes the time zone without indicating whether daylight</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>savings is in effect. Valid values are taken from names in the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Olson time zone database. All are of the form Area/Location,</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>where Area is the name of a continent or ocean, and Location</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>is the name of a specific location within that region. E.g.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>America<del>s</del>/Chicago.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Applicable when xsi:type is UTCTimestamp_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Parameter/@maxLength</p>
</blockquote></td>
<td><blockquote>
<p>non-neg int</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Applicable when xsi:type is String_t, MultipleCharValue_t or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MultipleStringValue_t.<del>.</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>The m</td>
<td><del>in</del></td>
<td>aximum allowable length of the parameter.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Parameter/@maxValue</p>
</blockquote></td>
<td><blockquote>
<p>(Depends</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Maximum value of the parameter accepted by the algorithm</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>on value of</p>
</blockquote></td>
<td></td>
<td></td>
<td>provider.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>xsi:type)</p>
</blockquote></td>
<td></td>
<td></td>
<td>The following list give the type of this attribute based on the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>value of xsi:type.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>xsi:type</td>
<td></td>
<td>initValue type</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Int_t</td>
<td></td>
<td>int</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Float_t</td>
<td>decimal</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Qty_t</td>
<td>Qty</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Price_t</td>
<td>Price</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>PriceOffset_t</td>
<td>PriceOffset</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Amt_t</td>
<td>Amt</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Percentage_t</td>
<td>Percentage</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MonthYear_t</td>
<td>MonthYear</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 31 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th>UTCTimestamp_t</th>
<th>time</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCTimeOnly_t</td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>LocalMktDate_t</td>
<td>date</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCDateOnly_t</td>
<td>UTCDateOnly</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>TZTimestamp_t</td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>TZTimeOnly_t</td>
<td>TZTimeOnly</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Tenor_t</td>
<td>Tenor</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>This attribute is applicable only for the xsi:type values listed</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>above.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>maxValue has no default value.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>When defined in UTCTimestamp_t elements the following</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>applies:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Maximum local market time. Represents an instance</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>of time that recurs every day. Contains only time</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>information - not day, month or year.</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Used in conjunction with Parameter@localMktTz,</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>this value represents the maximum time of day</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>allowed for the parameter.</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Parameter/@minLength</p>
</blockquote></td>
<td><blockquote>
<p>non-neg int</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Applicable when xsi:type is String_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>The minimum allowable length of the parameter.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Parameter/@minValue</p>
</blockquote></td>
<td><blockquote>
<p>(Depends</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Minimum value of the parameter accepted by the algorithm</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>on value of</p>
</blockquote></td>
<td></td>
<td></td>
<td>provider.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>xsi:type)</p>
</blockquote></td>
<td></td>
<td></td>
<td>The following list give the type of this attribute based on the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>value of xsi:type. Default values, where applicable, are</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>provided, otherwise minValue has no default value.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>xsi:type</td>
<td></td>
<td>initValue type</td>
<td><blockquote>
<p>default</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Int_t</td>
<td></td>
<td>int</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Float_t</td>
<td>decimal</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Qty_t</td>
<td>Qty</td>
<td></td>
<td><blockquote>
<p>0</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Price_t</td>
<td>Price</td>
<td></td>
<td><blockquote>
<p>0</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>PriceOffset_t</td>
<td>PriceOffset</td>
<td></td>
<td><blockquote>
<p>0</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Amt_t</td>
<td>Amt</td>
<td><blockquote>
<p>0</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Percentage_t</td>
<td>Percentage</td>
<td></td>
<td><blockquote>
<p>0</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>MonthYear_t</td>
<td>MonthYear</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCTimestamp_t</td>
<td>UTCTimestamp</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCTimeOnly_t</td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>LocalMktDate_t</td>
<td>date</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>UTCDateOnly_t</td>
<td>UTCDateOnly</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>TZTimestamp_t</td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>TZTimeOnly_t</td>
<td>TZTimeOnly</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Tenor_t</td>
<td>Tenor</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

**Formatted:** No underline

![](media/image9.png){width="3.178472222222222in"
height="8.122916666666667in"}

December 21, 2010 32 FIXatdl v1.1 with Errata 20101221

+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | This        |   |   |   |
|             |             |     |   | attribute   |   |   |   |
|             |             |     |   | is          |   |   |   |
|             |             |     |   | applicable  |   |   |   |
|             |             |     |   | only for    |   |   |   |
|             |             |     |   | the         |   |   |   |
|             |             |     |   | xsi:type    |   |   |   |
|             |             |     |   | values      |   |   |   |
|             |             |     |   | listed      |   |   |   |
+=============+=============+=====+===+=============+===+===+===+
|             |             |     |   | above.      |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | When        |   |   |   |
|             |             |     |   | defined in  |   |   |   |
|             |             |     |   | UTCT        |   |   |   |
|             |             |     |   | imestamp\_t |   |   |   |
|             |             |     |   | the         |   |   |   |
|             |             |     |   | following   |   |   |   |
|             |             |     |   | applies:    |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | Minimum   |   |   |   |
|             |             |     |   | local     |   |   |   |
|             |             |     |   | market    |   |   |   |
|             |             |     |   | time.     |   |   |   |
|             |             |     |   |           |   |   |   |
|             |             |     |   |  Represents |   |   |   |
|             |             |     |   | an        |   |   |   |
|             |             |     |   | instance  |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | of time   |   |   |   |
|             |             |     |   | that      |   |   |   |
|             |             |     |   | recurs    |   |   |   |
|             |             |     |   | every     |   |   |   |
|             |             |     |   | day.      |   |   |   |
|             |             |     |   | Contains  |   |   |   |
|             |             |     |   | only time |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   |           |   |   |   |
|             |             |     |   | information |   |   |   |
|             |             |     |   | - not     |   |   |   |
|             |             |     |   | day,      |   |   |   |
|             |             |     |   | month or  |   |   |   |
|             |             |     |   | year.     |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | Used in   |   |   |   |
|             |             |     |   |           |   |   |   |
|             |             |     |   | conjunction |   |   |   |
|             |             |     |   | with      |   |   |   |
|             |             |     |   |           |   |   |   |
|             |             |     |   | Parameter\@ |   |   |   |
|             |             |     |   | localMktTz, |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | this      |   |   |   |
|             |             |     |   | value     |   |   |   |
|             |             |     |   |           |   |   |   |
|             |             |     |   |  represents |   |   |   |
|             |             |     |   | the       |   |   |   |
|             |             |     |   | minimum   |   |   |   |
|             |             |     |   | time of   |   |   |   |
|             |             |     |   | day       |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | allowed   |   |   |   |
|             |             |     |   | for the   |   |   |   |
|             |             |     |   |           |   |   |   |
|             |             |     |   |  parameter. |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   |             |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
| Par       | boolean   | N |   | Applicable  |   |   |   |
| ameter/\@mu |             |     |   | for         |   |   |   |
| ltiplyBy100 |             |     |   | xsi:type of |   |   |   |
|             |             |     |   | Per         |   |   |   |
|             |             |     |   | centage\_t. |   |   |   |
|             |             |     |   | If true     |   |   |   |
|             |             |     |   | then        |   |   |   |
|             |             |     |   | percent     |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | values must |   |   |   |
|             |             |     |   | be          |   |   |   |
|             |             |     |   | multiplied  |   |   |   |
|             |             |     |   | by 100      |   |   |   |
|             |             |     |   | before      |   |   |   |
|             |             |     |   | being sent  |   |   |   |
|             |             |     |   | on the      |   |   |   |
|             |             |     |   | wire.       |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | For         |   |   |   |
|             |             |     |   | example, if |   |   |   |
|             |             |     |   | mu          |   |   |   |
|             |             |     |   | ltiplyBy100 |   |   |   |
|             |             |     |   | were false  |   |   |   |
|             |             |     |   | then the    |   |   |   |
|             |             |     |   | percentage, |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | 75%, would  |   |   |   |
|             |             |     |   | be sent as  |   |   |   |
|             |             |     |   | 0.75 on the |   |   |   |
|             |             |     |   | wire.       |   |   |   |
|             |             |     |   | However, if |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | mu          |   |   |   |
|             |             |     |   | litplyBy100 |   |   |   |
|             |             |     |   | were true   |   |   |   |
|             |             |     |   | then 75     |   |   |   |
|             |             |     |   | would be    |   |   |   |
|             |             |     |   | sent on the |   |   |   |
|             |             |     |   | wire.       |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | If not      |   |   |   |
|             |             |     |   | provided it |   |   |   |
|             |             |     |   | should be   |   |   |   |
|             |             |     |   | interpreted |   |   |   |
|             |             |     |   | as false.   |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | **Use of    |   |   |   |
|             |             |     |   | this        |   |   |   |
|             |             |     |   | attribute   |   |   |   |
|             |             |     |   | is not      |   |   |   |
|             |             |     |   | r           |   |   |   |
|             |             |     |   | ecommended. |   |   |   |
|             |             |     |   | The         |   |   |   |
|             |             |     |   | m           |   |   |   |
|             |             |     |   | otivation** |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | **for this  |   |   |   |
|             |             |     |   | attribute   |   |   |   |
|             |             |     |   | is to       |   |   |   |
|             |             |     |   | maximize    |   |   |   |
|             |             |     |   | co          |   |   |   |
|             |             |     |   | mpatibility |   |   |   |
|             |             |     |   | with**      |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | **          |   |   |   |
|             |             |     |   | algorithmic |   |   |   |
|             |             |     |   | interfaces  |   |   |   |
|             |             |     |   | that are    |   |   |   |
|             |             |     |   | no          |   |   |   |
|             |             |     |   | n-compliant |   |   |   |
|             |             |     |   | with FIX    |   |   |   |
|             |             |     |   | in**        |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | **regard to |   |   |   |
|             |             |     |   | their       |   |   |   |
|             |             |     |   | handling of |   |   |   |
|             |             |     |   | p           |   |   |   |
|             |             |     |   | ercentages. |   |   |   |
|             |             |     |   | In these    |   |   |   |
|             |             |     |   | cases an**  |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | **integer   |   |   |   |
|             |             |     |   | parameter   |   |   |   |
|             |             |     |   | should be   |   |   |   |
|             |             |     |   | used        |   |   |   |
|             |             |     |   | instead of  |   |   |   |
|             |             |     |   | a           |   |   |   |
|             |             |     |   | pe          |   |   |   |
|             |             |     |   | rcentage.** |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   |             |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
| Param     | boolean   | N |   | Indication  |   |   |   |
| eter/\@muta |             |     |   | of whether  |   |   |   |
| bleOnCxlRpl |             |     |   | the         |   |   |   |
|             |             |     |   | parameter‟s |   |   |   |
|             |             |     |   | value can   |   |   |   |
|             |             |     |   | be modified |   |   |   |
|             |             |     |   | by          |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | an Order    |   |   |   |
|             |             |     |   | Can         |   |   |   |
|             |             |     |   | cel/Replace |   |   |   |
|             |             |     |   | Request     |   |   |   |
|             |             |     |   | message.    |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | Default     |   |   |   |
|             |             |     |   | value: true |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   |             |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
| Param     | string    | Y |   | The name of |   |   |   |
| eter/\@name |             |     |   | the         |   |   |   |
|             |             |     |   | parameter.  |   |   |   |
|             |             |     |   | No two      |   |   |   |
|             |             |     |   | parameters  |   |   |   |
|             |             |     |   | of any      |   |   |   |
|             |             |     |   | strategy    |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |           |     |   | may have    |   |   |   |
|             |  restricted |     |   | the same    |   |   |   |
|             | to        |     |   | name. The   |   |   |   |
|             |             |     |   | name may be |   |   |   |
|             |             |     |   | used as a   |   |   |   |
|             |             |     |   | unique      |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             | \"\[A-Za- |     |   | key when    |   |   |   |
|             |             |     |   | referenced  |   |   |   |
|             |             |     |   | from the    |   |   |   |
|             |             |     |   | other       |   |   |   |
|             |             |     |   | s           |   |   |   |
|             |             |     |   | ub-schemas. |   |   |   |
|             |             |     |   | Names must  |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             | z\        |     |   | begin with  |   |   |   |
|             | ]\[A-za-z0- |     |   | an alpha    |   |   |   |
|             |             |     |   | character   |   |   |   |
|             |             |     |   | followed    |   |   |   |
|             |             |     |   | only by     |   |   |   |
|             |             |     |   | al          |   |   |   |
|             |             |     |   | pha-numeric |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             | 9         |     |   | characters  |   |   |   |
|             | \_\]{0,255} |     |   | and must    |   |   |   |
|             |             |     |   | not contain |   |   |   |
|             |             |     |   | whitespace  |   |   |   |
|             |             |     |   | characters. |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             | \"        |     |   |             |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   |             |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|           | non-neg   | N |   | The number  |   |   |   |
|  Parameter/ | int       |     |   | of digits   |   |   |   |
| \@precision |             |     |   | to the      |   |   |   |
|             |             |     |   | right of    |   |   |   |
|             |             |     |   | the decimal |   |   |   |
|             |             |     |   | point in    |   |   |   |
|             |             |     |   | which       |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | to round    |   |   |   |
|             |             |     |   | when        |   |   |   |
|             |             |     |   | populating  |   |   |   |
|             |             |     |   | the FIX     |   |   |   |
|             |             |     |   | message.    |   |   |   |
|             |             |     |   | Lack of     |   |   |   |
|             |             |     |   | this        |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | attribute   |   |   |   |
|             |             |     |   | indicates   |   |   |   |
|             |             |     |   | that the    |   |   |   |
|             |             |     |   | value       |   |   |   |
|             |             |     |   | entered by  |   |   |   |
|             |             |     |   | the user    |   |   |   |
|             |             |     |   | should be   |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | taken as-is |   |   |   |
|             |             |     |   | without     |   |   |   |
|             |             |     |   | rounding.   |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | *           |   |   |   |
|             |             |     |   | *Applicable |   |   |   |
|             |             |     |   | when**      |   |   |   |
|             |             |     |   | xsi:type is |   |   |   |
|             |             |     |   | Float\_t,   |   |   |   |
|             |             |     |   | Price\_t,   |   |   |   |
|             |             |     |   | Pri         |   |   |   |
|             |             |     |   | ceOffset\_t |   |   |   |
|             |             |     |   | and         |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | Qty\_t.     |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   |             |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
| Para      | boolean   | N |   | Indicates   |   |   |   |
| meter/\@rev |             |     |   | how to      |   |   |   |
| ertOnCxlRpl |             |     |   | interpret   |   |   |   |
|             |             |     |   | those tags  |   |   |   |
|             |             |     |   | that were   |   |   |   |
|             |             |     |   | populated   |   |   |   |
|             |             |     |   | in an       |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | original    |   |   |   |
|             |             |     |   | order but   |   |   |   |
|             |             |     |   | are not     |   |   |   |
|             |             |     |   | populated   |   |   |   |
|             |             |     |   | in a        |   |   |   |
|             |             |     |   | subsequent  |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | can         |   |   |   |
|             |             |     |   | cel/replace |   |   |   |
|             |             |     |   | of the      |   |   |   |
|             |             |     |   | order       |   |   |   |
|             |             |     |   | message. If |   |   |   |
|             |             |     |   | this value  |   |   |   |
|             |             |     |   | is true     |   |   |   |
|             |             |     |   | then        |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   | revert to   |   |   |   |
|             |             |     |   | the value   |   |   |   |
|             |             |     |   | of the      |   |   |   |
|             |             |     |   | original    |   |   |   |
|             |             |     |   | order,      |   |   |   |
|             |             |     |   | otherwise a |   |   |   |
|             |             |     |   | null value  |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+
|             |             |     |   |             |   |   |   |
+-------------+-------------+-----+---+-------------+---+---+---+

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 33 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th>or the parameter‟s default value (Control/@initValue) is to be</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>used or if none is specified, the parameter is to be omitted.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Default value: false</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>NOTE:</strongAlthough revertOnCxlRpl and mutableOnCxlRpl</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>might appear to be mutually exclusive, this is not strictly the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>case, and as the default value for mutableOnCxlRpl is „true‟, it</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>is recommended practice to explicitly include</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>mutableOnCxlRpl=“false”</strongif the option revertOnCxlRpl=</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>“true” is set for a given parameter (assuming of course this is</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>the intended behaviour).</td>
<td><del>Indicates how to interpret those tags</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><del>that were populated in an original order but are not populated</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><del>in a subsequent cancel/replace of the order message. If this</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><del>value is true then revert to the value of the original order,</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><del>otherwise a null value or the parameter‟s default value is to be</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><del>used.</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Parameter/@trueWireValue</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Applicable only when xsi:type is Boolean_t.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>This attribute is targeted for deprecation.</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>To achieve the same functionality, it is recommended that a</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>Char_t or St<span class="underline">r</span>ing_t type parameter be used instead of a</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>Boolean_t. The parameter should have two EnumPairs</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>defined with one defining the false wire-value and the other</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>defining the true wire-value. The parameter should be</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>bound to a CheckBox control. The CheckBox control</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>should define the parameters checkedEnumRef and</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>uncheckedEnumRef to refer to the enumIDs of the</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>parameter. See the section “A Sample FIXatdl Document”</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>in this document for an example. (See the section “A</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>Sample FIXatdl Document” in this document for an</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>example. Examine the Parameter “AllowDarkPoolExec”</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>and Control “DPOption” for details.)</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>The deprecated use is described as follows:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Defines the value with which to populate the FIX message</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>when the boolean parameter is True. Overrides the standard</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>FIX boolean value of “Y”. I.e. if this attribute is not provided</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>then the order-sending application must use “Y”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>If it is desired that the FIX message is not to be populated with</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>this tag when the value of the parameter is true, then</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>trueWireValue should be defined as “{NULL}”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Parameter/@use</p>
</blockquote></td>
<td><blockquote>
<p>Use_t</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Indicates whether a parameter is optional or required. Valid</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>values are “optional” and “required”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>Default value: “optional”</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Parameter/@xsi:type</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Indicates the type of the parameter. The type of the parameter</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td>determines which of the extended attributes are applicable. The</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 34 FIXatdl v1.1 with Errata 20101221

+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     | n       |   |           |   |   |   |
|           |          |     | amespace, |   |           |   |   |   |
|           |          |     | xsi,    |   |           |   |   |   |
|           |          |     | must be |   |           |   |   |   |
|           |          |     |         |   |           |   |   |   |
|           |          |     |  declared |   |           |   |   |   |
|           |          |     | within  |   |           |   |   |   |
|           |          |     | the     |   |           |   |   |   |
|           |          |     | S       |   |           |   |   |   |
|           |          |     | trategies |   |           |   |   |   |
|           |          |     | element |   |           |   |   |   |
+===========+==========+=====+===========+===+===========+===+===+===+
|           |          |     | with    |   |           |   |   |   |
|           |          |     | the     |   |           |   |   |   |
|           |          |     | s       |   |           |   |   |   |
|           |          |     | tatement: |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     | xmlns:x |   |           |   |   |   |
|           |          |     | si=[http: |   |           |   |   |   |
|           |          |     | //www.w3. |   |           |   |   |   |
|           |          |     | org/2001/ |   |           |   |   |   |
|           |          |     | XMLSchema |   |           |   |   |   |
|           |          |     | -instance |   |           |   |   |   |
|           |          |     | .](http:/ |   |           |   |   |   |
|           |          |     | /www.w3.o |   |           |   |   |   |
|           |          |     | rg/2001/X |   |           |   |   |   |
|           |          |     | MLSchema- |   |           |   |   |   |
|           |          |     | instance) |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     | Valid   |   |           |   |   |   |
|           |          |     | values  |   |           |   |   |   |
|           |          |     | are:    |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Amt\_t    |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | B         |   |   |   |
|           |          |     |           |   | oolean\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Char\_t   |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | C         |   |   |   |
|           |          |     |           |   | ountry\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Cu        |   |   |   |
|           |          |     |           |   | rrency\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Data\_t   |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Ex        |   |   |   |
|           |          |     |           |   | change\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Float\_t  |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Int\_t    |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | La        |   |   |   |
|           |          |     |           |   | nguage\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Length\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | LocalM    |   |   |   |
|           |          |     |           |   | ktDate\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Mon       |   |   |   |
|           |          |     |           |   | thYear\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Mu        |   |   |   |
|           |          |     |           |   | ltipleCha |   |   |   |
|           |          |     |           |   | rValue\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Mult      |   |   |   |
|           |          |     |           |   | ipleStrin |   |   |   |
|           |          |     |           |   | gValue\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | NumI      |   |   |   |
|           |          |     |           |   | nGroup\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Perc      |   |   |   |
|           |          |     |           |   | entage\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Price\_t  |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Price     |   |   |   |
|           |          |     |           |   | Offset\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Qty\_t    |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | SeqNum\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | String\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | TagNum\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | Tenor\_t  |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | TZTi      |   |   |   |
|           |          |     |           |   | meOnly\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | TZTim     |   |   |   |
|           |          |     |           |   | estamp\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | UTCDa     |   |   |   |
|           |          |     |           |   | teOnly\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | UTCTi     |   |   |   |
|           |          |     |           |   | meOnly\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | UTCTim    |   |   |   |
|           |          |     |           |   | estamp\_t |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|         | string | Y |         |   |           |   |   |   |
| Region/\@ |          |     | Indicates |   |           |   |   |   |
| inclusion |          |     | whether |   |           |   |   |   |
|           |          |     | this    |   |           |   |   |   |
|           |          |     | region  |   |           |   |   |   |
|           |          |     | should  |   |           |   |   |   |
|           |          |     | be      |   |           |   |   |   |
|           |          |     |         |   |           |   |   |   |
|           |          |     |  included |   |           |   |   |   |
|           |          |     | or      |   |           |   |   |   |
|           |          |     |         |   |           |   |   |   |
|           |          |     |  excluded |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     | when    |   |           |   |   |   |
|           |          |     |         |   |           |   |   |   |
|           |          |     |  declared |   |           |   |   |   |
|           |          |     | within  |   |           |   |   |   |
|           |          |     | a list  |   |           |   |   |   |
|           |          |     | of      |   |           |   |   |   |
|           |          |     |         |   |           |   |   |   |
|           |          |     |  regions. |   |           |   |   |   |
|           |          |     | Valid   |   |           |   |   |   |
|           |          |     | values: |   |           |   |   |   |
|           |          |     | are     |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     | "       |   |           |   |   |   |
|           |          |     | Include", |   |           |   |   |   |
|           |          |     | "       |   |           |   |   |   |
|           |          |     | Exclude". |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
| Regi    | String | Y | The     |   |           |   |   |   |
| on/\@name |          |     | name of |   |           |   |   |   |
|           |          |     | the     |   |           |   |   |   |
|           |          |     | region. |   |           |   |   |   |
|           |          |     | Valid   |   |           |   |   |   |
|           |          |     | values  |   |           |   |   |   |
|           |          |     | are:    |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | "The      |   |   |   |
|           |          |     |           |   | Americas" |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | "Europ    |   |   |   |
|           |          |     |           |   | eMiddleEa |   |   |   |
|           |          |     |           |   | stAfrica" |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   | "AsiaPaci |   |   |   |
|           |          |     |           |   | ficJapan" |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
| Repea   | int    | N | The FIX |   |           |   |   |   |
| tingGroup |          |     | tag     |   |           |   |   |   |
| /\@fixTag |          |     | corr    |   |           |   |   |   |
|           |          |     | esponding |   |           |   |   |   |
|           |          |     | to a    |   |           |   |   |   |
|           |          |     | NoXXX   |   |           |   |   |   |
|           |          |     | tag.    |   |           |   |   |   |
|           |          |     |         |   |           |   |   |   |
|           |          |     | Indicates |   |           |   |   |   |
|           |          |     | that    |   |           |   |   |   |
|           |          |     | the     |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |         |   |           |   |   |   |
|           |          |     | Parameter |   |           |   |   |   |
|           |          |     |         |   |           |   |   |   |
|           |          |     |  elements |   |           |   |   |   |
|           |          |     | defined |   |           |   |   |   |
|           |          |     | within  |   |           |   |   |   |
|           |          |     | the     |   |           |   |   |   |
|           |          |     | Repea   |   |           |   |   |   |
|           |          |     | tingGroup |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+
|           |          |     |           |   |           |   |   |   |
+-----------+----------+-----+-----------+---+-----------+---+---+---+

![](media/image10.png){width="2.779166666666667in"
height="4.127777777777778in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 35 FIXatdl v1.1 with Errata 20101221

+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | element |         |         |   |
|         |         |     |   | are     |         |         |   |
|         |         |     |   | re      |         |         |   |
|         |         |     |   | peating |         |         |   |
|         |         |     |   | group   |         |         |   |
|         |         |     |   | tags    |         |         |   |
|         |         |     |   | when    |         |         |   |
|         |         |     |   | sent    |         |         |   |
|         |         |     |   | over    |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | wire.   |         |         |   |
+=========+=========+=====+===+=========+=========+=========+===+
|         |         |     |   | Valid   |         |         |   |
|         |         |     |   | values  |         |         |   |
|         |         |     |   | are:    |         |         |   |
|         |         |     |   | 555     |         |         |   |
|         |         |     |   | (       |         |         |   |
|         |         |     |   | NoLegs) |         |         |   |
|         |         |     |   | and 68  |         |         |   |
|         |         |     |   | (TotNoO |         |         |   |
|         |         |     |   | rders). |         |         |   |
|         |         |     |   | In the  |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | case    |         |         |   |
|         |         |     |   | where   |         |         |   |
|         |         |     |   | fix     |         |         |   |
|         |         |     |   | Tag=68, |         |         |   |
|         |         |     |   | either  |         |         |   |
|         |         |     |   | m       |         |         |   |
|         |         |     |   | ultiple |         |         |   |
|         |         |     |   | NewOrd  |         |         |   |
|         |         |     |   | er-List |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | m       |         |         |   |
|         |         |     |   | essages |         |         |   |
|         |         |     |   | may be  |         |         |   |
|         |         |     |   | sent    |         |         |   |
|         |         |     |   | where   |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | total   |         |         |   |
|         |         |     |   | number  |         |         |   |
|         |         |     |   | of      |         |         |   |
|         |         |     |   | orders  |         |         |   |
|         |         |     |   | over    |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | the     |         |         |   |
|         |         |     |   | entire  |         |         |   |
|         |         |     |   | list    |         |         |   |
|         |         |     |   | must be |         |         |   |
|         |         |     |   | equal   |         |         |   |
|         |         |     |   | to      |         |         |   |
|         |         |     |   | St      |         |         |   |
|         |         |     |   | rategy/ |         |         |   |
|         |         |     |   | \@total |         |         |   |
|         |         |     |   | Orders, |         |         |   |
|         |         |     |   | or      |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | m       |         |         |   |
|         |         |     |   | ultiple |         |         |   |
|         |         |     |   | N       |         |         |   |
|         |         |     |   | ewOrder |         |         |   |
|         |         |     |   | -Single |         |         |   |
|         |         |     |   | m       |         |         |   |
|         |         |     |   | essages |         |         |   |
|         |         |     |   | may be  |         |         |   |
|         |         |     |   | sent    |         |         |   |
|         |         |     |   | where   |         |         |   |
|         |         |     |   | total   |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | number  |         |         |   |
|         |         |     |   | of      |         |         |   |
|         |         |     |   | orders  |         |         |   |
|         |         |     |   | must be |         |         |   |
|         |         |     |   | equal   |         |         |   |
|         |         |     |   | to      |         |         |   |
|         |         |     |   | St      |         |         |   |
|         |         |     |   | rategy/ |         |         |   |
|         |         |     |   | \@total |         |         |   |
|         |         |     |   | Orders. |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
| Rep   | int   | N |   | The     |         |         |   |
| eatingG |         |     |   | maximum |         |         |   |
| roup/\@ |         |     |   | number  |         |         |   |
| maxSize |         |     |   | of legs |         |         |   |
|         |         |     |   | or list |         |         |   |
|         |         |     |   | orders. |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
| Rep   | int   | Y |   | The     |         |         |   |
| eatingG |         |     |   | minimum |         |         |   |
| roup/\@ |         |     |   | number  |         |         |   |
| minSize |         |     |   | of legs |         |         |   |
|         |         |     |   | or list |         |         |   |
|         |         |     |   | orders. |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|       |       | N |   | FIX     |         |         |   |
| Repeati |  string |     |   | Field   |         |         |   |
| ngGroup |         |     |   | name of |         |         |   |
| /\@name |         |     |   | the     |         |         |   |
|         |         |     |   | re      |         |         |   |
|         |         |     |   | peating |         |         |   |
|         |         |     |   | group.  |         |         |   |
|         |         |     |   | Must    |         |         |   |
|         |         |     |   | refer   |         |         |   |
|         |         |     |   | to a    |         |         |   |
|         |         |     |   | FIX     |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | field   |         |         |   |
|         |         |     |   | of      |         |         |   |
|         |         |     |   | Num     |         |         |   |
|         |         |     |   | InGroup |         |         |   |
|         |         |     |   | type.   |         |         |   |
|         |         |     |   | Valid   |         |         |   |
|         |         |     |   | values  |         |         |   |
|         |         |     |   | are:    |         |         |   |
|         |         |     |   | \       |         |         |   |
|         |         |     |   | "TotNoO |         |         |   |
|         |         |     |   | rders\" |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | (when   |         |         |   |
|         |         |     |   | NewOrd  |         |         |   |
|         |         |     |   | er-List |         |         |   |
|         |         |     |   | m       |         |         |   |
|         |         |     |   | essages |         |         |   |
|         |         |     |   | are     |         |         |   |
|         |         |     |   | exp     |         |         |   |
|         |         |     |   | ected), |         |         |   |
|         |         |     |   | \"N     |         |         |   |
|         |         |     |   | oLegs\" |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | (when   |         |         |   |
|         |         |     |   | New     |         |         |   |
|         |         |     |   | Order-M |         |         |   |
|         |         |     |   | ultileg |         |         |   |
|         |         |     |   | m       |         |         |   |
|         |         |     |   | essages |         |         |   |
|         |         |     |   | are     |         |         |   |
|         |         |     |   | exp     |         |         |   |
|         |         |     |   | ected). |         |         |   |
|         |         |     |   | This    |         |         |   |
|         |         |     |   | field   |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | should  |         |         |   |
|         |         |     |   | be      |         |         |   |
|         |         |     |   | omitted |         |         |   |
|         |         |     |   | when    |         |         |   |
|         |         |     |   | N       |         |         |   |
|         |         |     |   | ewOrder |         |         |   |
|         |         |     |   | -Single |         |         |   |
|         |         |     |   | message |         |         |   |
|         |         |     |   | are     |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | ex      |         |         |   |
|         |         |     |   | pected. |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
| Sec   |       | Y |   | In      |         |         |   |
| urityTy |  string |     |   | dicates |         |         |   |
| pe/\@in |         |     |   | whether |         |         |   |
| clusion |         |     |   | this    |         |         |   |
|         |         |     |   | s       |         |         |   |
|         |         |     |   | ecurity |         |         |   |
|         |         |     |   | type    |         |         |   |
|         |         |     |   | should  |         |         |   |
|         |         |     |   | be      |         |         |   |
|         |         |     |   | i       |         |         |   |
|         |         |     |   | ncluded |         |         |   |
|         |         |     |   | or      |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | e       |         |         |   |
|         |         |     |   | xcluded |         |         |   |
|         |         |     |   | from    |         |         |   |
|         |         |     |   | encom   |         |         |   |
|         |         |     |   | passing |         |         |   |
|         |         |     |   | list.   |         |         |   |
|         |         |     |   | Valid   |         |         |   |
|         |         |     |   | values: |         |         |   |
|         |         |     |   | are     |         |         |   |
|         |         |     |   | "In     |         |         |   |
|         |         |     |   | clude", |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | "Ex     |         |         |   |
|         |         |     |   | clude". |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
| Secur |       | Y |   | In      |         |         |   |
| ityType |  string |     |   | dicates |         |         |   |
| /\@name |         |     |   | type of |         |         |   |
|         |         |     |   | se      |         |         |   |
|         |         |     |   | curity. |         |         |   |
|         |         |     |   | Valid   |         |         |   |
|         |         |     |   | values  |         |         |   |
|         |         |     |   | equ     |         |         |   |
|         |         |     |   | ivalent |         |         |   |
|         |         |     |   | to FIX  |         |         |   |
|         |         |     |   | tag     |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | 167     |         |         |   |
|         |         |     |   | values. |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | P       |         |         |   |
|         |         |     |   | revious |         |         |   |
|         |         |     |   | v       |         |         |   |
|         |         |     |   | ersions |         |         |   |
|         |         |     |   | of      |         |         |   |
|         |         |     |   | FIXatdl |         |         |   |
|         |         |     |   | had     |         |         |   |
|         |         |     |   | r       |         |         |   |
|         |         |     |   | equired |         |         |   |
|         |         |     |   | the use |         |         |   |
|         |         |     |   | of the  |         |         |   |
|         |         |     |   | first   |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | ch      |         |         |   |
|         |         |     |   | aracter |         |         |   |
|         |         |     |   | of a    |         |         |   |
|         |         |     |   | CFICode |         |         |   |
|         |         |     |   | to      |         |         |   |
|         |         |     |   | d       |         |         |   |
|         |         |     |   | escribe |         |         |   |
|         |         |     |   | s       |         |         |   |
|         |         |     |   | ecurity |         |         |   |
|         |         |     |   | types.  |         |         |   |
|         |         |     |   | To      |         |         |   |
|         |         |     |   | migrate |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | from    |         |         |   |
|         |         |     |   | CFICode |         |         |   |
|         |         |     |   | refer   |         |         |   |
|         |         |     |   | to the  |         |         |   |
|         |         |     |   | fo      |         |         |   |
|         |         |     |   | llowing |         |         |   |
|         |         |     |   | m       |         |         |   |
|         |         |     |   | apping: |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | FIXatdl |         | FIX     |   |
|         |         |     |   | 1.0     |         | atdl1.1 |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | E       | CS      |         |   |
|         |         |     |   | \[Equ   | \       |         |   |
|         |         |     |   | ities\] | [Common |         |   |
|         |         |     |   |         | Stock\] |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | D       | \<see   |         |   |
|         |         |     |   | \[Debt  | tag 167 |         |   |
|         |         |     |   | Instru  | list\ |         |   |
|         |         |     |   | ments\] |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | R       | \<see   |         |   |
|         |         |     |   | \[Enti  | tag 167 |         |   |
|         |         |     |   | tlement | list\ |         |   |
|         |         |     |   | R       |         |         |   |
|         |         |     |   | ights\] |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | O       | OPT     |         |   |
|         |         |     |   | \[Op    | \[Op    |         |   |
|         |         |     |   | tions\] | tions\] |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | F       | FUT     |         |   |
|         |         |     |   | \[Fu    | \[Fu    |         |   |
|         |         |     |   | tures\] | tures\] |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | M       | \<see   |         |   |
|         |         |     |   | \[      | tag 167 |         |   |
|         |         |     |   | Other/M | list\ |         |   |
|         |         |     |   | iscella |         |         |   |
|         |         |     |   | neous\] |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         | FXSPOT  |   |
|         |         |     |   |         |         | \[FX    |   |
|         |         |     |   |         |         | Spot\]  |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         | FXFWD   |   |
|         |         |     |   |         |         | \[FX    |   |
|         |         |     |   |         |         | Fo      |   |
|         |         |     |   |         |         | rward\] |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
| State |       | N |   | In      |         |         |   |
| Rule/\@ | boolean |     |   | dicates |         |         |   |
| enabled |         |     |   | whether |         |         |   |
|         |         |     |   | or not  |         |         |   |
|         |         |     |   | to      |         |         |   |
|         |         |     |   | enable  |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | control |         |         |   |
|         |         |     |   | when    |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | edit    |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | exp     |         |         |   |
|         |         |     |   | ression |         |         |   |
|         |         |     |   | of the  |         |         |   |
|         |         |     |   | strat   |         |         |   |
|         |         |     |   | egyEdit |         |         |   |
|         |         |     |   | element |         |         |   |
|         |         |     |   | ev      |         |         |   |
|         |         |     |   | aluates |         |         |   |
|         |         |     |   | to      |         |         |   |
|         |         |     |   | True.   |         |         |   |
|         |         |     |   | The     |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | desired |         |         |   |
|         |         |     |   | b       |         |         |   |
|         |         |     |   | ehavior |         |         |   |
|         |         |     |   | is as   |         |         |   |
|         |         |     |   | f       |         |         |   |
|         |         |     |   | ollows: |         |         |   |
|         |         |     |   | when    |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | Stat    |         |         |   |
|         |         |     |   | eRule‟s |         |         |   |
|         |         |     |   | edit    |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | co      |         |         |   |
|         |         |     |   | ndition |         |         |   |
|         |         |     |   | is true |         |         |   |
|         |         |     |   | and     |         |         |   |
|         |         |     |   | enabl   |         |         |   |
|         |         |     |   | ed=True |         |         |   |
|         |         |     |   | then    |         |         |   |
|         |         |     |   | enable  |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | c       |         |         |   |
|         |         |     |   | ontrol; |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | when    |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | edit    |         |         |   |
|         |         |     |   | co      |         |         |   |
|         |         |     |   | ndition |         |         |   |
|         |         |     |   | is true |         |         |   |
|         |         |     |   | and     |         |         |   |
|         |         |     |   | enable  |         |         |   |
|         |         |     |   | d=false |         |         |   |
|         |         |     |   | then    |         |         |   |
|         |         |     |   | disable |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | the     |         |         |   |
|         |         |     |   | c       |         |         |   |
|         |         |     |   | ontrol; |         |         |   |
|         |         |     |   | when    |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | edit    |         |         |   |
|         |         |     |   | co      |         |         |   |
|         |         |     |   | ndition |         |         |   |
|         |         |     |   | is      |         |         |   |
|         |         |     |   | false   |         |         |   |
|         |         |     |   | and     |         |         |   |
|         |         |     |   | enab    |         |         |   |
|         |         |     |   | le=True |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | then    |         |         |   |
|         |         |     |   | disable |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | c       |         |         |   |
|         |         |     |   | ontrol; |         |         |   |
|         |         |     |   | when    |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | edit    |         |         |   |
|         |         |     |   | co      |         |         |   |
|         |         |     |   | ndition |         |         |   |
|         |         |     |   | is      |         |         |   |
|         |         |     |   | false   |         |         |   |
|         |         |     |   | and     |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   | enable  |         |         |   |
|         |         |     |   | d=false |         |         |   |
|         |         |     |   | then    |         |         |   |
|         |         |     |   | enable  |         |         |   |
|         |         |     |   | the     |         |         |   |
|         |         |     |   | c       |         |         |   |
|         |         |     |   | ontrol. |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+
|         |         |     |   |         |         |         |   |
+---------+---------+-----+---+---------+---------+---------+---+

December 21, 2010 36 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th>The value of a control‟s “enabled” property does not play a</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>role in determining whether a value is populated when a FIX</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>order message is generated. Ie. a control‟s “enabled” property</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>does not influence what goes out on the wire.</td>
<td><del>the control‟s</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>StateRule/@value</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>GUI control's displayed value should be set to this value when</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>edit condition is true. Although the type of this attribute has</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>been listed as string, ultimately the type of this attribute must</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>be compatible with the type of the control. For example, if the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>control is numeric, such as a SingleSpinner, then a string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>containing a numeric value would an appropriate value (e.g.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“15”).</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>If the control contains ListItem elements then allowable values</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>of StateRule/@value is restricted to the enumIDs of the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>ListItem elements.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>A special token, “{NULL}”, may be used for the value of this</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute to indicate that the control should be set to an</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><del>uninitiated</del></td>
<td>uninitialized state. Controls that are un-initialized</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>should have no value. The effect of an un-initialized</td>
<td><del>ted</del></td>
<td><blockquote>
<p>control</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>is as follows: When an order is to be generated, the controls</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>which are linked to parameters will have their values retrieved.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>If there is no retrieved value because the control was un-</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>initialized then the parameter should have no value and its</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>associated FIX tag should be excluded from the message. This</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>is relevant only for controls that can be in an un-initialized</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>state such as spinners and text fields. Controls such as check</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>boxes and radio buttons are always initialized. (They are either</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>checked or unchecked.)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>StateRule/@visible</p>
</blockquote></td>
<td><blockquote>
<p>boolean</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Indicates whether or not to show the control when the boolean</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>expression, defined by the Edit element, evaluates to True. The</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>desired behavior is as follows: when the StateRule‟s edit</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>condition is true and visible=True then display the control;</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>when the edit condition is true and visible=false then hide the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>control; when the edit condition is false and visible=True then</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>hide the control; when the edit condition is false and</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>enabled=false then display the control.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Strategies/@changeStrategyOnC</p>
</blockquote></td>
<td><blockquote>
<p>boolean</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Indicates whether a new strategy can be chosen during a</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>xlRpl</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td>Cancel/Replace.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Strategies/@draftFlagIdentifierT</p>
</blockquote></td>
<td><blockquote>
<p>pos int</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>The tag within the FIX order message to be populated with a</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>ag</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>boolean ('Y'/'N') indicating whether the order is a draft.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Strategies/@imageLocation</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td><blockquote>
<p>N</p>
</blockquote></td>
<td></td>
<td>Filepath or URL of an image file or logo of the algo providing</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>firm.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 37 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th><blockquote>
<p>Strategies/@strategyIdentifierTa</p>
</blockquote></th>
<th></th>
<th>pos int</th>
<th></th>
<th></th>
<th>Y</th>
<th></th>
<th></th>
<th>The tag within the FIX order message to be populated with a</th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>g</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>value identifying the chosen strategy. E.g. if</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>strategyIdentifierTag is 5001 and the chosen strategy is</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>identified by the value 'VWAP' then the FIX order message</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>would contain the tag-value pair 5001=VWAP.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Strategies/@versionIdentifierTag</p>
</blockquote></td>
<td></td>
<td>pos int</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>The tag within the FIX order message to be populated with a</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>value identifying the version of a chosen strategy. For example,</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>if versionIdentifierTag is 5002 and the version of the chosen</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>strategy is '2.01' then the FIX order message would contain the</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>tag-value pair 5001=2.01</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Strategies/@tag957Support</p>
</blockquote></td>
<td></td>
<td>boolean</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>Indicates whether the order recipient can receive algorithmic</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>parameters in the StrategyParametersGrp component block, a</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>repeating group starting at tag 957. If this mode of parameter</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>transport is not supported then the fixTag attribute of all</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Parameter elements is required.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Default value: false.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>Strategy/@commonIDTag</td>
<td></td>
<td></td>
<td>non-neg int</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>Used to denote where to place a common basket ID when</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>linking together single orders.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Strategy/@disclosureDoc</p>
</blockquote></td>
<td></td>
<td>anyURI</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>URL of a disclosure document supplied by the algorithm</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>provider.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Strategy/@fixMsgType</p>
</blockquote></td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>Indicates the FIX message to use when transmitting the order.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Values taken from FIX tag 35. Can be one of “D” (NewOrder-</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Single), “E” (NewOrder-List), “AB” (NewOrder-Multileg), or</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>“s” (NewOrder-Cross).</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Strategy/@imageLocation</p>
</blockquote></td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>File path or URL of an image file or logo of this particular</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>strategy.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Strategy/@name</p>
</blockquote></td>
<td></td>
<td>StringID</td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td></td>
<td>Unique identifier of a strategy. Strategy names must be unique</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>per provider.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Strategy/@orderSequenceTag</p>
</blockquote></td>
<td></td>
<td>Non-neg</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>Used to denote the tag which will contain the sequence number</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td>int</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>of a particular order of a basket.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Strategy/@providerID</p>
</blockquote></td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>Identifies the firm providing the algorithm.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Strategy/@providerSubID</p>
</blockquote></td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>A further level of firm identification.</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Strategy/@sentOrderLink</p>
</blockquote></td>
<td></td>
<td>anyURI</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td></td>
<td>Prefix portion of a URL to access the order or draft at the target</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>e.g. https://xyz.com/algo/dashboard?SenderCompID= OMS</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>appends to this the specific SenderCompID string, an</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>ampersand "ClOrdID=" and the specific ClOrdID-string.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Trader hits this full URL to communicate regarding the order</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>or draft. See additional documentation.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 38 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th></th>
<th>Strategy/@totalLegs</th>
<th></th>
<th>non-neg int</th>
<th></th>
<th></th>
<th>N</th>
<th></th>
<th>Used when msgType is AB and denotes number of repeating</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>legs.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>Strategy/@totalOrders</td>
<td></td>
<td>non-neg int</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>Used to denote number of repeating orders in a NewOrder-List</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>message or a basket of NewOrder-Single messages.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Strategy/@totalOrdersTag</td>
<td></td>
<td>non-neg int</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>In basket trading, used to denote where to place the total</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>number of orders of a basket.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>Strategy/@uiRep</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>The name of the strategy as rendered in the UI. If not provided</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>then the “name” attribute should be used. (This is the value</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>rendered on the UI when the user is presented with a choice of</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>algorithms.)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Strategy/@version</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td>Information to facilitate version control</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Strategy/@wireValue</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td>The value used to identify the algorithm. The tag referred to by</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Strategy/@strategyIdentifierTag</td>
<td><del>fixTag</del></td>
<td><blockquote>
<p>will be set to this value.</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>StrategyEdit/@errorMsg</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td>The</td>
<td><del>his</del></td>
<td><blockquote>
<p>error message to display when the boolean expression</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>defined by StrategyEdit/Edit evaluates to False.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>StrategyPanel/@border</td>
<td></td>
<td>Border</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>Recommended border for the panel.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Valid values are:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>None</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Line</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>StrategyPanel/@collapsed</td>
<td></td>
<td>boolean</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>Initial visual state of a panel. Indicates whether a panel is</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>initially drawn in a collapsed state.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Default value: false</td>
<td><del>true</del></td>
<td>.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>StrategyPanel/@collapsible</td>
<td></td>
<td>boolean</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>Indicates whether panel can be collapsed.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Default value: false.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>(Note that the default value may conflict with the default value</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>defined in the schema file, fixatdl-layout.xsd. To avoid conflict</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>it is recommended that this attribute be treated as a required</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute.)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>StrategyPanel/@color</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>The background color of a panel. The value should appear as</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>the RBG combination separated by commas.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>It is recommended that vendors ignore this attribute and</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>rely on their own color scheme.</strong></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>StrategyPanel/@orientation</td>
<td></td>
<td>Orientation</td>
<td></td>
<td></td>
<td>Y</td>
<td><del>N</del></td>
<td></td>
<td>Must be “HORIZONTAL” or “VERTICAL”. Declares the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>orientation of the components (parameters or nested</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>strategyPanels) within a strategyPanel.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>StrategyPanel/@title</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td>N</td>
<td></td>
<td>Title that appears in the panel border.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}

December 21, 2010 39 FIXatdl v1.1 with Errata 20101221

December 21, 2010 40 FIXatdl v1.1 with Errata 20101221

[]{#page41 .anchor}

**Parameter Type-Attribute Matrix**

<table>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Parameter attribute</strong></p>
</blockquote></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th><strong>MultipleCharValue_</strong></th>
<th></th>
<th><strong>MultipleStringValue</strong></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td><strong>Amt t_</strong></td>
<td><blockquote>
<p><strong>Boolean t</strong></p>
</blockquote></td>
<td></td>
<td><strong>Char t_</strong></td>
<td></td>
<td><strong>Country t_</strong></td>
<td></td>
<td><strong>Currency t</strong></td>
<td></td>
<td><strong>_Datat</strong></td>
<td><blockquote>
<p><strong>Exchange t</strong></p>
</blockquote></td>
<td></td>
<td><strong>Float t_</strong></td>
<td></td>
<td><strong>Int t_</strong></td>
<td></td>
<td><strong>Language t</strong></td>
<td></td>
<td><strong>Length t_</strong></td>
<td></td>
<td><strong>LocalMktDate t</strong></td>
<td><blockquote>
<p><strong>MonthYear t</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>NumInGroup t</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Percentage t</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>_Pricet</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>PriceOffset t</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>Qty t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>SeqNum t</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>String t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>TagNum t</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>Tenor t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>TZTimeOnly t</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>TZTimestamp t</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>UTCDateOnly t</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>UTCTimeOnly t</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>UTCTimestamp t</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>definedByFIX</strong></p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td>O</td>
<td>O</td>
<td>O</td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td>O</td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>fixTag</strong></p>
</blockquote></td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>C</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>C</td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td></td>
<td>C</td>
<td></td>
<td>C</td>
<td></td>
<td>C</td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td></td>
<td>C</td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td>C</td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>mutableOnCxlRpl</strong></p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>name</strong></p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>revertOnCxlRpl</strong></p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>use</strong></p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>xsi:type</strong></p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td></td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>constValue</strong></p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>falseWireValue</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>X</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>invertOnWire</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>localMktTz</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>maxLength</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>maxValue</strong></p>
</blockquote></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td>O</td>
<td></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>minLength</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>minValue</strong></p>
</blockquote></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td>O</td>
<td></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>multiplyBy100</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>X</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>precision</strong></p>
</blockquote></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>trueWireValue</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>X</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Blank=Not Applicable, Y=Required, C=Conditional, O=Optional, X=Deprecated/NotRecommended</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 41 FIXatdl v1.1 with Errata 20101221

[]{#page42 .anchor}

**Control Type-Attribute Matrix**

<table>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Control attribute</strong></p>
</blockquote></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th><blockquote>
<p><strong>EditableDropDownLis</strong></p>
</blockquote></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td><blockquote>
<p><strong>_CheckBoxt</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>CheckBoxList t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>_Clockt</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>_DoubleSpinnert</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>DropDownList t_</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><strong>_HiddenFieldt</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Label t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>MultiSelectList t_</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p><strong>RadioButton t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>RadioButtonList t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>SingleSelectList t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>SingleSpinner t_</strong></p>
</blockquote></td>
<td><blockquote>
<p><strong>Slider t_</strong></p>
</blockquote></td>
<td></td>
<td><strong>_TextFieldt</strong></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>disableForTemplate</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>ID</strong></p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>initFixField</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>initPolicy</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>label</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>parameterRef</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>tooltip</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>xsi:type</strong></p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td><blockquote>
<p>Y</p>
</blockquote></td>
<td></td>
<td>Y</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>checkedEnumRef</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>increment</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>incrementPolicy</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p><del>O</del></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>initValue</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>initValueMode</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>innerIncrement</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>innerIncrementPolicy</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>localMktTz</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>C</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>orientation</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>outerIncrement</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>outerIncrementPolicy</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p><strong>radioGroup</strong></p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>uncheckedEnumRef</strong></p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p><strong>ListItem[0..1]</strong></p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td>O</td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td><blockquote>
<p>O</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><blockquote>
<p>Blank=Not Applicable, Y=Required, C=Conditional,</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><blockquote>
<p>O=Optional, X=Deprecated/NotRecommended</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

**Type Definitions**
>
The types of the attribute listed in the previous table are defined
here. Many of these datatypes have been leveraged from the FIXML
schema file fixml-datatypes-5-0.xsd. Some come from the XML Schema
namespace
[[http://www.w3.org/2001/XMLSchema]{.underline}.](http://www.w3.org/2001/XMLSchema)
All others have been defined explicitly within the FIXatdl schema
files.

+-----------------+--------------+-----------------------------------+
| **Type Name** | **Source** | **Description**                 |
+=================+==============+===================================+
|                 |              |                                   |
+-----------------+--------------+-----------------------------------+
| Amt           | FIXML      | Float value typically           |
|                 |              | representing a Price times a    |
|                 |              | Qty.                            |
+-----------------+--------------+-----------------------------------+
|                 |              |                                   |
+-----------------+--------------+-----------------------------------+

December 21, 2010 42 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th><blockquote>
<p>anyURI</p>
</blockquote></th>
<th></th>
<th>XML Schema</th>
<th></th>
<th>This datatype represents a URI, which includes web page addresses</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>(commonly called URLs).</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>boolean</p>
</blockquote></td>
<td></td>
<td>XML Schema</td>
<td></td>
<td>Valid values are “true” and “false”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Boolean</p>
</blockquote></td>
<td></td>
<td>FIXML</td>
<td></td>
<td>Character field containing one of two values: „Y‟ (for True/Yes),</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>„N‟ (for False/No).</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Border</p>
</blockquote></td>
<td></td>
<td>FIXatdl</td>
<td></td>
<td>Enumerated type describing the border of a panel. Valid values are:</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>None</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>Line</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>char</p>
</blockquote></td>
<td></td>
<td>XML Schema</td>
<td></td>
<td>Char value, can include any alphanumeric character or punctuation</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>except the delimiter. All char fields are case sensitive (i.e. m != M).</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Restricted to the pattern ".{1}".</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Country</td>
<td></td>
<td>FIXML</td>
<td></td>
<td>String representing a country using ISO 3166 Country code (2</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>characters) values.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Currency</p>
</blockquote></td>
<td></td>
<td>FIXML</td>
<td></td>
<td>String representing a currency type using ISO 4217 Currency code</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>(3 characters) values.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Data</p>
</blockquote></td>
<td></td>
<td>FIXML</td>
<td></td>
<td>String containing raw data with no format or content restrictions.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Data fields are always immediately preceded by a length field. The</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>length field should specify the number of bytes of the value of the</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>data field (up to but not including the terminating SOH). Caution:</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>the value of one of these fields may contain the delimiter (SOH)</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>character. Note that the value specified for this field should be</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>followed by the delimiter (SOH) character as all fields are</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>terminated with an “SOH”.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Not applicable to FIXatdl.</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>decimal</p>
</blockquote></td>
<td></td>
<td>XML Schema</td>
<td></td>
<td>The XML Schema built-in datatype representing arbitrary precision</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>decimal numbers.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>double</p>
</blockquote></td>
<td></td>
<td>XML Schema</td>
<td></td>
<td>The XML Schema built-in datatype, double.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Exchange</p>
</blockquote></td>
<td></td>
<td>FIXML</td>
<td></td>
<td>String representing a market or exchange - ISO 10383 Market</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Identifier Code (MIC).</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>int</p>
</blockquote></td>
<td></td>
<td>XML Schema</td>
<td></td>
<td>An integer. May be negative.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>language</p>
</blockquote></td>
<td></td>
<td>XML Schema</td>
<td></td>
<td>String identifier for a national language - uses ISO 639-1 standard.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Examples:</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>en</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>fr</p>
</blockquote></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Length</p>
</blockquote></td>
<td></td>
<td>FIXML</td>
<td></td>
<td>Int representing a length in bytes. Value must be positive.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image2.jpeg){width="9.305555555555556e-2in"
height="0.125in"}![](media/image11.png){width="9.305555555555556e-2in"
height="0.26944444444444443in"}

December 21, 2010 43 FIXatdl v1.1 with Errata 20101221

+--------------------------+--------------+--------------------------+
| LocalMktTz             | FIXatdl    | An enumeration type    |
|                          |              | consisting of the      |
|                          |              | timezone database (or  |
|                          |              | Olson                  |
+==========================+==============+==========================+
|                          |              | database) codes for    |
|                          |              | various timezones      |
|                          |              | around the world. For  |
+--------------------------+--------------+--------------------------+
|                          |              | example:               |
|                          |              | "Europe/Zurich". Note  |
|                          |              | that these codes do    |
|                          |              | not provide            |
+--------------------------+--------------+--------------------------+
|                          |              | GMT offset or daylight |
|                          |              | savings information.   |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| MonthYear              | FIXML      | String field           |
|                          |              | representing month of  |
|                          |              | a year. An optional    |
|                          |              | day of the             |
+--------------------------+--------------+--------------------------+
|                          |              | month can be appended  |
|                          |              | or an optional week    |
|                          |              | code. Valid formats:   |
+--------------------------+--------------+--------------------------+
|                          |              | YYYYMM YYYYMMDD        |
|                          |              | YYYYMMWW YYYY =        |
|                          |              | 0000-9999,             |
+--------------------------+--------------+--------------------------+
|                          |              | MM = 01-12, DD =       |
|                          |              | 01-31, WW = w1, w2,    |
|                          |              | w3, w4, w5.            |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| MultipleCharValue      | FIXML      | String field           |
|                          |              | containing one or more |
|                          |              | space delimited char   |
|                          |              | values.                |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| MultipleStringValue    | FIXML      | String field           |
|                          |              | containing one or more |
|                          |              | space delimited string |
|                          |              | values.                |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| Orientation            | FIXatdl    | Enumerated type        |
|                          |              | describing the         |
|                          |              | orientation of a group |
|                          |              | of GUI                 |
+--------------------------+--------------+--------------------------+
|                          |              | components or          |
|                          |              | controls. Valid        |
|                          |              | values: "HORIZONTAL",  |
+--------------------------+--------------+--------------------------+
|                          |              | "VERTICAL".            |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| Percentage             | FIXML      | Float value            |
|                          |              | representing a         |
|                          |              | percentage (e.g. .05   |
|                          |              | represents 5% and      |
+--------------------------+--------------+--------------------------+
|                          |              | .9525 represents       |
|                          |              | 95.25%). Note the      |
|                          |              | number of decimal      |
|                          |              | places may             |
+--------------------------+--------------+--------------------------+
|                          |              | vary.                  |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| positiveInteger        | XML Schema | An integer greater     |
| (posint)               |              | than or equal to 0.    |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| Price                  | FIXML      | Float value            |
|                          |              | representing a price.  |
|                          |              | Note the number of     |
|                          |              | decimal places         |
+--------------------------+--------------+--------------------------+
|                          |              | may vary. For certain  |
|                          |              | asset classes, prices  |
|                          |              | may be negative        |
|                          |              | values.                |
+--------------------------+--------------+--------------------------+
|                          |              | For example, prices    |
|                          |              | for options strategies |
|                          |              | can be negative under  |
+--------------------------+--------------+--------------------------+
|                          |              | certain market         |
|                          |              | conditions. Refer to   |
|                          |              | Volume 7: FIX Usage by |
+--------------------------+--------------+--------------------------+
|                          |              | Product for asset      |
|                          |              | classes that support   |
|                          |              | negative price values. |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| PriceOffset            | FIXML      | Float value            |
|                          |              | representing a price   |
|                          |              | offset, which can be   |
|                          |              | mathematically         |
+--------------------------+--------------+--------------------------+
|                          |              | added to a \"Price\".  |
|                          |              | Note the number of     |
|                          |              | decimal places may     |
|                          |              | vary and               |
+--------------------------+--------------+--------------------------+
|                          |              | some fields such as    |
|                          |              | LastForwardPoints may  |
|                          |              | be negative.           |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| Qty                    | FIXML      | float value capable of |
|                          |              | storing either a whole |
|                          |              | number (no decimal     |
+--------------------------+--------------+--------------------------+
|                          |              | places) of "shares"    |
|                          |              | (securities            |
|                          |              | denominated in whole   |
|                          |              | units) or a            |
+--------------------------+--------------+--------------------------+
|                          |              | decimal value          |
|                          |              | containing decimal     |
|                          |              | places for non-share   |
|                          |              | quantity               |
+--------------------------+--------------+--------------------------+
|                          |              | asset classes          |
|                          |              | (securities            |
|                          |              | denominated in         |
|                          |              | fractional units).     |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| SeqNum                 | FIXML      | Int representing a     |
|                          |              | message sequence       |
|                          |              | number. Value must be  |
+--------------------------+--------------+--------------------------+
|                          |              | positive.              |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| string                 | XML Schema | The string datatype    |
|                          |              | represents character   |
|                          |              | strings in XML.        |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| StringID               | FIXatdl    | String with pattern    |
|                          |              | restriction            |
|                          |              | \"\[A-Za-z\]\          |
|                          |              | [A-za-z0-9\_\]{0,255}\". |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| time                   | XML Schema | Time specified in the  |
|                          |              | format "hh:mm\[:ss\]"  |
|                          |              | or "hh:mm\[:ss\]{+,-   |
+--------------------------+--------------+--------------------------+
|                          |              | }hh:mm". In the later  |
|                          |              | format the offset from |
|                          |              | UTC is provided.       |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+
| date                   | XML Schema | The date data type is  |
|                          |              | used to specify a      |
|                          |              | date. The date is      |
|                          |              | specified in           |
+--------------------------+--------------+--------------------------+
|                          |              | the following form     |
|                          |              | \"YYYY-MM-DD\" where:  |
+--------------------------+--------------+--------------------------+
|                          |              |                          |
+--------------------------+--------------+--------------------------+

December 21, 2010 44 FIXatdl v1.1 with Errata 20101221

+---------------+---------+------------------------------------------+
|               |         | YYYY indicates the year                |
+===============+=========+==========================================+
|               |         | MM indicates the month                 |
+---------------+---------+------------------------------------------+
|               |         | DD indicates the day                   |
+---------------+---------+------------------------------------------+
|               |         |                                          |
+---------------+---------+------------------------------------------+
| TZTimestamp | FIXML | String field representing a time/date  |
|               |         | combination representing local         |
+---------------+---------+------------------------------------------+
|               |         | time with an offset to UTC to allow    |
|               |         | identification of local time and       |
+---------------+---------+------------------------------------------+
|               |         | timezone offset of that time. The      |
|               |         | representation is based on ISO         |
+---------------+---------+------------------------------------------+
|               |         | 8601\.                                 |
+---------------+---------+------------------------------------------+
|               |         | Format is YYYYMMDD-HH:MM:SS\[Z \| \[ + |
|               |         | \| - hh\[:mm\]\]\] where               |
+---------------+---------+------------------------------------------+
|               |         | YYYY = 0000 to 9999, MM = 01-12, DD =  |
|               |         | 01-31 HH = 00-23                       |
+---------------+---------+------------------------------------------+
|               |         | hours, MM = 00-59 minutes, SS = 00-59  |
|               |         | seconds, hh = 01-12 offset             |
+---------------+---------+------------------------------------------+
|               |         | hours, mm = 00-59 offset minutes       |
+---------------+---------+------------------------------------------+
|               |         | Example: 20060901-07:39Z is 07:39 UTC  |
|               |         | on 1st of September                    |
+---------------+---------+------------------------------------------+
|               |         | 2006                                   |
+---------------+---------+------------------------------------------+
|               |         | Example: 20060901-02:39-05 is five     |
|               |         | hours behind UTC, thus                 |
+---------------+---------+------------------------------------------+
|               |         | Eastern Time on 1st of September 2006  |
+---------------+---------+------------------------------------------+
|               |         | Example: 20060901-15:39+08 is eight    |
|               |         | hours ahead of UTC, Hong               |
+---------------+---------+------------------------------------------+
|               |         | Kong/Singapore time on 1st of          |
|               |         | September 2006                         |
+---------------+---------+------------------------------------------+
|               |         | Example: 20060901-13:09+05:30 is 5.5   |
|               |         | hours ahead of UTC, India              |
+---------------+---------+------------------------------------------+
|               |         | time on 1st of September 2006.         |
+---------------+---------+------------------------------------------+
|               |         |                                          |
+---------------+---------+------------------------------------------+
| TZTimeOnly  | FIXML | String field representing the time     |
|               |         | represented based on ISO 8601.         |
+---------------+---------+------------------------------------------+
|               |         | This is the time with a UTC offset to  |
|               |         | allow identification of local          |
+---------------+---------+------------------------------------------+
|               |         | time and timezone of that time.        |
+---------------+---------+------------------------------------------+
|               |         | Format is HH:MM\[:SS\]\[Z \| \[ + \| - |
|               |         | hh\[:mm\]\]\] where HH = 00-23         |
+---------------+---------+------------------------------------------+
|               |         | hours, MM = 00-59 minutes, SS = 00-59  |
|               |         | seconds, hh = 01-12 offset             |
+---------------+---------+------------------------------------------+
|               |         | hours, mm = 00-59 offset minutes.      |
+---------------+---------+------------------------------------------+
|               |         | Example: 07:39Z is 07:39 UTC           |
+---------------+---------+------------------------------------------+
|               |         | Example: 02:39-05 is five hours behind |
|               |         | UTC, thus Eastern Time                 |
+---------------+---------+------------------------------------------+
|               |         | Example: 15:39+08 is eight hours ahead |
|               |         | of UTC, Hong                           |
+---------------+---------+------------------------------------------+
|               |         | Kong/Singapore time                    |
+---------------+---------+------------------------------------------+
|               |         | Example: 13:09+05:30 is 5.5 hours      |
|               |         | ahead of UTC, India time.              |
+---------------+---------+------------------------------------------+
|               |         |                                          |
+---------------+---------+------------------------------------------+
| Tenor       | FIXML | Pattern used to allow the expression   |
|               |         | of FX standard tenors in               |
+---------------+---------+------------------------------------------+
|               |         | addition to the base valid             |
|               |         | enumerations defined for the field     |
|               |         | that                                   |
+---------------+---------+------------------------------------------+
|               |         | uses this pattern data type. This      |
|               |         | pattern data type is defined as        |
+---------------+---------+------------------------------------------+
|               |         | follows:                               |
+---------------+---------+------------------------------------------+
|               |         | Dx = tenor expression for \"days\",    |
|               |         | e.g. \"D5\", where \"x\" is any        |
+---------------+---------+------------------------------------------+
|               |         | integer \0                           |
+---------------+---------+------------------------------------------+
|               |         | Mx = tenor expression for \"months\",  |
|               |         | e.g. \"M3\", where \"x\" is any        |
+---------------+---------+------------------------------------------+
|               |         | integer \0                           |
+---------------+---------+------------------------------------------+
|               |         | Wx = tenor expression for \"weeks\",   |
|               |         | e.g. \"W13\", where \"x\" is any       |
+---------------+---------+------------------------------------------+
|               |         | integer \0                           |
+---------------+---------+------------------------------------------+
|               |         |                                          |
+---------------+---------+------------------------------------------+

![](media/image12.png){width="9.305555555555556e-2in"
height="0.4097222222222222in"}

December 21, 2010 45 FIXatdl v1.1 with Errata 20101221

+----------------+---------+-----------------------------------------+
|                |         | Yx = tenor expression for \"years\",  |
|                |         | e.g. \"Y1\", where \"x\" is any       |
+================+=========+=========================================+
|                |         | integer \0                          |
+----------------+---------+-----------------------------------------+
|                |         |                                         |
+----------------+---------+-----------------------------------------+
| UTCDateOnly  | FIXML | String Date represented in UTC        |
|                |         | (Universal Time Coordinated, also     |
+----------------+---------+-----------------------------------------+
|                |         | known as "GMT") in YYYYMMDD format.   |
|                |         | This special-purpose                  |
+----------------+---------+-----------------------------------------+
|                |         | field is paired with UTCTimeOnly to   |
|                |         | form a proper UTCTimestamp            |
+----------------+---------+-----------------------------------------+
|                |         | for bandwidth-sensitive messages.     |
+----------------+---------+-----------------------------------------+
|                |         | Valid values:                         |
+----------------+---------+-----------------------------------------+
|                |         | YYYY = 0000-9999, MM = 01-12, DD =    |
|                |         | 01-31.                                |
+----------------+---------+-----------------------------------------+
|                |         |                                         |
+----------------+---------+-----------------------------------------+
| UTCTimeOnly  | FIXML | String Time-only represented in UTC   |
|                |         | (Universal Time Coordinated,          |
+----------------+---------+-----------------------------------------+
|                |         | also known as \"GMT\") in either      |
|                |         | HH:MM:SS (whole seconds) or           |
+----------------+---------+-----------------------------------------+
|                |         | HH:MM:SS.sss (milliseconds) format,   |
|                |         | colons, and period required.          |
+----------------+---------+-----------------------------------------+
|                |         | This special-purpose field is paired  |
|                |         | with UTCDateOnly to form a            |
+----------------+---------+-----------------------------------------+
|                |         | proper UTCTimestamp for               |
|                |         | bandwidth-sensitive messages.         |
+----------------+---------+-----------------------------------------+
|                |         | Valid values:                         |
+----------------+---------+-----------------------------------------+
|                |         | HH = 00-23, MM = 00-60 (60 only if    |
|                |         | UTC leap second), SS =                |
+----------------+---------+-----------------------------------------+
|                |         | 00-59. (without milliseconds)         |
+----------------+---------+-----------------------------------------+
|                |         | HH = 00-23, MM = 00-59, SS = 00-60    |
|                |         | (60 only if UTC leap                  |
+----------------+---------+-----------------------------------------+
|                |         | second), sss=000-999 (indicating      |
|                |         | milliseconds).                        |
+----------------+---------+-----------------------------------------+
|                |         |                                         |
+----------------+---------+-----------------------------------------+
| UTCTimestamp | FIXML | String representing Time/date         |
|                |         | combination represented in UTC        |
+----------------+---------+-----------------------------------------+
|                |         | (Universal Time Coordinated, also     |
|                |         | known as "GMT") in either             |
+----------------+---------+-----------------------------------------+
|                |         | YYYYMMDD-HH:MM:SS (whole seconds) or  |
|                |         | YYYYMMDD-                             |
+----------------+---------+-----------------------------------------+
|                |         | HH:MM:SS.sss (milliseconds) format,   |
|                |         | colons, dash, and period              |
+----------------+---------+-----------------------------------------+
|                |         | required.                             |
+----------------+---------+-----------------------------------------+
|                |         | Valid values:                         |
+----------------+---------+-----------------------------------------+
|                |         | YYYY = 0000-9999, MM = 01-12, DD =    |
|                |         | 01-31, HH = 00-23,                    |
+----------------+---------+-----------------------------------------+
|                |         | MM = 00-59, SS = 00-60 (60 only if    |
|                |         | UTC leap second) (without             |
+----------------+---------+-----------------------------------------+
|                |         | milliseconds).                        |
+----------------+---------+-----------------------------------------+
|                |         | YYYY = 0000-9999, MM = 01-12, DD =    |
|                |         | 01-31, HH = 00-23,                    |
+----------------+---------+-----------------------------------------+
|                |         | MM = 00-59, SS = 00-60 (60 only if    |
|                |         | UTC leap second), sss=000-            |
+----------------+---------+-----------------------------------------+
|                |         | 999 (indicating milliseconds).        |
+----------------+---------+-----------------------------------------+
|                |         | Leap Seconds: Note that UTC includes  |
|                |         | corrections for leap seconds,         |
+----------------+---------+-----------------------------------------+
|                |         | which are inserted to account for     |
|                |         | slowing of the rotation of the        |
+----------------+---------+-----------------------------------------+
|                |         | earth. Leap second insertion is       |
|                |         | declared by the International Earth   |
+----------------+---------+-----------------------------------------+
|                |         | Rotation Service (IERS) and has,      |
|                |         | since 1972, only occurred on the      |
+----------------+---------+-----------------------------------------+
|                |         | night of Dec. 31 or Jun 30. The IERS  |
|                |         | considers March 31 and                |
+----------------+---------+-----------------------------------------+
|                |         | September 30 as secondary dates for   |
|                |         | leap second insertion, but has        |
+----------------+---------+-----------------------------------------+
|                |         | never utilized these dates. During a  |
|                |         | leap second insertion, a              |
+----------------+---------+-----------------------------------------+
|                |         | UTCTimestamp field may read           |
|                |         | \"19981231-23:59:59\", \"19981231-    |
+----------------+---------+-----------------------------------------+
|                |         | 23:59:60\", \"19990101-00:00:00\".    |
|                |         | (see                                  |
+----------------+---------+-----------------------------------------+
|                |         |                                         |
+----------------+---------+-----------------------------------------+

December 21, 2010 46 FIXatdl v1.1 with Errata 20101221

http://tycho.usno.navy.mil/leapsec.html)

December 21, 2010 47 FIXatdl v1.1 with Errata 20101221

[]{#page48 .anchor}

**Abstract Element Extensions**

There are two elements in the schema that are defined as abstract. For
example, they cannot be included in an ATDL document without being
extended by another element via the XML Schema extension element. All
instances of these elements must indicate a derived type that is not
abstract via use of the attribute xsi:type defined in the namespace
[[http://www.w3.org/2001/XMLSchema-instance]{.underline}.](http://www.w3.org/2001/XMLSchema-instance)

**Parameter Element Extension**

Custom parameters received by an algorithmic order recipient must be of
a type known to the recipient. For example, if the recipient is
expecting a floating point number in a particular tag then the order
sender must make certain that an actual floating point number goes in
that tag. FIXatdl requires that any custom parameter to an algorithm
must be of a type defined by the FIX Protocol. So the schema provides a
set of complex types that are used to extend the Parameter element.
These complex types directly correspond to the enumeration type
description of tag 959 in the FIX 5.0 specification.

It is required that each Parameter element be extended by setting the
attribute xsi:type equal to the name of one of the FIXatdl parameter
extension types. An abstract Parameter element has the following
attributes (which are described in the section "Attribute Definitions"):

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

name

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

fixTag

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

use

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

mutableOnCxlRpl

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

revertOnCxlRpl

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

definedByFIX

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

xsi:type

When the Parameter element is extended it gains several more attributes
depending on the element to which it is extended.

The types of these attributes are also dependent on the extended element
and may vary from one Parameter to another.

The following table presents the xsi:type names, the expected data type
of the wire-value and the extended attributes that apply only to the
specific parameter extension type.

+----------------+----------------+----------------+----------------+
| **Parameter  | *            | **Extended   |                |
| xsi:type**   | *Corresponding | attributes   |                |
|                | FIX**        | specific to  |                |
|                |                | xsi:type**   |                |
+================+================+================+================+
|                |                |                |                |
+----------------+----------------+----------------+----------------+
|                | **5.0 Type** |                |                |
+----------------+----------------+----------------+----------------+
|                |                | **Attribute  | **Attribute  |
|                |                | Name**       | Type**       |
+----------------+----------------+----------------+----------------+
|                |                |                |                |
+----------------+----------------+----------------+----------------+
| Amt\_t       | Amt          | minValue     | decimal      |
+----------------+----------------+----------------+----------------+
|                |                |                |                |
+----------------+----------------+----------------+----------------+
|                |                | maxValue     | decimal      |
+----------------+----------------+----------------+----------------+
|                |                |                |                |
+----------------+----------------+----------------+----------------+
|                |                | constValue   | decimal      |
+----------------+----------------+----------------+----------------+
|                |                |                |                |
+----------------+----------------+----------------+----------------+
| Boolean\_t   | Boolean      |              | string       |
|                |                |  trueWireValue |                |
|                |                |              |                |
|                |                | *(Deprecated)* |                |
+----------------+----------------+----------------+----------------+
|                |                |                |                |
+----------------+----------------+----------------+----------------+
|                |                |              | string       |
|                |                | falseWireValue |                |
|                |                |              |                |
|                |                | *(Deprecated)* |                |
+----------------+----------------+----------------+----------------+
|                |                |                |                |
+----------------+----------------+----------------+----------------+

December 21, 2010 48 FIXatdl v1.1 with Errata 20101221

                                                                      constValue                         boolean                                               
  -- ---------------------- -- ------------------- -- ------------ -- ----------------- ---------------- ------------------- ------------- ------------- -- -- --

     Char\_t                   char                   constValue      char                                                                                     

     Country\_t                Country                constValue      Country                                                                                  

     Currency\_t               Currency               constValue      string                                                                                   

     Data\_t                   data                   minLength       Length                                                                                   

                                                                      maxLength                          Length                                                

                                                                      constValue                         Data                                                  

     Exchange\_t               Exchange               constValue      Exchange                                                                                 

     Float\_t                  float                  minValue        decimal                                                                                  

                                                                      maxValue                           decimal                                               

                                                                      constValue                         decimal                                               

                                                                      precision         ~~constValue~~                       non-neg int   ~~decimal~~         

     Int\_t                    int                    minValue        int                                                                                      

                                                                      maxValue                           int                                                   

                                                                      constValue                         int                                                   

     Language\_t               Language               constValue      language                                                                                 

     Length\_t                 Length                 constValue      positiveInteger                                                                          

     LocalMktDate\_t           LocalMktDate           minValue        LocalMktDate                                                                             

                                                                      maxValue                           LocalMktDate                                          

                                                                      constValue                         LocalMktDate                                          

     MonthYear\_t              month-year             minValue        MonthYear                                                                                

                                                                      maxValue                           MonthYear                                             

                                                                      constValue                         MonthYear                                             

     MultipleCharValue\_t      MultipleCharValue      minLength       Length                                                                                   

                                                                      maxLength                          Length                                                

                                                                      constValue                         MultipleCharValue                                     

                                                                      invertOnWire                       boolean                                               


December 21, 2010 49 FIXatdl v1.1 with Errata 20101221

<table>
<thead>
<tr class="header">
<th><blockquote>
<p>MultipleStringValue_t</p>
</blockquote></th>
<th><blockquote>
<p>MultipleStringValue</p>
</blockquote></th>
<th></th>
<th>minLength</th>
<th></th>
<th>Length</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>maxLength</td>
<td></td>
<td>Length</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>constValue</td>
<td></td>
<td>MultipleStringValue</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>invertOnWire</td>
<td></td>
<td>boolean</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>NumInGroup_t</p>
</blockquote></td>
<td><blockquote>
<p>NumInGroup</p>
</blockquote></td>
<td></td>
<td>constValue</td>
<td></td>
<td>positiveInteger</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Percentage_t</p>
</blockquote></td>
<td><blockquote>
<p>Percentage</p>
</blockquote></td>
<td></td>
<td>minValue</td>
<td></td>
<td>Percentage</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>maxValue</td>
<td></td>
<td>Percentage</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>constValue</td>
<td></td>
<td>Percentage</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>multiplyBy100</td>
<td></td>
<td>boolean</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Price_t</p>
</blockquote></td>
<td><blockquote>
<p>Price</p>
</blockquote></td>
<td></td>
<td>minValue</td>
<td></td>
<td>Price</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>maxValue</td>
<td></td>
<td>Price</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>constValue</td>
<td></td>
<td>Price</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>precision</td>
<td><del>constValue</del></td>
<td></td>
<td>non-neg int</td>
<td><del>Price</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>PriceOffset_t</p>
</blockquote></td>
<td><blockquote>
<p>PriceOffset</p>
</blockquote></td>
<td></td>
<td>minValue</td>
<td></td>
<td>PriceOffset</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>maxValue</td>
<td></td>
<td>PriceOffset</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>constValue</td>
<td></td>
<td>PriceOffset</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>precision</td>
<td><del>constValue</del></td>
<td></td>
<td>non-neg int</td>
<td><del>PriceOffset</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Qty_t</p>
</blockquote></td>
<td><blockquote>
<p>Qty</p>
</blockquote></td>
<td></td>
<td>minValue</td>
<td></td>
<td>Qty</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>maxValue</td>
<td></td>
<td>Qty</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>constValue</td>
<td></td>
<td>Qty</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>precision</td>
<td><del>constValue</del></td>
<td></td>
<td>non-neg int</td>
<td><del>Qty</del></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>SeqNum_t</p>
</blockquote></td>
<td><blockquote>
<p>SeqNum</p>
</blockquote></td>
<td></td>
<td>constValue</td>
<td></td>
<td>positiveInteger</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>String_t</p>
</blockquote></td>
<td><blockquote>
<p>string</p>
</blockquote></td>
<td></td>
<td>minLength</td>
<td></td>
<td>Length</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>maxLength</td>
<td></td>
<td>Length</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td>constValue</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>TagNum_t</p>
</blockquote></td>
<td><blockquote>
<p>int</p>
</blockquote></td>
<td></td>
<td>constValue</td>
<td></td>
<td>positiveInteger</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Tenor_t</p>
</blockquote></td>
<td><blockquote>
<p>Tenor</p>
</blockquote></td>
<td></td>
<td>constValue</td>
<td></td>
<td>Tenor</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 50 FIXatdl v1.1 with Errata 20101221

+-------------------+----------------+--------------+---------------+
| UTCDateOnly\_t  | UTCDateOnly  | minValue   | UTCDateOnly |
+===================+================+==============+===============+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | maxValue   | UTCDateOnly |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | constValue | UTCDateOnly |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
| UTCTimeOnly\_t  | UTCTimeOnly  | minValue   | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | maxValue   | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | constValue | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
| UTCTimestamp\_t | UTCTimestamp | minValue   | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | maxValue   | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | constValue | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | localMktTz | LocalMktTz  |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
| TZTimestamp\_t  | TZTimestamp  | minValue   | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | maxValue   | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | constValue | time        |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
| TZTimeOnly\_t   | TZTimeOnly   | minValue   | TZTimeOnly  |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | maxValue   | TZTimeOnly  |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+
|                   |                | constValue | TZTimeOnly  |
+-------------------+----------------+--------------+---------------+
|                   |                |              |               |
+-------------------+----------------+--------------+---------------+

For example in the following code snippet an algorithmic parameter,
MktOnCloseFlag, is defined as being a Boolean\_t type.

\<Parameter name="MktOnCloseFlag" xsi:type="Boolean\_t" fixTag="8001"
use="required trueWireValue="T" false WireValue="F"/\>

Notice that by setting xsi:type of this parameter to "Boolean\_t" we can
now use the attributes, "trueWireValue" and "falseWireValue", which are
members of the derived element and accept standard XML string values.

[\[Please note that the previous example shows two attributes which have
been deprecated, Parameter/\@trueWireValue and
Parameter/\@falseWireValue. The intention was to illustrate how extended
elements are used.\]]{.underline}

[In this next snippet a quantity parameter is defined.]{.underline}

[\<Parameter name="CrossQty" xsi:type="Qty\_t" fixTag="8002"
use="required" minValue="100"/\>]{.underline}

[By setting xsi:type to Qty\_t we can now provide a value for
minValue.]{.underline}

December 21, 2010 51 FIXatdl v1.1 with Errata 20101221

[]{#page52 .anchor}

**Control Element Extension**

As with extensions to Parameter, ATDL provides a set of elements that
are derived from Control. Each of these elements inherits the attributes
of Control. They also have their own distinct attributes.

An abstract Control element has the following attributes (which are
described in the section "Attribute Definitions"):

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

ID

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

parameterRef

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

label

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

initFixField

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

initPolicy

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

tooltip

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

disableForTemplate

![](media/image2.jpeg){width="9.305555555555556e-2in" height="0.125in"}

xsi:type

When the Control element is extended it gains several more attributes
depending on the element to which it is extended.

The types of these attributes are also dependent on the extended element
and may vary from one Control to another.

The following types are used to extend the Control element:

<table>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Control xsi:type</strong></p>
</blockquote></th>
<th></th>
<th><strong>Description of desired control</strong></th>
<th></th>
<th><strong>Attributes specific to xsi:type</strong></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><strong>Attribute Name</strong></td>
<td></td>
<td><strong>Attribute Type</strong></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Clock_t</p>
</blockquote></td>
<td></td>
<td>Clock with hours, minutes, seconds and</td>
<td></td>
<td>initValue</td>
<td></td>
<td>time</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>AM/PM setting.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>initValueMode</td>
<td></td>
<td>int</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>Depending on the parameter type, this</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>control may</td>
<td><del>optionally</del></td>
<td>also display a date</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>selector.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>TextField_t</p>
</blockquote></td>
<td></td>
<td>Standard text field.</td>
<td></td>
<td>initValue</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>SingleSelectList_t</p>
</blockquote></td>
<td></td>
<td>Affords the user the ability to select one item</td>
<td></td>
<td>initValue</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>from a list.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>MultiSelectList_t</p>
</blockquote></td>
<td></td>
<td>Affords the user the ability to select many</td>
<td></td>
<td>initValue</td>
<td></td>
<td>MultipleStringValue</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>items from a list. Values extracted from this</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>type of control are expected to be transmitted</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>using a MultipleStringValue or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>MultipleCharValue FIX type.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Slider_t</p>
</blockquote></td>
<td></td>
<td>Draggable slider with labels that map to</td>
<td></td>
<td>initValue</td>
<td></td>
<td>string</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>values.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>increment</td>
<td></td>
<td>double</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>incrementPolicy</td>
<td></td>
<td>string</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>CheckBox_t</p>
</blockquote></td>
<td></td>
<td>Standard check box – initialized to checked</td>
<td></td>
<td>initValue</td>
<td></td>
<td>boolean</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>or unchecked.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 52 FIXatdl v1.1 with Errata 20101221

+-------+-------+-------+-------+-------+-------+-------+---+
|     |       | A     |     |     |       |       |   |
| Check |       | list  |  init |  Mult |       |       |   |
| BoxLi |       | of    | Value | ipleS |       |       |   |
| st\_t |       | check |       | tring |       |       |   |
|       |       | boxes |       | Value |       |       |   |
|       |       | where |       |       |       |       |   |
|       |       | mul   |       |       |       |       |   |
|       |       | tiple |       |       |       |       |   |
+=======+=======+=======+=======+=======+=======+=======+===+
|       |       | selec |       |       |       |       |   |
|       |       | tions |       |       |       |       |   |
|       |       | can   |       |       |       |       |   |
|       |       | be    |       |       |       |       |   |
|       |       | made. |       |       |       |       |   |
|       |       | V     |       |       |       |       |   |
|       |       | alues |       |       |       |       |   |
|       |       | extr  |       |       |       |       |   |
|       |       | acted |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | from  |       |       |       |       |   |
|       |       | this  |       |       |       |       |   |
|       |       | type  |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
|       |       | co    |       |       |       |       |   |
|       |       | ntrol |       |       |       |       |   |
|       |       | are   |       |       |       |       |   |
|       |       | exp   |       |       |       |       |   |
|       |       | ected |       |       |       |       |   |
|       |       | to be |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | t     | o   | O   |       |       |   |
|       |       | ransm | rient | rient |       |       |   |
|       |       | itted | ation | ation |       |       |   |
|       |       | using |       |       |       |       |   |
|       |       | a     |       |       |       |       |   |
|       |       | Mult  |       |       |       |       |   |
|       |       | ipleS |       |       |       |       |   |
|       |       | tring |       |       |       |       |   |
|       |       | Value |       |       |       |       |   |
|       |       | or    |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | Mu    |       |       |       |       |   |
|       |       | ltipl |       |       |       |       |   |
|       |       | eChar |       |       |       |       |   |
|       |       | Value |       |       |       |       |   |
|       |       | FIX   |       |       |       |       |   |
|       |       | type. |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
| S   |       | A     |     | d   |       |       |   |
| ingle |       | nu    |  init | ouble |       |       |   |
| Spinn |       | meric | Value |       |       |       |   |
| er\_t |       | field |       |       |       |       |   |
|       |       | that  |       |       |       |       |   |
|       |       | has   |       |       |       |       |   |
|       |       | a     |       |       |       |       |   |
|       |       | rrows |       |       |       |       |   |
|       |       | to    |       |       |       |       |   |
|       |       | incr  |       |       |       |       |   |
|       |       | ement |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | and   |       |       |       |       |   |
|       |       | decr  |       |       |       |       |   |
|       |       | ement |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |     | d   |   |
|       |       |       |       |       |  incr | ouble |   |
|       |       |       |       |       | ement |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |     | s   |   |
|       |       |       |       |       | incre | tring |   |
|       |       |       |       |       | mentP |       |   |
|       |       |       |       |       | olicy |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
| D   |       | A     |     | d   |       |       |   |
| ouble |       | nu    |  init | ouble |       |       |   |
| Spinn |       | meric | Value |       |       |       |   |
| er\_t |       | field |       |       |       |       |   |
|       |       | that  |       |       |       |       |   |
|       |       | has   |       |       |       |       |   |
|       |       | two   |       |       |       |       |   |
|       |       | sets  |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
|       |       | a     |       |       |       |       |   |
|       |       | rrows |       |       |       |       |   |
|       |       | to    |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | incr  |       |       |       |       |   |
|       |       | ement |       |       |       |       |   |
|       |       | and   |       |       |       |       |   |
|       |       | decr  |       |       |       |       |   |
|       |       | ement |       |       |       |       |   |
|       |       | by    |       |       |       |       |   |
|       |       | diff  |       |       |       |       |   |
|       |       | erent |       |       |       |       |   |
|       |       | v     |       |       |       |       |   |
|       |       | alues |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | (say  |     | d   |       |       |   |
|       |       | for   |  inne | ouble |       |       |   |
|       |       | pe    | rIncr |       |       |       |   |
|       |       | nnies | ement |       |       |       |   |
|       |       | and   |       |       |       |       |   |
|       |       | doll  |       |       |       |       |   |
|       |       | ars). |       |       |       |       |   |
|       |       | When  |       |       |       |       |   |
|       |       | pre   |       |       |       |       |   |
|       |       | ssed, |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | the   |       |       |       |       |   |
|       |       | right |       |       |       |       |   |
|       |       | -most |       |       |       |       |   |
|       |       | pair  |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
|       |       | a     |       |       |       |       |   |
|       |       | rrows |       |       |       |       |   |
|       |       | will  |       |       |       |       |   |
|       |       | incr  |       |       |       |       |   |
|       |       | ement |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |     | s   |       |       |   |
|       |       |       | inner | tring |       |       |   |
|       |       |       | Incre |       |       |       |   |
|       |       |       | mentP |       |       |       |   |
|       |       |       | olicy |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | (or   |       |       |       |       |   |
|       |       | decre |       |       |       |       |   |
|       |       | ment) |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
|       |       | value |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
|       |       | co    |       |       |       |       |   |
|       |       | ntrol |       |       |       |       |   |
|       |       | by    |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | value |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
|       |       | outer |       |       |       |       |   |
|       |       | Incre |       |       |       |       |   |
|       |       | ment. |       |       |       |       |   |
|       |       | Pre   |       |       |       |       |   |
|       |       | ssing |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
|       |       | other |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |     | d   |       |       |   |
|       |       |       |  oute | ouble |       |       |   |
|       |       |       | rIncr |       |       |       |   |
|       |       |       | ement |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | pair  |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
|       |       | a     |       |       |       |       |   |
|       |       | rrows |       |       |       |       |   |
|       |       | will  |       |       |       |       |   |
|       |       | cause |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
|       |       | value |       |       |       |       |   |
|       |       | to be |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | i     |       |       |       |       |   |
|       |       | ncrem |       |       |       |       |   |
|       |       | ented |       |       |       |       |   |
|       |       | (or   |       |       |       |       |   |
|       |       | de    |       |       |       |       |   |
|       |       | creme |       |       |       |       |   |
|       |       | nted) |       |       |       |       |   |
|       |       | by    |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
|       |       | value |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |     | s   |       |       |   |
|       |       |       | outer | tring |       |       |   |
|       |       |       | Incre |       |       |       |   |
|       |       |       | mentP |       |       |       |   |
|       |       |       | olicy |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | inner |       |       |       |       |   |
|       |       | Incre |       |       |       |       |   |
|       |       | ment. |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|     |       | More  |     | s   |       |       |   |
| DropD |       | spe   |  init | tring |       |       |   |
| ownLi |       | cific | Value |       |       |       |   |
| st\_t |       | deriv |       |       |       |       |   |
|       |       | ation |       |       |       |       |   |
|       |       | of a  |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | Si    |       |       |       |       |   |
|       |       | ngleS |       |       |       |       |   |
|       |       | elect |       |       |       |       |   |
|       |       | List. |       |       |       |       |   |
|       |       | E.g., |       |       |       |       |   |
|       |       | a     |       |       |       |       |   |
|       |       | combo |       |       |       |       |   |
|       |       | box.  |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
| Edi |     |     | s   |       |       |       |   |
| table |  More |  init | tring |       |       |       |   |
| DropD | spe | Value |       |       |       |       |   |
| ownLi | cific |       |       |       |       |       |   |
| st\_t |     |       |       |       |       |       |   |
|       | deriv |       |       |       |       |       |   |
|       | ation |       |       |       |       |       |   |
|       | of  |       |       |       |       |       |   |
|       | a   |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | Si    |       |       |       |       |   |
|       |       | ngleS |       |       |       |       |   |
|       |       | elect |       |       |       |       |   |
|       |       | List. |       |       |       |       |   |
|       |       | E.g., |       |       |       |       |   |
|       |       | an    |       |       |       |       |   |
|       |       | edi   |       |       |       |       |   |
|       |       | table |       |       |       |       |   |
|       |       | combo |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | box.  |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|     |       | Sta   |     | bo  |       |       |   |
|  Radi |       | ndard |  init | olean |       |       |   |
| oButt |       | radio | Value |       |       |       |   |
| on\_t |       | bu    |       |       |       |       |   |
|       |       | tton, |       |       |       |       |   |
|       |       | but   |       |       |       |       |   |
|       |       | with  |       |       |       |       |   |
|       |       | no    |       |       |       |       |   |
|       |       | assoc |       |       |       |       |   |
|       |       | iated |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | g     |       |       |       |       |   |
|       |       | roup. |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
| Rad |       | More  |     | s   |       |       |   |
| ioBut |       | spe   |  init | tring |       |       |   |
| tonLi |       | cific | Value |       |       |       |   |
| st\_t |       | deriv |       |       |       |       |   |
|       |       | ation |       |       |       |       |   |
|       |       | of a  |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | Si    |       |       |       |       |   |
|       |       | ngleS |       |       |       |       |   |
|       |       | elect |       |       |       |       |   |
|       |       | List. |       |       |       |       |   |
|       |       | Se    |       |       |       |       |   |
|       |       | veral |       |       |       |       |   |
|       |       | items |       |       |       |       |   |
|       |       | are   |       |       |       |       |   |
|       |       | pres  |       |       |       |       |   |
|       |       | ented |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | with  |       |       |       |       |   |
|       |       | an    |       |       |       |       |   |
|       |       | assoc |       |       |       |       |   |
|       |       | iated |       |       |       |       |   |
|       |       | radio |       |       |       |       |   |
|       |       | b     |       |       |       |       |   |
|       |       | utton |       |       |       |       |   |
|       |       | where |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       | o   | O   |       |       |   |
|       |       |       | rient | rient |       |       |   |
|       |       |       | ation | ation |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | user  |       |       |       |       |   |
|       |       | can   |       |       |       |       |   |
|       |       | s     |       |       |       |       |   |
|       |       | elect |       |       |       |       |   |
|       |       | only  |       |       |       |       |   |
|       |       | one   |       |       |       |       |   |
|       |       | of    |       |       |       |       |   |
|       |       | them. |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
| Lab |       | Plain |     | s   |       |       |   |
| el\_t |       | text. |  init | tring |       |       |   |
|       |       |       | Value |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | Note  |       |       |       |       |   |
|       |       | that  |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
|       |       | label |       |       |       |       |   |
|       |       | cont  |       |       |       |       |   |
|       |       | rol‟s |       |       |       |       |   |
|       |       | text  |       |       |       |       |   |
|       |       | may   |       |       |       |       |   |
|       |       | be    |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       | up    |       |       |       |       |   |
|       |       | dated |       |       |       |       |   |
|       |       | th    |       |       |       |       |   |
|       |       | rough |       |       |       |       |   |
|       |       | the   |       |       |       |       |   |
|       |       | exec  |       |       |       |       |   |
|       |       | ution |       |       |       |       |   |
|       |       | of a  |       |       |       |       |   |
|       |       | State |       |       |       |       |   |
|       |       | Rule. |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+
|       |       |       |       |       |       |       |   |
+-------+-------+-------+-------+-------+-------+-------+---+

For example in the following code snippet a control, StartTimeCntl, is
defined as being a Clock\_t. An initial value of 09:30 has been
specified.

\<Control ID=\"StartTimeCntl\" xsi:type=\"lay:Clock\_t\" label=\"Start
Time\" initValue="09:30" [localMktTz=\"America/New\_York\"]{.underline}
parameterRef=\"StartTime\"/\>

December 21, 2010 53 FIXatdl v1.1 with Errata 20101221

[]{#page54 .anchor}

**Dependencies and Structural Constraints beyond XML Schema**
>
While W3C XML Schema is useful for describing the structure of an
XML-based language, it still has its limitations. For example, it only
allows the specification of whether attributes are required or
optional. Furthermore, there is no way to specify more complex
constraints between attributes or between attributes or elements.
>
With this in mind the following table presents further constraints to
which XML document instances must conform if they are to be FIXatdl
compliant.

<table>
<thead>
<tr class="header">
<th></th>
<th>ID</th>
<th></th>
<th></th>
<th>Affected</th>
<th></th>
<th>Affected Attributes</th>
<th></th>
<th></th>
<th>Description</th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Elements</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>1</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>Edit</p>
</blockquote></td>
<td></td>
<td>logicOperator,</td>
<td></td>
<td></td>
<td>Within an edit element, the attributes “operator” and” logicOperator” are</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>operator</td>
<td></td>
<td></td>
<td>mutually exclusive.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>2</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>Edit</p>
</blockquote></td>
<td></td>
<td>field2, value</td>
<td></td>
<td></td>
<td>Within an edit element, the attributes “field2” and “value” are mutually</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>exclusive.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>3</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>StrategyPanel</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>A strategyPanel cannot have as child elements both Control elements and</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>StrategyPanel elements.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>4</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>Edit</p>
</blockquote></td>
<td></td>
<td>field, field2</td>
<td></td>
<td></td>
<td>Within an edit element the attributes field and field2 must refer to either a</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>pre-declared parameter name or a standard FIX tag name (taken from the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>FIX specification) pre-pended with the string ”FIX_”.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><blockquote>
<p>5</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>Edit</p>
</blockquote></td>
<td></td>
<td>value</td>
<td></td>
<td></td>
<td>Within an edit element, the type of the value attribute must safely match</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>with the type of parameter specified by the field attribute.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>6</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>Edit</p>
</blockquote></td>
<td></td>
<td>logicOperator,</td>
<td></td>
<td></td>
<td>If an Edit element is a child of another Edit element then the parent Edit</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>operator</td>
<td></td>
<td></td>
<td>element must have its logicOperator attribute defined and its operator</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute undefined.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>7</p>
</blockquote></td>
<td></td>
<td></td>
<td><blockquote>
<p>Edit</p>
</blockquote></td>
<td></td>
<td>field1, field2</td>
<td></td>
<td></td>
<td>When a comparison is made between two operands, the values of the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>operands must either be of the same type or be able to be converted in</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>such a way so that the resulting converted types are the same.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>8</td>
<td></td>
<td></td>
<td><blockquote>
<p>Control</p>
</blockquote></td>
<td></td>
<td>parameterRef</td>
<td></td>
<td></td>
<td>If Control/@parameterRef is defined it must be equal to the “name”</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>attribute of one of the defined Parameter elements.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>9</td>
<td></td>
<td></td>
<td><blockquote>
<p>EnumPair</p>
</blockquote></td>
<td></td>
<td>enumID</td>
<td></td>
<td></td>
<td>If a Control is linked to a Parameter via use of Control/@parameterRef,</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td><blockquote>
<p>ListItem</p>
</blockquote></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>and the Control contains ListItem elements, then the Parameter must</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>contain EnumPair elements. Furthermore, each of the Control‟s</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>ListItem/@enumID values must match one and only one of the</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Parameter‟s EnumPair/@enumID values.</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>10</td>
<td></td>
<td><blockquote>
<p>Control</p>
</blockquote></td>
<td></td>
<td>checkedEnumRef</td>
<td></td>
<td></td>
<td>If values for Control/@checkedEnumRef or</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>uncheckedEnumRef</td>
<td></td>
<td></td>
<td>Control/@uncheckedEnumRef are provided then</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Control/@parameterRef must also be provided. Furthermore, the values</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

December 21, 2010 54 FIXatdl v1.1 with Errata 20101221

**Formatted:** Space After: 0 pt

![](media/image13.png){width="2.21875in" height="8.122916666666667in"}

**Formatted:** Space After: 0 pt

[of Control/\@checkedEnumRef and Control/\@uncheckedEnumRef
each]{.underline}
>
[must be equal to one of the EnumPair/\@enumID values of the
Parameter]{.underline}
>
[referred to by Control/\@parameterRef.]{.underline}

December 21, 2010 55 FIXatdl v1.1 with Errata 20101221

[]{#page56 .anchor}

**A Sample FIXatdl Document**

The following listing shows a FIXatdl instance document describing one
strategy with six parameters. The associated controls to be rendered are
aligned horizontally within two panels which are, in turn, are
vertically aligned. Three validation rules are provided.

\<Strategies

xmlns=\"http://www.fixprotocol.org/FIXatdl-1-1/Core\"
>
xmlns:val=\"http://www.fixprotocol.org/FIXatdl-1-1/Validation\"
>
xmlns:lay=\"http://www.fixprotocol.org/FIXatdl-1-1/Layout\"
>
xmlns:flow=\"http://www.fixprotocol.org/FIXatdl-1-1/Flow\"
>
xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"
>
xsi:schemaLocation=\"http://www.fixprotocol.org/FIXatdl-1-1/Core
fixatdl-core-1-1.xsd\"
>
strategyIdentifierTag=\"7620\"
>
versionIdentifierTag=\"7621\"

\>

\<Strategy name=\"Tazer1\" uiRep=\"Tazer\" wireValue=\"Tazer\"
version=\"1\" fixMsgType=\"D\" providerID=\"ABC\"\>

\<!\--
>
Declare the algorithm to be applicable in The U.S., Canada and the UK.
>
\--\>
>
\<Regions\>
>
\<Region name=\"TheAmericas\" inclusion=\"Include\"\>
>
\<Country CountryCode=\"US\" inclusion=\"Include\"/\>
>
\<Country CountryCode="CA" inclusion="Include"/\>
>
\</Region\>
>
\<Region name="EuropeMiddleEastAfrica" inclusion="Include"\>
>
\<Country CountryCode="UK" inclusion="Include"/\>
>
\</Region\>
>
\</Regions\>
>
\<!\--
>
Declare the markets where order may be executed.
>
\--\>
>
\<Markets\>
>
\<Market MICCode=\"BATS\" inclusion=\"Include\"/\>
>
\<Market MICCode="NYSE" inclusion="Include"/\>
>
\<Market MICCode="XTSE" inclusion="Include"/\>
>
\<Market MICCode="LSE" inclusion="Include"/\>
>
\</Markets\>
>
\<!\--
>
This algorithm will be applied to equity common stock.
>
\--\>

December 21, 2010 56 FIXatdl v1.1 with Errata 20101221

\<SecurityTypes\>
>
\<SecurityType name=\"CS\" inclusion=\"Include\"/\>
>
\</SecurityTypes\>
>
\<!\--
>
Parameter declarations
>
Five parameters are declared here. The order recipient may reject
orders with: EndTime (tag 7603) values greater than 4pm New York time;
SweepDistribution (tag 7640) values other than „U‟ or „G‟; Variance
(tag 7641) values outside the range \[0.01, 0.50\]; and DisplayQty
(tag 7645) values less than 0.
>
\--\>
>
\<Parameter name=\"StartTime\" xsi:type=\"UTCTimestamp\_t\"
fixTag=\"7602" use=\"required\"/\\<Parameter name=\"EndTime\"
xsi:type=\"UTCTimestamp\_t\" fixTag=\"7603\" use=\"required\"
>
maxValue=\"16:00:00\" localMktTz=\"America/New\_York \"/\>
>
\<Parameter name=\"DisplayQty\" xsi:type=\"Int\_t\" fixTag=\"7645\"
use=\"optional\" minValue=\"0\"/\\<Parameter
name=\"SweepDistribution\" xsi:type=\"Char\_t\" fixTag=\"7640\"
use=\"required\"\>
>
\<EnumPair enumID=\"e\_Uniform\" wireValue=\"U\"/\>
>
\<EnumPair enumID=\"e\_Gaussian\" wireValue=\"G\"/\>
>
\</Parameter\>
>
\<Parameter name=\"Variance\" xsi:type=\"Float\_t\" fixTag=\"7641\"
use=\"optional\" minValue=\"0.01\" maxValue=\"0.50\"/\\<Parameter
name="AllowDarkPoolExec" xsi:type="Char\_t" fixTag="7642"
use="required"\>
>
\<EnumPair enumID="e\_True" wireValue="T"/\>
>
\<EnumPair enumID="e\_False" wireValue="F"/\>
>
\</Parameter\>
>
\<!\--
>
Description and Layout of GUI controls
>
\--\>
>
\<lay:StrategyLayout\>
>
\<lay:StrategyPanel orientation=\"VERTICAL\"\>
>
\<lay:StrategyPanel orientation=\"HORIZONTAL\"\>
>
\<!\--
>
The StartTimeClock control will be initialized to 9:30am (New York
time). If it is past 9:30am when the control is rendered, then it will
be initialized with the current time.
>
Note that the user will see the 9:30am New York time rendered
according to his/her environment‟s local timezone setup.
>
\--\>
>
\<lay:Control xsi:type=\"lay:Clock\_t\" ID=\"StartTimeClock\"
label=\"Start Time\" parameterRef=\"StartTime\"
>
initValue=\"09:30:00\" localMktTz="America/New\_York"
initValueMode="1"/\>
>
\<!\--
>
The EndTimeClock control is not initialized.
>
\--\>
>
\<lay:Control xsi:type=\"lay:Clock\_t\" ID=\"EndTimeClock\"
label=\"End Time\" parameterRef=\"EndTime\"/\\<!\--
>
The next control is not bound to any parameter. It is intended to
direct the behavior of the DisplayQty control. It presents 3 options
in a drop-down list.
>
\--\>
>
\<lay:Control ID=\"DQHandling\" xsi:type=\"lay:DropDownList\_t\"
label=\"Display Handling\"\\<lay:ListItem enumID=\"choice1\"
uiRep=\"Send nothing\"/\>
>
\<lay:ListItem enumID=\"choice2\" uiRep=\"Send 0\"/\>

December 21, 2010 57 FIXatdl v1.1 with Errata 20101221

\<lay:ListItem enumID=\"choice3\" uiRep=\"Send what user enters\"/\>
>
\</lay:Control\>
>
\<!\--
>
The DisplayQty control is bound to the DisplayQty parameter. The
control is un-initialized when it is first rendered. Its subsequent
behavior is directed by DQHandling control. When DQHandling‟s choice1
is selected DisplayQty will revert to an un-initialized state and
become disabled. When DQHandling‟s choice2 is selected, DisplayQty‟s
value will be set to 0 and it will become disabled. When DQHandling‟s
choice3 is selected, DisplayQty will be enabled and will accept user
input.
>
\--\>
>
\<lay:Control xsi:type=\"lay:TextField\_t\" ID=\"DisplayQty\"
label=\"Display Qty\" parameterRef=\"DisplayQty\"\\<flow:StateRule
enabled=\"true\"\>
>
\<val:Edit field=\"DQHandling\" operator=\"EQ\" value=\"choice3\"/\>
>
\</flow:StateRule\>
>
\<flow:StateRule value=\"{NULL}\"\>
>
\<val:Edit field=\"DQHandling\" operator=\"EQ\" value=\"choice1\"/\>
>
\</flow:StateRule\>
>
\<flow:StateRule value=\"0\"\>
>
\<val:Edit field=\"DQHandling\" operator=\"EQ\" value=\"choice2\"/\>
>
\</flow:StateRule\>
>
\</lay:Control\>
>
\</lay:StrategyPanel\>
>
\<lay:StrategyPanel orientation=\"HORIZONTAL\"\>
>
\<!\--
>
The SweepDist control will present the 2 options corresponding to the
enumPairs of the SweepDistribution parameter.
>
\--\>
>
\<lay:Control ID=\"SweepDist\" xsi:type=\"lay:DropDownList\_t\"
label=\"Sweep Distribution\"
>
parameterRef=\"SweepDistribution\" initValue=\"Uniform\"\>
>
\<lay:ListItem enumID=\"e\_Uniform\" uiRep=\"Uniform\"/\>
>
\<lay:ListItem enumID=\"e\_Gaussian\" uiRep=\"Gaussian\"/\>
>
\</lay:Control\>
>
\<!\--
>
The Variance control is enabled only when SweepDist‟s e\_Gaussian item
is selected.
>
\--\>
>
\<lay:Control xsi:type=\"lay:SingleSpinner\_t\" ID=\"Variance\"
label=\"Variance\" parameterRef=\"Variance\"\\<flow:StateRule
enabled=\"true\"\>
>
\<val:Edit field=\"SweepDist\" operator=\"EQ\"
value=\"e\_Gaussian\"/\>
>
\</flow:StateRule\>
>
\</lay:Control\>
>
\</lay:StrategyPanel\>
>
\<lay:StrategyPanel orientation="HORIZONTAL"\>
>
\<lay:Control xsi:type="CheckBox\_t" ID="DPOption" label="Allow Dark
Pool Execution" parameterRef="AllowDarkPoolExec"
>
checkedEnumRef="e\_True" uncheckedEnumRef="e\_False"\>
>
\</lay:Control\>
>
\</lay:StrategyPanel\>
>
\</lay:StrategyPanel\>
>
\</lay:StrategyLayout\>

December 21, 2010 58 FIXatdl v1.1 with Errata 20101221

\<!\--
>
Validation Section
>
Note that the attribute, field, always refers to a Parameter name and
not a Control ID. Also note that short-circuit evaluation is fully
exploited.
>
\--\>
>
\<val:StrategyEdit errorMessage=\"End Time should be later than Start
Time\"\>
>
\<val:Edit field=\"EndTime\" operator=\"GT\" field2=\"StartTime\"/\>
>
\</val:StrategyEdit\>
>
\<val:StrategyEdit errorMessage=\"Variance is required when Sweep
Distribution is Gaussian.\"\\<val:Edit logicOperator=\"OR\"\>
>
\<val:Edit field=\"SweepDistribution" operator=\"NE\" value=\"G\"/\>
>
\<val:Edit logicOperator=\"AND\"\>
>
\<val:Edit field=\"SweepDistribution\" operator=\"EQ\" value=\"G\"/\>
>
\<val:Edit field=\"Variance\" operator=\"EX\"/\>
>
\</val:Edit\>
>
\</val:Edit\>
>
\</val:StrategyEdit\>
>
\<val:StrategyEdit errorMessage=\"Variance must be between 0 and
2.0\"\>
>
\<val:Edit logicOperator=\"OR\"\>
>
\<val:Edit field=\"SweepDistribution\" operator=\"NE\" value=\"G\"/\>
>
\<val:Edit logicOperator=\"AND\"\>
>
\<val:Edit field=\"SweepDistribution\" operator=\"EQ\" value=\"G\"/\>
>
\<val:Edit field=\"Variance\" operator=\"EX\"/\>
>
\<val:Edit field=\"Variance\" operator=\"GT\" value=\"0.0\"/\>
>
\<val:Edit field=\"Variance\" operator=\"LT\" value=\"2.0\"/\>
>
\</val:Edit\>
>
\</val:Edit\>
>
\</val:StrategyEdit\>
>
\</Strategy\>

\</Strategies\>

December 21, 2010 59 FIXatdl v1.1 with Errata 20101221

[]{#page60 .anchor}

**Appendix 1 - LocalMktTz Type**
>
The following table shows the valid values of attributes of the type
LocalMktTz. In the FIXatdl schema a simple type, LocalMktTz\_t, has
been defined as a string which is restricted to the zone names of the
TZ environment variable.

A.  reference to the zone environment variable can be found at
    [[http://en.wikipedia.org/wiki/List\_of\_zoneinfo\_time\_zones.]{.underline}](http://en.wikipedia.org/wiki/List_of_zoneinfo_time_zones)

+----------------------+----------------------+----------------------+
| Africa/Abidjan     | Africa/Libreville  | America            |
|                      |                      | /Argentina/La\_Rioja |
+======================+======================+======================+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Accra       | Africa/Lome        | Ameri              |
|                      |                      | ca/Argentina/Mendoza |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
|                    | Africa/Luanda      | America/Arg        |
|  Africa/Addis\_Ababa |                      | entina/Rio\_Gallegos |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Algiers     | Africa/Lubumbashi  | Ame                |
|                      |                      | rica/Argentina/Salta |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Asmara      | Africa/Lusaka      | America            |
|                      |                      | /Argentina/San\_Juan |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Bamako      | Africa/Malabo      | America            |
|                      |                      | /Argentina/San\_Luis |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Bangui      | Africa/Maputo      | Ameri              |
|                      |                      | ca/Argentina/Tucuman |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Banjul      | Africa/Maseru      | Ameri              |
|                      |                      | ca/Argentina/Ushuaia |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Bissau      | Africa/Mbabane     | America/Aruba      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Blantyre    | Africa/Mogadishu   | America/Asuncion   |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Brazzaville | Africa/Monrovia    | America/Atikokan   |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Bujumbura   | Africa/Nairobi     | America/Bahia      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Cairo       | Africa/Ndjamena    | America/Barbados   |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Casablanca  | Africa/Niamey      | America/Belem      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Ceuta       | Africa/Nouakchott  | America/Belize     |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Conakry     | Africa/Ouagadougou |                    |
|                      |                      | America/Blanc-Sablon |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Dakar       | Africa/Porto-Novo  | America/Boa\_Vista |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Af                 | Africa/Sao\_Tome   | America/Bogota     |
| rica/Dar\_es\_Salaam |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Djibouti    | Africa/Tripoli     | America/Boise      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Douala      | Africa/Tunis       | Am                 |
|                      |                      | erica/Cambridge\_Bay |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/El\_Aaiun   | Africa/Windhoek    | A                  |
|                      |                      | merica/Campo\_Grande |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Freetown    | America/Adak       | America/Cancun     |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Gaborone    | America/Anchorage  | America/Caracas    |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Harare      | America/Anguilla   | America/Cayenne    |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
|                    | America/Antigua    | America/Cayman     |
|  Africa/Johannesburg |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Kampala     | America/Araguaina  | America/Chicago    |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Khartoum    | America/Arg        | America/Chihuahua  |
|                      | entina/Buenos\_Aires |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Kigali      | America            |                    |
|                      | /Argentina/Catamarca |  America/Costa\_Rica |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Kinshasa    | Ameri              | America/Cuiaba     |
|                      | ca/Argentina/Cordoba |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Africa/Lagos       | Ame                | America/Curacao    |
|                      | rica/Argentina/Jujuy |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+

December 21, 2010 60 FIXatdl v1.1 with Errata 20101221

+----------------------+----------------------+----------------------+
|                    | America/Managua    | America/Shiprock   |
| America/Danmarkshavn |                      |                      |
+======================+======================+======================+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Dawson     | America/Manaus     | Am                 |
|                      |                      | erica/St\_Barthelemy |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| A                  | America/Marigot    | America/St\_Johns  |
| merica/Dawson\_Creek |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Denver     | America/Martinique | America/St\_Kitts  |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Detroit    | America/Mazatlan   | America/St\_Lucia  |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Dominica   | America/Menominee  | America/St\_Thomas |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Edmonton   | America/Merida     |                    |
|                      |                      |  America/St\_Vincent |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Eirunepe   |                    | Am                 |
|                      | America/Mexico\_City | erica/Swift\_Current |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
|                    | America/Miquelon   |                    |
| America/El\_Salvador |                      |  America/Tegucigalpa |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Fortaleza  | America/Moncton    | America/Thule      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Glace\_Bay | America/Monterrey  |                    |
|                      |                      | America/Thunder\_Bay |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Godthab    | America/Montevideo | America/Tijuana    |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Goose\_Bay | America/Montreal   | America/Toronto    |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
|                    | America/Montserrat | America/Tortola    |
|  America/Grand\_Turk |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Grenada    | America/Nassau     | America/Vancouver  |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Guadeloupe | America/New\_York  | America/Whitehorse |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Guatemala  | America/Nipigon    | America/Winnipeg   |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Guayaquil  | America/Nome       | America/Yakutat    |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Guyana     | America/Noronha    |                    |
|                      |                      |  America/Yellowknife |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Halifax    | America/           | Antarctica/Casey   |
|                      | North\_Dakota/Center |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Havana     | America/Nort       | Antarctica/Davis   |
|                      | h\_Dakota/New\_Salem |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Hermosillo | America/Panama     | Antar              |
|                      |                      | ctica/DumontDUrville |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/           |                    | Antarctica/Mawson  |
| Indiana/Indianapolis |  America/Pangnirtung |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
|                    | America/Paramaribo | Antarctica/McMurdo |
| America/Indiana/Knox |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Ame                | America/Phoenix    | Antarctica/Palmer  |
| rica/Indiana/Marengo |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Americ             | Am                 | Antarctica/Rothera |
| a/Indiana/Petersburg | erica/Port-au-Prince |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Americ             | Ame                | An                 |
| a/Indiana/Tell\_City | rica/Port\_of\_Spain | tarctica/South\_Pole |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| A                  |                    | Antarctica/Syowa   |
| merica/Indiana/Vevay | America/Porto\_Velho |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Ameri              |                    | Antarctica/Vostok  |
| ca/Indiana/Vincennes | America/Puerto\_Rico |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| Ame                |                    |                    |
| rica/Indiana/Winamac | America/Rainy\_River |  Arctic/Longyearbyen |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Inuvik     | A                  | Asia/Aden          |
|                      | merica/Rankin\_Inlet |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Iqaluit    | America/Recife     | Asia/Almaty        |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Jamaica    | America/Regina     | Asia/Amman         |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Juneau     | America/Resolute   | Asia/Anadyr        |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America            |                    | Asia/Aqtau         |
| /Kentucky/Louisville |  America/Rio\_Branco |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America            | America/Santarem   | Asia/Aqtobe        |
| /Kentucky/Monticello |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/La\_Paz    | America/Santiago   | Asia/Ashgabat      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Lima       | Am                 | Asia/Baghdad       |
|                      | erica/Santo\_Domingo |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
|                    | America/Sao\_Paulo | Asia/Bahrain       |
| America/Los\_Angeles |                      |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+
| America/Maceio     |                    | Asia/Baku          |
|                      | America/Scoresbysund |                      |
+----------------------+----------------------+----------------------+
|                      |                      |                      |
+----------------------+----------------------+----------------------+

December 21, 2010 61 FIXatdl v1.1 with Errata 20101221

+----------------------+---------------------------+------------------------+
| Asia/Bangkok       | Asia/Phnom\_Penh        | Australia/Eucla      |
+======================+===========================+========================+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Beirut        | Asia/Pontianak          | Australia/Hobart     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Bishkek       | Asia/Pyongyang          | Australia/Lindeman   |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Brunei        | Asia/Qatar              | Australia/Lord\_Howe |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Choibalsan    | Asia/Qyzylorda          | Australia/Melbourne  |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Chongqing     | Asia/Rangoon            | Australia/Perth      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Colombo       | Asia/Riyadh             | Australia/Sydney     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Damascus      | Asia/Sakhalin           | Europe/Amsterdam     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Dhaka         | Asia/Samarkand          | Europe/Andorra       |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Dili          | Asia/Seoul              | Europe/Athens        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Dubai         | Asia/Shanghai           | Europe/Belgrade      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Dushanbe      | Asia/Singapore          | Europe/Berlin        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Gaza          | Asia/Taipei             | Europe/Bratislava    |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Harbin        | Asia/Tashkent           | Europe/Brussels      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Ho\_Chi\_Minh | Asia/Tbilisi            | Europe/Bucharest     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Hong\_Kong    | Asia/Tehran             | Europe/Budapest      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Hovd          | Asia/Thimphu            | Europe/Chisinau      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Irkutsk       | Asia/Tokyo              | Europe/Copenhagen    |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Jakarta       | Asia/Ulaanbaatar        | Europe/Dublin        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Jayapura      | Asia/Urumqi             | Europe/Gibraltar     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Jerusalem     | Asia/Vientiane          | Europe/Guernsey      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Kabul         | Asia/Vladivostok        | Europe/Helsinki      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Kamchatka     | Asia/Yakutsk            | Europe/Isle\_of\_Man |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Karachi       | Asia/Yekaterinburg      | Europe/Istanbul      |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Kashgar       | Asia/Yerevan            | Europe/Jersey        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Katmandu      | Atlantic/Azores         | Europe/Kaliningrad   |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Kolkata       | Atlantic/Bermuda        | Europe/Kiev          |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Krasnoyarsk   | Atlantic/Canary         | Europe/Lisbon        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Kuala\_Lumpur | Atlantic/Cape\_Verde    | Europe/Ljubljana     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Kuching       | Atlantic/Faroe          | Europe/London        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Kuwait        | Atlantic/Madeira        | Europe/Luxembourg    |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Macau         | Atlantic/Reykjavik      | Europe/Madrid        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Magadan       | Atlantic/South\_Georgia | Europe/Malta         |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Makassar      | Atlantic/St\_Helena     | Europe/Mariehamn     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Manila        | Atlantic/Stanley        | Europe/Minsk         |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Muscat        | Australia/Adelaide      | Europe/Monaco        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Nicosia       | Australia/Brisbane      | Europe/Moscow        |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Novosibirsk   | Australia/Broken\_Hill  | Europe/Oslo          |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Omsk          | Australia/Currie        | Europe/Paris         |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+
| Asia/Oral          | Australia/Darwin        | Europe/Podgorica     |
+----------------------+---------------------------+------------------------+
|                      |                           |                        |
+----------------------+---------------------------+------------------------+

December 21, 2010 62 FIXatdl v1.1 with Errata 20101221

+-----------------------+-----------------------+-------------------------+
| Europe/Prague       | Indian/Mauritius    | Pacific/Pitcairn      |
+=======================+=======================+=========================+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Riga         | Indian/Mayotte      | Pacific/Ponape        |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Rome         | Indian/Reunion      | Pacific/Port\_Moresby |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Samara       | Pacific/Apia        | Pacific/Rarotonga     |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/San\_Marino  | Pacific/Auckland    | Pacific/Saipan        |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Sarajevo     | Pacific/Chatham     | Pacific/Tahiti        |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Simferopol   | Pacific/Easter      | Pacific/Tarawa        |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Skopje       | Pacific/Efate       | Pacific/Tongatapu     |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Sofia        | Pacific/Enderbury   | Pacific/Truk          |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Stockholm    | Pacific/Fakaofo     | Pacific/Wake          |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Tallinn      | Pacific/Fiji        | Pacific/Wallis        |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Tirane       | Pacific/Funafuti    |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Uzhgorod     | Pacific/Galapagos   |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Vaduz        | Pacific/Gambier     |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Vatican      | Pacific/Guadalcanal |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Vienna       | Pacific/Guam        |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Vilnius      | Pacific/Honolulu    |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Volgograd    | Pacific/Johnston    |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Warsaw       | Pacific/Kiritimati  |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Zagreb       | Pacific/Kosrae      |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Zaporozhye   | Pacific/Kwajalein   |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Europe/Zurich       | Pacific/Majuro      |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Antananarivo | Pacific/Marquesas   |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Chagos       | Pacific/Midway      |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Christmas    | Pacific/Nauru       |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Cocos        | Pacific/Niue        |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Comoro       | Pacific/Norfolk     |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Kerguelen    | Pacific/Noumea      |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Mahe         | Pacific/Pago\_Pago  |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+
| Indian/Maldives     | Pacific/Palau       |                         |
+-----------------------+-----------------------+-------------------------+
|                       |                       |                         |
+-----------------------+-----------------------+-------------------------+

December 21, 2010 63 FIXatdl v1.1 with Errata 20101221
