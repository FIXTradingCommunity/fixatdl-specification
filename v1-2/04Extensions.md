# Abstract Element Extensions

There are two elements in the schema that are defined as abstract. For
example, they cannot be included in a FIXatdl&reg; document without being
extended by another element via the XML Schema extension element. All
instances of these elements must indicate a derived type that is not
abstract via use of the attribute `xsi:type` defined in the namespace
[http://www.w3.org/2001/XMLSchema-instance](http://www.w3.org/2001/XMLSchema-instance).

## Parameter Element Extension

Custom parameters received by an algorithmic order recipient must be of
a type known to the recipient. For example, if the recipient is
expecting a floating point number in a particular tag then the order
sender must make certain that an actual floating point number goes in
that tag. FIXatdl&reg; requires that any custom parameter to an algorithm
must be of a type defined by the FIX Protocol. So the schema provides a
set of complex types that are used to extend the `Parameter` element.
These complex types directly correspond to the enumeration type
description of StrategyParameterType(959) in the [FIX Latest specification](https://www.fixtrading.org/online-specification/).

It is required that each `Parameter` element be extended by setting the
attribute `xsi:type` equal to the name of one of the FIXatdl&reg; parameter
extension types. An abstract `Parameter` element has the following
attributes (which are described in the section [*Attribute Definitions*](#attribute-definitions)):

- `name`
- `fixTag`
- `use`
- `mutableOnCxlRpl`
- `revertOnCxlRpl`
- `definedByFIX`
- `filter`
- `scope`
- `xsi:type`

\
When the `Parameter` element is extended it gains several more attributes
depending on the element to which it is extended.

The types of these attributes are also dependent on the extended element
and may vary from one `Parameter` element to another.

The following table presents the `xsi:type` names, the expected data type
of the wire-value and the extended attributes that apply only to the
specific parameter extension type.

------------------------------------------------------------------------------------------------------------------------------
**Parameter xsi:type**   **Corresponding FIX Types**      **Attribute Name[^2]**                         **Attribute Type[^2]**
------------------------ -------------------------------- ---------------------------------------------- ---------------------
Amt_t                    Amt                              minValue\                                      decimal\
                                                          maxValue\                                      decimal\
                                                          constValue                                     decimal

Boolean_t                Boolean                          trueWireValue[^3]\                             string\
                                                          falseWireValue[^3]\                            string\
                                                          constValue                                     boolean

Char_t                   char                             constValue                                     char

Country_t                Country                          constValue                                     Country

Currency_t               Currency                         constValue                                     string

Data_t                   data                             minLength\                                     Length\
                                                          maxLength\                                     Length\
                                                          constValue                                     Data

Exchange_t               Exchange                         constValue                                     Exchange

Float_t                  float                            minValue\                                      decimal\
                                                          maxValue\                                      decimal\
                                                          constValue\                                    decimal\
                                                          precision                                      non-negative int

Int_t                    int                              minValue\                                      int\
                                                          maxValue\                                      int\
                                                          constValue                                     int

Language_t               Language                         constValue                                     language

Length_t                 Length                           constValue                                     positiveInteger

LocalMktDate_t           LocalMktDate                     minValue\                                      LocalMktDate\
                                                          maxValue\                                      LocalMktDate\
                                                          constValue                                     LocalMktDate

MonthYear_t              month-year                       minValue\                                      MonthYear\
                                                          maxValue\                                      MonthYear\
                                                          constValue                                     MonthYear

MultipleCharValue_t      MultipleCharValue                minLength\                                     Length\
                                                          maxLength\                                     Length\
                                                          constValue\                                    MultipleCharValue\
                                                          invertOnWire                                   boolean

MultipleStringValue_t    MultipleStringValue              minLength\                                     Length\
                                                          maxLength\                                     Length\
                                                          constValue\                                    MultipleStringValue\
                                                          invertOnWire                                   boolean

NumInGroup_t             NumInGroup                       constValue                                     positiveInteger

Percentage_t             Percentage                       minValue\                                      Percentage\
                                                          maxValue\                                      Percentage\
                                                          constValue\                                    Percentage\
                                                          multiplyBy100                                  boolean

Price_t                  Price                            minValue\                                      Price\
                                                          maxValue\                                      Price\
                                                          constValue\                                    Price\
                                                          precision                                      non-negative int

PriceOffset_t            PriceOffset                      minValue\                                      PriceOffset\
                                                          maxValue\                                      PriceOffset\
                                                          constValue\                                    PriceOffset\
                                                          precision                                      non-negative int

Qty_t                    Qty                              minValue\                                      Qty\
                                                          maxValue\                                      Qty\
                                                          constValue\                                    Qty\
                                                          precision                                      non-negative int

SeqNum_t                 SeqNum                           constValue                                     positiveInteger

String_t                 string                           minLength\                                     Length\
                                                          maxLength\                                     Length\
                                                          constValue                                     string

TagNum_t                 int                              constValue                                     positiveInteger

Tenor_t                  Tenor                            constValue                                     Tenor

UTCDateOnly_t            UTCDateOnly                      minValue\                                      UTCDateOnly\
                                                          maxValue\                                      UTCDateOnly\
                                                          constValue                                     UTCDateOnly

UTCTimeOnly_t            UTCTimeOnly                      minValue\                                      time\
                                                          maxValue\                                      time\
                                                          constValue                                     time

UTCTimestamp_t           UTCTimestamp                     minValue\                                      time\
                                                          maxValue\                                      time\
                                                          constValue\                                    time\
                                                          localMktTz                                     LocalMktTz

TZTimestamp_t            TZTimestamp                      minValue\                                      time\
                                                          maxValue\                                      time\
                                                          constValue                                     time

TZTimeOnly_t             TZTimeOnly                       minValue\                                      TZTimeOnly\
                                                          maxValue\                                      TZTimeOnly\
                                                          constValue                                     TZTimeOnly
------------------------------------------------------------------------------------------------------------------------------

[^2]: Extended attributes specific to xsi:type
[^3]: Deprecated

For example, in the following code snippet an algorithmic parameter, "MktOnCloseFlag", is defined as being a "Boolean_t" type.

```xml
<Parameter name="MktOnCloseFlag" xsi:type="Boolean_t" fixTag="28001" use="required" trueWireValue="T" falseWireValue="F"/>
```
\
Notice that by setting `xsi:type` of this parameter to "Boolean_t",
the attributes `trueWireValue` and `falseWireValue`, which are
members of the derived element and accept standard XML string values, can now be used.

[Please note that the previous example shows two attributes which have
been deprecated, `Parameter/@trueWireValue` and
`Parameter/@falseWireValue`. The intention was to illustrate how extended
elements are used.]

In this next snippet a quantity parameter is defined.

```xml
<Parameter name="CrossQty" xsi:type="Qty_t" fixTag="28002" use="required" minValue="100"/>
```
\
By setting `xsi:type` to "Qty_t", a value for `minValue` can be provided.

## Control Element Extension

As with extensions to the `Parameter` element, FIXatdl&reg; provides a set of elements that
are derived from the `Control` element. Each of these elements inherits the attributes
of the `Control` element. They also have their own distinct attributes.

An abstract `Control` element has the following attributes (which are
described in the section [*Attribute Definitions*](#attribute-definitions)):

- `ID`
- `parameterRef`
- `label`
- `initFixField`
- `initPolicy`
- `tooltip`
- `disableForTemplate`
- `filter`
- `xsi:type`

\
When the `Control` element is extended it gains several more attributes
depending on the element to which it is extended.

The types of these attributes are also dependent on the extended element
and may vary from one `Control` element to another.

The following types are used to extend the `Control` element:

+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| Control xsi:type        | Description of desired control                  | Attribute Name[^1]                  | Attribute Type[^1]  |
+=========================+=================================================+=====================================+=====================+
| Clock_t                 | Clock with hours, minutes, seconds and AM/PM    | initValue                           | time                |
|                         | setting.                                        |                                     |                     |
|                         |                                                 | initValueMode                       | int                 |
|                         | Depending on the parameter type, this control   |                                     |                     |
|                         | may optionally also display a date selector.    | localMktTz                          | localMktTz_t        |
|                         |                                                 |                                     |                     |
|                         |                                                 | enablingControlType                 | string              |
|                         |                                                 |                                     |                     |
|                         |                                                 | disablingControlType                | string              |
|                         |                                                 |                                     |                     |
|                         |                                                 | disablingControlLabel               | string              |
|                         |                                                 |                                     |                     |
|                         |                                                 | displayableDate                     | string              |
|                         |                                                 |                                     |                     |
|                         |                                                 | displayableTimeZone                 | boolean             |
|                         |                                                 |                                     |                     |
|                         |                                                 | editableTimeZone                    | boolean             |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| TextField_t             | Standard text field.                            | initValue                           | string              |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| SingleSelectList_t      | Affords the user the ability to select one item | initValue                           | string              |
|                         | from a list.                                    |                                     |                     |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| MultiSelectList_t       | Affords the user the ability to select many     | initValue                           | MultipleStringValue |
|                         | items from a list. Values extracted from this   |                                     |                     |
|                         | type of control are expected to be transmitted  |                                     |                     |
|                         | using a MultipleStringValue or                  |                                     |                     |
|                         | MultipleCharValue FIX type.                     |                                     |                     |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| Slider_t                | Draggable slider with labels that map to        | initValue                           | string              |
|                         | values.                                         |                                     |                     |
|                         |                                                 | increment                           | double              |
|                         |                                                 |                                     |                     |
|                         |                                                 | incrementPolicy                     | string              |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| CheckBox_t              | Standard check box -- initialized to checked or | initValue                           | boolean             |
|                         | unchecked.                                      |                                     |                     |
|                         |                                                 | checkedEnumRef                      | string              |
|                         |                                                 |                                     |                     |
|                         |                                                 | uncheckedEnumRef                    | string              |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| CheckBoxList_t          | A list of check boxes where multiple selections | initValue                           | MultipleStringValue |
|                         | can be made. Values extracted from this type of |                                     |                     |
|                         | control are expected to be transmitted using a  | orientation                         | Orientation         |
|                         | MultipleStringValue or MultipleCharValue FIX    |                                     |                     |
|                         | type.                                           |                                     |                     |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| SingleSpinner_t         | A numeric field that has arrows to increment    | initValue                           | double              |
|                         | and decrement                                   |                                     |                     |
|                         |                                                 | increment                           | double              |
|                         |                                                 |                                     |                     |
|                         |                                                 | incrementPolicy                     | string              |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| DoubleSpinner_t         | A numeric field that has two sets of arrows to  | initValue                           | double              |
|                         | increment and decrement by different values     |                                     |                     |
|                         | (say for pennies and dollars). When pressed,    | innerIncrement                      | double              |
|                         | the right-most pair of arrows will increment    |                                     |                     |
|                         | (or decrement) the value of the control by the  | innerIncrementPolicy                | string              |
|                         | value of outerIncrement. Pressing the other     |                                     |                     |
|                         | pair of arrows will cause the value to be       | outerIncrement                      | double              |
|                         | incremented (or decremented) by the value of    |                                     |                     |
|                         | innerIncrement.                                 | outerIncrementPolicy                | string              |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| DropDownList_t          | More specific derivation of a SingleSelectList. | initValue                           | string              |
|                         | E.g., a combo box.                              |                                     |                     |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| EditableDropDownList_t  | More specific derivation of a SingleSelectList. | initValue                           | string              |
|                         | E.g., an editable combo box.                    |                                     |                     |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| RadioButton_t           | Standard radio button, but with no associated   | initValue                           | boolean             |
|                         | group.                                          |                                     |                     |
|                         |                                                 | radioGroup                          | string              |
|                         |                                                 |                                     |                     |
|                         |                                                 | checkedEnumRef                      | string              |
|                         |                                                 |                                     |                     |
|                         |                                                 | uncheckedEnumRef                    | string              |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| RadioButtonList_t       | More specific derivation of a SingleSelectList. | initValue                           | string              |
|                         | Several items are presented with an associated  |                                     |                     |
|                         | radio button where the user can select only one | orientation                         | Orientation         |
|                         | of them.                                        |                                     |                     |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+
| Label_t                 | Plain text.                                     | initValue                           | string              |
|                         |                                                 |                                     |                     |
|                         | Note that the label control's text may be       |                                     |                     |
|                         | updated through the execution of a StateRule.   |                                     |                     |
+-------------------------+-------------------------------------------------+-------------------------------------+---------------------+

[^1]: Attributes specific to `xsi:type`.

For example, in the following code snippet a control, "StartTimeCntl", is defined as being a "Clock_t". An initial value of "09:30" has been specified.

```xml
<Control ID="StartTimeCntl" xsi:type="lay:Clock_t" label="Start Time" initValue="09:30" localMktTz="America/New_York" parameterRef="StartTime"/>
```

# Dependencies and Structural Constraints beyond XML Schema {#dependencies}

While W3C XML Schema is useful for describing the structure of an
XML-based language, it still has its limitations. For example, it only
allows the specification of whether attributes are required or
optional. Furthermore, there is no way to specify more complex
constraints between attributes or between attributes or elements.

With this in mind the following table presents further constraints to
which XML document instances must conform if they are to be FIXatdl&reg;
compliant.

+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| ID | Affected Elements | Affected Attributes     | Description                                                                                    |
+====+===================+=========================+================================================================================================+
| 1  | Edit              | logicOperator, operator | Within an Edit element, the attributes operator and logicOperator are mutually exclusive.      |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 2  | Edit              | field2, value           | Within an Edit element, the attributes field2 and value are mutually exclusive.                |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 3  | StrategyPanel     |                         | A StrategyPanel element cannot have as child elements both Control elements and StrategyPanel  |
|    |                   |                         | elements.                                                                                      |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 4  | Edit              | field, field2           | Within an Edit element the attributes field and field2 must refer to either a pre-declared     |
|    |                   |                         | parameter name or a standard FIX field name (taken from the FIX specification) pre-pended with |
|    |                   |                         | the string "FIX_".                                                                             |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 5  | Edit              | value                   | Within an Edit element, the type of the value attribute must safely match with the type of     |
|    |                   |                         | parameter specified by the field attribute.                                                    |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 6  | Edit              | logicOperator, operator | If an Edit element is a child of another Edit element then the parent Edit element must have   |
|    |                   |                         | its logicOperator attribute defined and its operator attribute undefined.                      |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 7  | Edit              | field1, field2          | When a comparison is made between two operands, the values of the operands must either be of   |
|    |                   |                         | the same type or be able to be converted in such a way so that the resulting converted types   |
|    |                   |                         | are the same.                                                                                  |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 8  | Control           | parameterRef            | If Control/@parameterRef is defined it must be equal to the name attribute of one of the       |
|    |                   |                         | defined Parameter elements.                                                                    |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 9  | EnumPair          | enumID                  | If a Control is linked to a Parameter via use of Control/@parameterRef, and the Control        |
|    |                   |                         | contains ListItem elements, then the Parameter must contain EnumPair elements. Furthermore,    |
|    | ListItem          |                         | each of the Control's ListItem/@enumID values must match one and only one of the Parameter     |
|    |                   |                         | element's EnumPair/@enumID values.                                                             |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
| 10 | Control           | checkedEnumRef          | If values for Control/@checkedEnumRef or Control/@uncheckedEnumRef are provided then           |
|    |                   |                         | Control/@parameterRef must also be provided. Furthermore, the values of                        |
|    |                   | uncheckedEnumRef        | Control/@checkedEnumRef and Control/@uncheckedEnumRef each must be equal to one of the         |
|    |                   |                         | EnumPair/@enumID values of the Parameter element referred to by Control/@parameterRef.         |
+----+-------------------+-------------------------+------------------------------------------------------------------------------------------------+
