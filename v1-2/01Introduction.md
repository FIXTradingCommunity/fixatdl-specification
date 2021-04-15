# Introduction

This document serves as a specification of the FIX Algorithmic Trading
Definition Language (FIXatdl&reg;), a markup language that works in
conjunction with the FIX Protocol. FIXatdl&reg; is used to define the FIX
interface of algorithmic order types. An algorithmic order interface
description consists of: a description of tags that are to be included
in FIX NewOrderSingle(35=D), OrderCancelRequest(35=F), and OrderCancelReplaceRequest(35=G)
messages that are to be sent to an order recipient; rules for
validating the data entered into an order form by a user; suggestions on
how to render GUI controls within an order entry form; and rules
affecting the visual state of the GUI controls as information is being
entered into the order form.

Rather than describing interfaces in a natural language, such as
English, which can be subject to differing interpretations, FIXatdl&reg;
standardizes the way algorithmic interfaces are described thus reducing
interpretation errors and allowing for the creation of documents in a
machine-readable format. It is envisioned that applications supporting
this standard would be able to receive an XML document conforming to
FIXatdl&reg; and, based on the information within this document, be able to:

- Dynamically display an order ticket containing algorithmic order
parameters.

- Change the visual state of GUI controls based on user input.

- Validate the values entered into the ticket before an order is
transmitted.

- Create and transmit a FIX order message with the appropriate standard
and/or user-defined fields (UDFs) populated.

These capabilities are achievable without the need for custom software
development or subsequent product deployment.

## Audience

This specification is intended for those interested in either: (1)
developing applications with FIX order entry capabilities supporting
order type definition via FIXatdl&reg;; or (2) algorithmic order providers
who wish to describe the interface to their algorithms in FIXatdl&reg;.

# FIXatdl&reg; Schema Files

A set of XML Schema files has been created to describe the structure
of a FIXatdl&reg; document instance. These files can be used with
commercial XML parsing software to validate a FIXatdl&reg; document
instance. They can also be used with XML data binding utilities to
generate source code which maps classes to XML representations. The
files are grouped into two functional categories:

- **Data Contract** -- Defines the wire-value interface of an
algorithmic order. For each algorithm/strategy it defines the valid
set of parameters and availability of the strategy for specific
markets. For each parameter of an algorithm/strategy it defines the
type; the legal range of values (including minimum and maximum
values); whether it is optional or required; and value constraints
based on certain conditions or the value of other parameters
(validation rules).

- **GUI** -- Defines the recommended GUI controls that should be
rendered on the order entry screen and their location on the screen.
Defines the rules that affect the state of a GUI control. Provides a
mapping of the on screen controls with the parameters of the data
contract.

The constructs of the schema files have been categorized this way to
ensure that the data contract is de-coupled from the GUI. This
provides some flexibility for E/OMS vendors in how FIXatdl&reg; is applied.
For example, data contract functions, such as parameter validation,
may be performed in an application downstream from the E/OMS without
the need for the XML that describes the GUI.

The FIXatdl&reg; language definition is contained within six XML
Schema files:

+---------------------------------------------------+-----------------------------------------------------------------------------------------------+
| XML Schema file / namespace                       | Purpose                                                                                       |
+===================================================+===============================================================================================+
| fixatdl-core-1-2.xsd                              | Data: Defines attributes and elements that are used to describe the data content of the       |
|                                                   | algorithm and the parameters.                                                                 |
| http://www.fixprotocol.org/FIXatdl-1-2/Core       |                                                                                               |
+---------------------------------------------------+-----------------------------------------------------------------------------------------------+
| fixatdl-validation-1-2.xsd                        | Data: Defines attributes and elements used to author rules that are applied to the parameter  |
|                                                   | values as a validation check. These rules can be simple where boundary conditions are         |
| http://www.fixprotocol.org/FIXatdl-1-2/Validation | checked, or complex where compound boolean expressions involving several parameters are       |
|                                                   | evaluated.                                                                                    |
+---------------------------------------------------+-----------------------------------------------------------------------------------------------+
| fixatdl-layout-1-2.xsd                            | GUI: XML constructs to describe how a parameter should be rendered within a user interface -- |
|                                                   | this includes recommendations about GUI controls and their relative location within the       |
| http://www.fixprotocol.org/FIXatdl-1-2/Layout     | interface.                                                                                    |
+---------------------------------------------------+-----------------------------------------------------------------------------------------------+
| fixatdl-flow-1-2.xsd                              | GUI: Provides the ability to dynamically affect the behavior of a GUI control. Rules can be   |
|                                                   | created to enable or disable parameters based on values entered by the user in other          |
| http://www.fixprotocol.org/FIXatdl-1-2/Flow       | parameters.                                                                                   |
+---------------------------------------------------+-----------------------------------------------------------------------------------------------+
| fixatdl-regions-1-2.xsd                           | Data: Enumeration values for countries within three regions: TheAmericas,                     |
|                                                   | EuropeMiddleEastAfrica and AsiaPacificJapan.                                                  |
| http://www.fixprotocol.org/FIXatdl-1-2/Regions    |                                                                                               |
+---------------------------------------------------+-----------------------------------------------------------------------------------------------+
| fixatdl-timezones-1-2.xsd                         | Data: Lists enumeration values for world timezones based on zoneinfo database.                |
|                                                   |                                                                                               |
| http://www.fixprotocol.org/FIXatdl-1-2/Timezones  |                                                                                               |
+---------------------------------------------------+-----------------------------------------------------------------------------------------------+
