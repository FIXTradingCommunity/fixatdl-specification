# Element Definitions

A high-level description of the elements is provided in the following table.

+------------------+--------------------------------+---------------------------------------------------------------+
| Element Name     | Parent Element(s)              | Description                                                   |
+==================+================================+===============================================================+
| ClientGroup      | ClientGroups                   | Used to define a client classification. For example, large    |
|                  |                                | traders may be identified as `<Client ID="LT"/>`. Out-of-band |
|                  |                                | coordination may be required between an algo provider and an  |
|                  |                                | E/OMS vendor to define which client fall under the specified  |
|                  |                                | categories.                                                   |
+------------------+--------------------------------+---------------------------------------------------------------+
| ClientGroups     | Filter                         | An element used to build a list of ClientGroup elements.      |
|                  |                                | Applicable when filtering a Strategy based on the firms using |
|                  |                                | the E/OMS.                                                    |
+------------------+--------------------------------+---------------------------------------------------------------+
| Control          | Strategy, StrategyPanel        | Base element used to define GUI controls. Specific instances  |
|                  |                                | of controls are defined using the XML Schema xsi:type. For    |
|                  |                                | example `<Control xsi:type="lay:TextField_t"/>`, where        |
|                  |                                | TextField_t is a complex type defined in the FIXatdl&reg;     |
|                  |                                | Layout XML Schema.                                            |
+------------------+--------------------------------+---------------------------------------------------------------+
| ControlRef       | StrategyPanel                  | A reference to a Control element.                             |
+------------------+--------------------------------+---------------------------------------------------------------+
| Country          | Region                         | An element used to build a list of countries that may be      |
|                  |                                | included or excluded from a region. Its attribute,            |
|                  |                                | CountryCode, contains an ISO 3166-1 alpha-2 code.             |
+------------------+--------------------------------+---------------------------------------------------------------+
| DeliveryMethods  | Strategy                       | Indicates which FIX messages may be used to deliver orders    |
|                  |                                | from the order originator to the order recipient.             |
+------------------+--------------------------------+---------------------------------------------------------------+
| Description      | Parameter, EnumPair,           | Text providing a description of its parent element.           |
|                  | RepeatingGroup,                |                                                               |
|                  | Strategies, Strategy           |                                                               |
+------------------+--------------------------------+---------------------------------------------------------------+
| Edit             | StrategyEdit, StateRule,       | Boolean expression evaluated in validation and flow control   |
|                  | Strategies, Strategy           | rules. An Edit element will describe a condition that is      |
|                  |                                | either true or false.                                         |
|                  |                                |                                                               |
|                  |                                | An Edit element is most commonly used within StrategyEdit and |
|                  |                                | StateRule elements where its scope is limited to its parent   |
|                  |                                | element. However, when an Edit is child of a Strategy         |
|                  |                                | element, its scope extends the entire Strategy and can be     |
|                  |                                | reference by the child StateRule and StrategyEdit elements of |
|                  |                                | the Strategy element. When an Edit is a child of the          |
|                  |                                | Strategies element, its scope extends the entire XML instance |
|                  |                                | and may be referenced by any StateRule or StrategyEdit.       |
+------------------+--------------------------------+---------------------------------------------------------------+
| EditRef          | StrategyEdit, StateRule        | Child of a StrategyEdit element used to refer to an Edit      |
|                  |                                | element which was declared as a child of a Strategy or as a   |
|                  |                                | child of Strategies.                                          |
+------------------+--------------------------------+---------------------------------------------------------------+
| EnumPair         | Parameter                      | Defines a legal value of a parameter in the form of a wire    |
|                  |                                | value. A Parameter element will have an EnumPair element for  |
|                  |                                | each enumerated value which the parameter can take.           |
+------------------+--------------------------------+---------------------------------------------------------------+
| Filter           | Strategies, Strategy           | Defines a filtering criterion to be used in conjunction with  |
|                  |                                | the filter attribute of Parameter, EnumPair, Control and      |
|                  |                                | ListItem elements. Filter elements can contain any number of  |
|                  |                                | Regions, Markets, SecurityTypes or ClientGroups elements.     |
+------------------+--------------------------------+---------------------------------------------------------------+
| FixMsg           | DeliveryMethods                | Defines a type of FIX message that can be used when           |
|                  |                                | delivering orders.                                            |
+------------------+--------------------------------+---------------------------------------------------------------+
| HelpText         | Control                        | Text describing the use of a particular GUI control. This     |
|                  |                                | element is used when information about a control is lengthy   |
|                  |                                | and would only be appropriate to display in a dialog box --   |
|                  |                                | not as a tooltip.                                             |
+------------------+--------------------------------+---------------------------------------------------------------+
| LegPanel         | StrategyLayout, StrategyPanel  | Panel used to display leg-level controls.                     |
+------------------+--------------------------------+---------------------------------------------------------------+
| ListItem         | Control                        | Used for controls that let the user choose from a list of     |
|                  |                                | items. When a Control element is mapped top a Parameter       |
|                  |                                | element, via means of the Control element's "parameterRef"    |
|                  |                                | attribute, each ListItem will contain a reference to an       |
|                  |                                | EnumPair defined within the Parameter element.                |
+------------------+--------------------------------+---------------------------------------------------------------+
| Market           | Markets                        | Used as a child element of the Markets element. Defines a     |
|                  |                                | particular market using a market identifier code (MIC). An    |
|                  |                                | attribute, inclusion, determines whether the market should be |
|                  |                                | included or excluded from the list of markets created by the  |
|                  |                                | patterned element, Markets.                                   |
+------------------+--------------------------------+---------------------------------------------------------------+
| Markets          | Strategy                       | This element defines the markets/exchanges (by ISO 10383 MIC  |
|                  |                                | Code) of which the strategy is applicable. If no Markets      |
|                  |                                | element is defined then the strategy is applicable for        |
|                  |                                | \*ALL\* markets. If a market is defined and has its           |
|                  |                                | 'inclusion' attribute set to "Include", then it is            |
|                  |                                | implied that the strategy is applicable for \*ONLY\* that     |
|                  |                                | market.  If a region is defined and is set to "Exclude",      |
|                  |                                | then it is implied that the strategy is applicable for all    |
|                  |                                | markets \*EXCEPT\* that market.                               |
|                  |                                |                                                               |
|                  |                                | Include takes precedence over Exclude - for example, if XNAS  |
|                  |                                | is defined and set to "Include" and XLON is defined and set   |
|                  |                                | to "Exclude" then all other markets will also be excluded     |
|                  |                                | since the "Include" on XNAS takes precedence over the         |
|                  |                                | "Exclude" on XLON.  In this example, the definition of XLON   |
|                  |                                | as "Exclude" is unnecessary.                                  |
|                  |                                |                                                               |
|                  |                                | Markets are used in conjunction with regions and countries to |
|                  |                                | define the scope of the strategy.  Markets take precedence    |
|                  |                                | over regions and countries.  For example, if AsiaPacificJapan |
|                  |                                | is defined as "Exclude" but the Fukuoka Stock Exchange        |
|                  |                                | (XFKA) is defined as an included market, the strategy will be |
|                  |                                | applicable for all markets in The Americas and EMEA, as well  |
|                  |                                | as only the Fukuoka Stock Exchange in the APAC region.        |
+------------------+--------------------------------+---------------------------------------------------------------+
| Parameter        | Strategy, RepeatingGroup       | Element to define the characteristics of an algo parameter    |
|                  |                                | with respect to the data interface with the algo provider.    |
+------------------+--------------------------------+---------------------------------------------------------------+
| Region           | Regions                        | An individual region used as a child element of the Regions   |
|                  |                                | element.                                                      |
+------------------+--------------------------------+---------------------------------------------------------------+
| Regions          | Strategy                       | This element defines the globally based regions to which the  |
|                  |                                | strategy is applicable. It serves as a container of Region    |
|                  |                                | elements. To define a set of regions for a strategy use one   |
|                  |                                | or more Region elements. Region elements contain the          |
|                  |                                | attribute "inclusion" that determines whether the region is   |
|                  |                                | included from the set or excluded.                            |
|                  |                                |                                                               |
|                  |                                | If no Regions element is defined, then the strategy is        |
|                  |                                | applicable for *ALL* regions. If a region is defined and      |
|                  |                                | has its 'inclusion' attribute set to "Include", then it       |
|                  |                                | is implied that the strategy is applicable for *ONLY* that    |
|                  |                                | region. If a region is defined and is set to "Exclude",       |
|                  |                                | then it is implied that the strategy is applicable for all    |
|                  |                                | regions *EXCEPT* that region.                                 |
|                  |                                |                                                               |
|                  |                                | "Include" takes precedence over "Exclude" - for example,      |
|                  |                                | if "TheAmericas" is defined and set to "Include" and          |
|                  |                                | "EuropeMiddleEastAfrica" is defined and set to "Exclude" then |
|                  |                                | "AsiaPacificJapan" will also be excluded since the "Include"  |
|                  |                                | on "TheAmericas" takes precedence over the "Exclude" on       |
|                  |                                | "EuropeMiddleEastAfrica". In this example, the definition of  |
|                  |                                | "EuropeMiddleEastAfrica" as "Exclude" is unnecessary.         |
|                  |                                |                                                               |
|                  |                                | Regions also contain a child element called "Country" that    |
|                  |                                | allows the algo author to further specify the geographic      |
|                  |                                | scope of the strategy. Countries can be included and excluded |
|                  |                                | in the same manner as regions and the same rules of           |
|                  |                                | precedence apply. Please see fixatdl-regions-1-2.xsd for the  |
|                  |                                | list of ISO 3166 Country Code to region mappings.             |
+------------------+--------------------------------+---------------------------------------------------------------+
| RepeatingGroup   | Strategy                       | Container of a group of Parameter elements that are intended  |
|                  |                                | for use with multileg or basket strategies.                   |
|                  |                                |                                                               |
|                  |                                | Parameters contained within a RepeatingGroup element are      |
|                  |                                | intended to have their tag=value pairs populated in either    |
|                  |                                | the ListOrdGrp repeating group of a NewOrderList(35=E) message|
|                  |                                | or the LegOrdGrp repeating group of a NewOrderMultileg(35=AB) |
|                  |                                | message.                                                      |
|                  |                                |                                                               |
|                  |                                | Parameters not contained within a RepeatingGroup element have |
|                  |                                | their values populated in the main body of a message.         |
+------------------+--------------------------------+---------------------------------------------------------------+
| SecurityType     | SecurityTypes                  | An element used to describe a security type that may be       |
|                  |                                | included or excluded from the list built by the parent        |
|                  |                                | element, SecurityTypes. Its attribute, "name", contains a FIX |
|                  |                                | SecurityType(167) value.                                      |
+------------------+--------------------------------+---------------------------------------------------------------+
| SecurityTypes    | Strategy                       | The list of security types (by SecurityType(167)) for         |
|                  |                                | which the given strategy is valid. The absence of any         |
|                  |                                | security types implies that the strategy is valid for all     |
|                  |                                | security types.                                               |
+------------------+--------------------------------+---------------------------------------------------------------+
| StateRule        | Control                        | Defines workflow rule for a Control. Defines a workflow rule  |
|                  |                                | for a GUI control. Using StateRule as a child element of a    |
|                  |                                | Control element, rules can be defined which affect the        |
|                  |                                | "enabled" and "hidden" properties of the underlying           |
|                  |                                | Java/.Net/Web/etc. rendered on the screen.                    |
|                  |                                |                                                               |
|                  |                                | A StateRule element must contain a child Edit element. The    |
|                  |                                | action defined by the StateRule is in-effect when the         |
|                  |                                | condition described by its child Edit element is true. The    |
|                  |                                | action is not in-effect when the condition described by its   |
|                  |                                | child Edit element is false.                                  |
+------------------+--------------------------------+---------------------------------------------------------------+
| Strategies       | [n/a]                          | Container for all strategy elements. It is the root element   |
|                  |                                | of all FIXatdl&reg; conforming documents.                     |
+------------------+--------------------------------+---------------------------------------------------------------+
| Strategy         | Strategies                     | Root level of a strategy definition.                          |
+------------------+--------------------------------+---------------------------------------------------------------+
| StrategyEdit     | Strategy                       | Definition of a validation rule. A StrategyEdit element must  |
|                  |                                | contain an Edit element as a child. The boolean expression    |
|                  |                                | described by the Edit element is an assertion, i.e.,          |
|                  |                                | validation succeeds if the condition described by the Edit is |
|                  |                                | true and fails when the condition described by the Edit       |
|                  |                                | element is false. In the case where validation fails, the     |
|                  |                                | error message, supplied by the errorMessage attribute of      |
|                  |                                | StrategyEdit, may be displayed to an OMS user or logged.      |
+------------------+--------------------------------+---------------------------------------------------------------+
| StrategyLayout   | Strategy                       | Container for StrategyPanel elements. If declared, a          |
|                  |                                | StrategyLayout element must contain at least one              |
|                  |                                | StrategyPanel as a child element.                             |
+------------------+--------------------------------+---------------------------------------------------------------+
| StrategyPanel    | StrategyLayout, StrategyPanel  | Container for either groups of parameters or StrategyPanel    |
|                  |                                | elements, but not both. I.e., a StrategyPanel element will    |
|                  |                                | contain either all Control elements or all StrategyPanel      |
|                  |                                | elements.                                                     |
+------------------+--------------------------------+---------------------------------------------------------------+
| StrategyPanelRef | StrategyLayout, StrategyPanel  | A reference to a StrategyPanel element.                       |
+------------------+--------------------------------+---------------------------------------------------------------+
| VendorConfig     | Strategy                       | Element used to describe the requirements necessary for the   |
|                  |                                | E/OMS to support for the parent strategy to be applicable.    |
|                  |                                | Attributes are "legParameters" (indicating whether parameters |
|                  |                                | can be included in the legs of multileg orders) and           |
|                  |                                | "tag66support" (requiring the E/OMS to populate ListID(66) to |
|                  |                                | link together components of a multileg order).                |
+------------------+--------------------------------+---------------------------------------------------------------+

# Attribute Definitions of Elements

The following tables describe the attributes of all the FIXatdl&reg; XML elements. The format of the attribute name is

`<element name>/@<attribute>` where the element is one of the XML elements defined by FIXatdl&reg;.

Since some of the attributes are overloaded due to the way the `Parameter` and `Control` elements can be extended, types of certain attributes will depend on the type of the element. For these attributes, the conditions determining their type will be listed in their description.

Attributes that are applicable to extensions of the `Parameter` and `Control` elements have not been included in the tables. These are defined in section [Abstract Element Extensions](#abstract-element-extensions).

## Client Element

+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Client/@ID                          | string                   | Y         | Used to define a client classification. For example, large   |
|                                     |                          |           | traders may be identified as `<Client ID="LT"/>`.            |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Control Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Control/@checkedEnumRef             | StringID                 | N         | Refers to an enumID defined in the definition of the         |
|                                     |                          |           | Parameter referred by Control/@parameterRef. This enumID is  |
|                                     |                          |           | the output from this control if it is checked/selected.      |
|                                     |                          |           |                                                              |
|                                     |                          |           | **(See the section [A Sample FIXatdl&reg; Document](#sample) |
|                                     |                          |           | in this document for an example. Examine the Parameter       |
|                                     |                          |           | "AllowDarkPoolExec" and Control "DPOption" for details.)**   |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is CheckBox_t or  RadioButton_t.    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@col                        | non-negative int         | N         | Column in which this item is to appear in a grid-oriented    |
|                                     |                          |           | panel.                                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when encompassing StrategyPanel orientation is    |
|                                     |                          |           | GRID.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@colSpan                    | non-negative int         | N         | Number of colums an item is to span in a  grid-oriented      |
|                                     |                          |           | panel. (Default: 1)                                          |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when encompassing StrategyPanel orientation is    |
|                                     |                          |           | GRID.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@disableForTemplate         | boolean                  | N         | For implementing systems that support saving order templates |
|                                     |                          |           | or pre-populated orders for basket trading/list trading this |
|                                     |                          |           | attribute specifies that the control should be disabled when |
|                                     |                          |           | the order screen is going to be saved as a template and not  |
|                                     |                          |           | actually used to place an order.                             |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@disablingControlType       | string                   | N         | Description of the GUI control to be rendered which directs  |
|                                     |                          |           | the OMS to disable the clock (greyed-out with null value)    |
|                                     |                          |           | and block users from providing input.                        |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - CheckBox                                                   |
|                                     |                          |           | - RadioButton                                                |
|                                     |                          |           | - DropDown                                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@disablingControlText       | String                   | N         | Text to display next to the disabling GUI control. Intended  |
|                                     |                          |           | to describe the effective result of explicitly disabling the |
|                                     |                          |           | clock via its disabling control.                             |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@displayableDate            | boolean                  | N         | Instructs the OMS to display the date.                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is Clock_t (default: false)         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@displayableTz              | boolean                  | N         | Instructs the OMS to display the time zone associated with   |
|                                     |                          |           | the value entered by the user.                               |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is Clock_t (default: true)          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@editableDate               | boolean                  | N         | Instructs the OMS to allow the user to change the date. The  |
|                                     |                          |           | OMS would decide how to do this.                             |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is Clock_t (default: true)          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@editableTz                 | boolean                  | N         | Instructs the OMS to allow the user to change the time zone. |
|                                     |                          |           | The OMS would decide how to do this.                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is Clock_t (default: false)         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@enablingControlType        | string                   | N         | Description of the GUI control to be rendered which directs  |
|                                     |                          |           | the OMS to enable the clock and allow it to accept user      |
|                                     |                          |           | input.                                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | If an OMS supports this feature and enablingControlType is   |
|                                     |                          |           | provided, then the OMS may render a GUI control of this type |
|                                     |                          |           | next to the GUI control intended to accept datetime values   |
|                                     |                          |           | from the user.                                               |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - CheckBox                                                   |
|                                     |                          |           | - RadioButton                                                |
|                                     |                          |           | - DropDown                                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@ID                         | StringID                 | Y         | Unique identifier of this control. No two controls of the    |
|                                     |                          |           | same strategy can have the same ID.                          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@increment                  | decimal                  | N         | Limits the granularity of a spinner control. Useful in       |
|                                     |                          |           | spinner objects to enforce odd-lot and sub-penny             |
|                                     |                          |           | restrictions.                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is SingleSpinner_t or Slider_t.     |
|                                     |                          |           | (In this case a Slider_t must be used to select a value      |
|                                     |                          |           | within a continuous range, say a decimal value between a     |
|                                     |                          |           | minimum and maximum value. As opposed to the case where the  |
|                                     |                          |           | Slider_t is used to select from  a set of values not unlike  |
|                                     |                          |           | a DropDownList_t.)                                           |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@incrementPolicy            | string                   | N         | For single spinner control, defines how to determine the     |
|                                     |                          |           | increment.                                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Static -- use value from increment attribute             |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   LotSize -- use the round lot size of symbol. (If this    |
|                                     |                          |           |     value is not available, use the value from the increment |
|                                     |                          |           |     attribute.)                                              |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Tick -- use symbol minimum tick size. (If this value     |
|                                     |                          |           |     is not available, use the value from the increment       |
|                                     |                          |           |     attribute.)                                              |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is SingleSpinner_t.                 |
|                                     |                          |           |                                                              |
|                                     |                          |           | If no value is supplied then use value from increment        |
|                                     |                          |           | attribute.                                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Please note: The schema file, fixatdl-layout-1-2.xsd, does |
|                                     |                          |           | not include the "Static" enumeration value. If "Static"      |
|                                     |                          |           | behavior is desired then do not populate this attribute.**   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@initFixField               | positiveInteger          | N         | Indicates the initialization value is to be taken from this  |
|                                     |                          |           | standard FIX field. Format: "FIX_" + FIXFieldName. E.g.      |
|                                     |                          |           | "FIX_OrderQty".                                              |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when initPolicy="UseFixField".                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@initPolicy                 | string                   | N         | Describes how to initialize the control.                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | If the value of this attribute is undefined or equal to      |
|                                     |                          |           | "UseValue" and initValue is defined then initialize with     |
|                                     |                          |           | initValue.                                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | If the value is equal to "UseFixField" then attempt to       |
|                                     |                          |           | initialize with the value of the tag specified in            |
|                                     |                          |           | initFixField. If the value is equal to "UseFixField" and it  |
|                                     |                          |           | is not possible to access the value of the specified FIX tag |
|                                     |                          |           | then revert to using initValue. If the value is equal to     |
|                                     |                          |           | "UseFixField", the field is not accessible, and initValue is |
|                                     |                          |           | not defined, then do not initialize.                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   UseValue                                                 |
|                                     |                          |           | -   UseFixField                                              |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@initValue                  | (Depends on value of     | N         | The value used to pre-populate the GUI component when the    |
|                                     | xsi:type)                |           | order entry screen is initially rendered. The type of        |
|                                     |                          |           | initValue is dependent on the value of Control/@xsi:type.    |
|                                     |                          |           |                                                              |
|                                     |                          |           | The following list gives the type of this attribute based on |
|                                     |                          |           | the value of xsi:type.                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | **[xsi:type]{.underline}:** [initValue *type*]{.underline}   |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Clock_t:** time\                                           |
|                                     |                          |           | **TextField_t:** string\                                     |
|                                     |                          |           | **SingleSelectList_t:** string\                              |
|                                     |                          |           | **MultiSelectList_t:** MultipleStringValue\                  |
|                                     |                          |           | **Slider_t:** double\                                        |
|                                     |                          |           | **CheckBox_t:** boolean ("true"/"false")\                    |
|                                     |                          |           | **CheckBoxList_t:** MultipleStringValue\                     |
|                                     |                          |           | **SingleSpinner_t:** double\                                 |
|                                     |                          |           | **DoubleSpinner_t** double\                                  |
|                                     |                          |           | **DropDownList_t** string\                                   |
|                                     |                          |           | **EditableDropDownList_t:** string\                          |
|                                     |                          |           | **RadioButton_t:** boolean ("true"/"false")\                 |
|                                     |                          |           | **RadioButtonList_t:** string\                               |
|                                     |                          |           | **Label_t:** string\                                         |
|                                     |                          |           | **HiddenField_t:** string\                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | The use of initValue also depends on the value of xsi:type.  |
|                                     |                          |           |                                                              |
|                                     |                          |           | **[xsi:type]{.underline}:** [initValue *use*]{.underline}    |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Clock_t:** time (expressed in Control/@localMktTz)\        |
|                                     |                          |           | **TextField_t:** string\                                     |
|                                     |                          |           | **SingleSelectList_t:** enumID of a child ListItem\          |
|                                     |                          |           | **MultiSelectList_t:** enumIDs of child ListItems\           |
|                                     |                          |           | **Slider_t:** valid value returned by the slider\            |
|                                     |                          |           | **CheckBox_t:** "true" (checked) or "false" (unchecked)\     |
|                                     |                          |           | **CheckBoxList_t:** enumIDs of ListItems to be checked       |
|                                     |                          |           | (separated by single spaces)\                                |
|                                     |                          |           | **SingleSpinner_t:** double\                                 |
|                                     |                          |           | **DoubleSpinner_t:** double\                                 |
|                                     |                          |           | **DropDownList_t:** enumID of a child ListItem\              |
|                                     |                          |           | **EditableDropDownList_t:** enumID of a child ListItem\      |
|                                     |                          |           | **RadioButton_t:** "true" (selected) or "false" (unselected)\|
|                                     |                          |           | **RadioButtonList_t:** enumID of ListItem to be pushed\      |
|                                     |                          |           | **Label_t:** string to render\                               |
|                                     |                          |           | **HiddenField_t:** non-displayed string                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when initPolicy="UseValue".                         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@initValueMode              | int                      | N         | Defines the treatment of initValue time. 0: use initValue;   |
|                                     |                          |           | 1: use current time if initValue time has passed.            |
|                                     |                          |           |                                                              |
|                                     |                          |           | The default value is 0.                                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable only when Control/@xsi:type is Clock_t.           |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@innerIncrement             | decimal                  | N         | Limits the granularity of the inner spinner of a double      |
|                                     |                          |           | spinner control. Useful in spinner objects to enforce        |
|                                     |                          |           | odd-lot and sub-penny restrictions.                          |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is DoubleSpinner_t.                 |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@innerIncrementPolicy       | string                   | N         | For double spinner control, defines how to determine the     |
|                                     |                          |           | increment for the inner set of spinners.                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Static -- use value from innerIncrement attribute        |
|                                     |                          |           | -   LotSize -- use the round lot size of symbol              |
|                                     |                          |           | -   Tick -- use symbol minimum tick size                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is DoubleSpinner_t.                 |
|                                     |                          |           |                                                              |
|                                     |                          |           | If no value is supplied then use value from innerIncrement   |
|                                     |                          |           | attribute.                                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Please note: The schema file, fixatdl-layout-1-2.xsd, does |
|                                     |                          |           | not include the "Static" enumeration value. If "Static"      |
|                                     |                          |           | behavior is desired then do not populate this attribute.**   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@label                      | string                   | N         | A title for this control which may be displayed.             |
|                                     |                          |           |                                                              |
|                                     |                          |           | If the control is a Label_t then Control/@label or           |
|                                     |                          |           | Control/@initValue must be used to define the string which   |
|                                     |                          |           | is to be rendered. If both attributes are provided then      |
|                                     |                          |           | Control/@initValue takes precedence.                         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@localMktTz                 | LocalMktTz               | N         | The timezone in which initValue is represented in. Required  |
|                                     |                          |           | when initValue is supplied.                                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is Clock_t.                         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@orientation                | Orientation              | Y         | Declares the orientation of the radio buttons within a       |
|                                     |                          |           | RadioButtonList or the checkboxes within a CheckBoxList.     |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - HORIZONTAL                                                 |
|                                     |                          |           | - VERTICAL                                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is RadioButtonList_t or             |
|                                     |                          |           | CheckBoxList_t.                                              |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@outerIncrement             | decimal                  | N         | Limits the granularity an outer spinner of a double spinner  |
|                                     |                          |           | control. Useful in spinner objects to enforce odd-lot and    |
|                                     |                          |           | sub-penny restrictions.                                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is DoubleSpinner_t.                 |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@outerIncrementPolicy       | string                   | N         | For double spinner control, defines how to determine the     |
|                                     |                          |           | increment for the outer set of spinners.                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Static -- use value from outerIncrement attribute        |
|                                     |                          |           | -   LotSize -- use the round lot size of symbol              |
|                                     |                          |           | -   Tick -- use symbol minimum tick size                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is DoubleSpinner_t.                 |
|                                     |                          |           |                                                              |
|                                     |                          |           | If no value is supplied then use value from outerIincrement  |
|                                     |                          |           | attribute.                                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Please note: The schema file, fixatdl-layout-1-2.xsd, does |
|                                     |                          |           | not include the "Static" enumeration value. If "Static"      |
|                                     |                          |           | behavior is desired then do not populate this attribute.**   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@parameterRef               | StringID                 | N         | The name of the parameter for which this control gives the   |
|                                     |                          |           | visual representation. A parameter with this name must be    |
|                                     |                          |           | defined within the same strategy as this control.            |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@radioGroup                 | String                   | N         | Identifies a common group name used by a set of RadioButton_t|
|                                     |                          |           | among which only one radio button may be selected at a time. |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is RadioButton_t.                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@row                        | non-negative int         | N         | Row in which this item is to appear in a grid-oriented panel.|
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when encompassing StrategyPanel orientation is    |
|                                     |                          |           | GRID.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@rowSpan                    | non-negative int         | N         | Number of rows an item is to span in a grid-oriented panel.  |
|                                     |                          |           | (default: 1)                                                 |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when encompassing StrategyPanel orientation is    |
|                                     |                          |           | GRID.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@tooltip                    | string                   | N         | Tool tip text for rendered GUI objects rendered for the      |
|                                     |                          |           | parameter.                                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@uncheckedEnumRef           | StringID                 | N         | Refers to an enumID defined in the definition of the         |
|                                     |                          |           | parameter referred by Control/@parameterRef. This enumID is  |
|                                     |                          |           | the output from this control if it is unchecked/unselected.  |
|                                     |                          |           |                                                              |
|                                     |                          |           | **(See the section [A Sample FIXatdl&reg; Document](#sample) |
|                                     |                          |           | in this document for an example. Examine the parameter       |
|                                     |                          |           | "AllowDarkPoolExec" and Control "DPOption" for details.)**   |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is CheckBox_t or RadioButton_t.     |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Control/@xsi:type                   | string                   | Y         | Indicates the type of GUI control that should be rendered on |
|                                     |                          |           | the screen.                                                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   CheckBox_t                                               |
|                                     |                          |           | -   CheckBoxList_t                                           |
|                                     |                          |           | -   Clock_t                                                  |
|                                     |                          |           | -   DoubleSpinner_t                                          |
|                                     |                          |           | -   DropDownList_t                                           |
|                                     |                          |           | -   EditableDropDownList_t                                   |
|                                     |                          |           | -   HiddenField_t                                            |
|                                     |                          |           | -   Label_t                                                  |
|                                     |                          |           | -   MultiSelectList_t                                        |
|                                     |                          |           | -   RadioButton_t                                            |
|                                     |                          |           | -   RadioButtonList_t                                        |
|                                     |                          |           | -   SingleSelectList_t                                       |
|                                     |                          |           | -   SingleSpinner_t                                          |
|                                     |                          |           | -   Slider_t                                                 |
|                                     |                          |           | -   TextField_t                                              |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Country Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Country/@CountryCode                | String restricted to     | Y         | ISO 3166-1 alpha-2 code for the countries to include or      |
|                                     | "[A-Z0-9]{2}"            |           | exclude in a given region.                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Country/@inclusion                  | string                   | Y         | Indicates whether this country should be included or         |
|                                     |                          |           | excluded from encompassing list.                             |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - Include                                                    |
|                                     |                          |           | - Exclude                                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Edit Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Edit/@field                         | string                   | N         | Field name for comparison. When the edit is used within a    |
|                                     |                          |           | StateRule, this field must refer to the ID of a Control.     |
|                                     |                          |           | When the edit is used within a StrategyEdit, this field must |
|                                     |                          |           | refer to either the name of a parameter or a standard FIX    |
|                                     |                          |           | field name. When referring to a standard FIX tag then the    |
|                                     |                          |           | name must be pre-pended with the string "FIX_", e.g.         |
|                                     |                          |           | "FIX_OrderQty".                                              |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when: Edit/@operator is defined.                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Edit/@field2                        | string                   | N         | Value used as the second operand. Used in conjunction with   |
|                                     |                          |           | Edit/@field and Edit/@operator. Similar definition to        |
|                                     |                          |           | Edit/@field except that it is mutually exclusive with        |
|                                     |                          |           | Edit/@value.                                                 |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when: Edit/@operator is in {GE,GT, LE, LT, EQ, NE}  |
|                                     |                          |           | and Edit/@value is not specified.                            |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Edit/@id                            | string                   | N         | Optional identifier. Allows for re-use of this edit within   |
|                                     |                          |           | StateRule or EditRef elements. This attribute is required if |
|                                     |                          |           | the Edit element is a direct child of either the Strategies  |
|                                     |                          |           | or Strategy elements.                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Edit/@legNo                         | non-negative int         | N         | Used in conjunction with Edit/@field, declares the leg number|
|                                     |                          |           | of which the field is to be retrieved when the field is      |
|                                     |                          |           | evaluated.                                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Edit/@logicOperator                 | LogicalOperator          | N         | Operator where operands are one or more Edit elements.       |
|                                     |                          |           | Short-circuit evaluation is assumed in all edit statements.  |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   AND                                                      |
|                                     |                          |           | -   OR                                                       |
|                                     |                          |           | -   XOR                                                      |
|                                     |                          |           | -   NOT                                                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when operator is not present. An edit element must  |
|                                     |                          |           | contain either a logicOperator attribute or an operator      |
|                                     |                          |           | attribute, but never both.                                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | By convention, XOR returns true when **one and only one** of |
|                                     |                          |           | its operands is true.                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Edit/@operator                      | Operator                 | N         | One of the following enumerated types:                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   EX (Exists. I.e. the user has entered a value)           |
|                                     |                          |           | -   NX (Not exists. I.e. the user has not entered a value)   |
|                                     |                          |           | -   EQ (Equal)                                               |
|                                     |                          |           | -   LT (Less than)                                           |
|                                     |                          |           | -   GT (Greater than)                                        |
|                                     |                          |           | -   NE (Not equal)                                           |
|                                     |                          |           | -   LE (Less than equal)                                     |
|                                     |                          |           | -   GE (Greater than equal)                                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when logicOperator is not present. An Edit element  |
|                                     |                          |           | must contain either a logicOperator attribute or an operator |
|                                     |                          |           | attribute, but never both.                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Edit/@value                         | string                   | N         | Value used as the second operand. Used in conjunction with   |
|                                     |                          |           | Edit/@field and Edit/@operator. Represents a string          |
|                                     |                          |           | literal value and not a reference.                           |
|                                     |                          |           |                                                              |
|                                     |                          |           | When Edit is a descendant of a StateRule element, Edit/@value|
|                                     |                          |           | refers to the value of the control referred by Edit/@field.  |
|                                     |                          |           | If the control referred by Edit/@field has enumerated values |
|                                     |                          |           | then Edit/@value refers to the enumID of one of the          |
|                                     |                          |           | control's ListItem elements.                                 |
|                                     |                          |           |                                                              |
|                                     |                          |           | When Edit is a descendant of a StrategyEdit element,         |
|                                     |                          |           | Edit/@value refers to the wireValue of the parameter         |
|                                     |                          |           | referred by Edit/@field.                                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when: Edit/@operator is in {GE, GT, LE, LT, EQ, NE} |
|                                     |                          |           | and Edit/@field2 is not specified.                           |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| EditRef/@id                         | string                   | Y         | Refers to an ID of a previously defined Edit element. The    |
|                                     |                          |           | Editelement may be defined at the strategy level or at the   |
|                                     |                          |           | strategies level.                                            |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## EnumPair Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| EnumPair/@enumID                    | StringID                 | Y         | A unique identifier of an enumPair element per parameter.    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| EnumPair/@index                     | integer                  | N         | **Deprecated.** Previously defined an ordering of the        |
|                                     |                          |           | enumerated values. If defined it should be ignored.          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| EnumPair/@wireValue                 | string                   | Y         | The corresponding value that is used to populate the FIX     |
|                                     |                          |           | message.                                                     |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Filter Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Filter/@id                          | StringID                 | Y         | An identifier for a global filter definition. Elements which |
|                                     |                          |           | declare a filter attribute must have it refer to a global    |
|                                     |                          |           | filter ID.                                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## FixMsg Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| FixMsg/@msgType                     | string                   | Y         | Method in which the algo provider can accept this type of    |
|                                     |                          |           | order.                                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - NewOrderSingle                                             |
|                                     |                          |           | - NewOrderMultileg                                           |
|                                     |                          |           | - NewOrderList                                               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## ListItem Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| ListItem/@enumID                    | StringID                 | N         | A reference to the enumPair specified in the parameter       |
|                                     |                          |           | definition specified by the parent Control's parameterRef    |
|                                     |                          |           | attribute. Use is optional when the parent Control element   |
|                                     |                          |           | does not refer to a parameter.                               |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when: the parent Control element has a defined      |
|                                     |                          |           | parameterRef attribute.                                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| ListItem/@uiRep                     | string                   | Y         | The value shown in the list. These are the values that go    |
|                                     |                          |           | into Java, .Net or Web list controls.                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Market Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Market/@inclusion                   | string                   | Y         | Indicates whether this market should be included or excluded |
|                                     |                          |           | from encompassing list.                                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - Include                                                    |
|                                     |                          |           | - Exclude                                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Market/@MICCode                     | string                   | Y         | String representing a market or exchange -- ISO 10383 Market |
|                                     |                          |           | Identifier Code (MIC).                                       |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Parameter Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Parameter/@constValue               | (Depends on value of     | N         | The value of a parameter that is constant and is not referred|
|                                     | xsi:type)                |           | by a Control element. This value must be sent on the wire by |
|                                     |                          |           | the order generating application.                            |
|                                     |                          |           |                                                              |
|                                     |                          |           | The following list gives the type of this attribute based on |
|                                     |                          |           | the value of xsi:type.                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | **[xsi:type]{.underline}:** [constValue type]{.underline}    |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Int_t:** int\                                              |
|                                     |                          |           | **Length_t:** positiveInteger\                               |
|                                     |                          |           | **NumInGroup_t:** positiveInteger\                           |
|                                     |                          |           | **SeqNum_t:** positiveInteger\                               |
|                                     |                          |           | **TagNum_t:** positiveInteger\                               |
|                                     |                          |           | **Float_t:** decimal\                                        |
|                                     |                          |           | **Qty_t:** Qty\                                              |
|                                     |                          |           | **Price_t:** Price\                                          |
|                                     |                          |           | **PriceOffset_t:** PriceOffset\                              |
|                                     |                          |           | **Amt_t:** Amt\                                              |
|                                     |                          |           | **Percentage_t:** Percentage\                                |
|                                     |                          |           | **Char_t:** char\                                            |
|                                     |                          |           | **Boolean_t:** Boolean ('Y'/'N')\                            |
|                                     |                          |           | **String_t:** string\                                        |
|                                     |                          |           | **MultipleCharValue_t:** MultipleCharValue\                  |
|                                     |                          |           | **Currency_t:** Currency\                                    |
|                                     |                          |           | **Exchange_t:** Exchange\                                    |
|                                     |                          |           | **MonthYear_t:** MonthYear\                                  |
|                                     |                          |           | **UTCTimestamp_t:** time\                                    |
|                                     |                          |           | **UTCTimeOnly_t:** time\                                     |
|                                     |                          |           | **LocalMktDate_t:** date\                                    |
|                                     |                          |           | **UTCDateOnly_t:** UTCDateOnly\                              |
|                                     |                          |           | **Data_t:** Data\                                            |
|                                     |                          |           | **MultipleStringValue_t:** MultipleStringValue\              |
|                                     |                          |           | **Country_t:** Country\                                      |
|                                     |                          |           | **Language_t:** language\                                    |
|                                     |                          |           | **TZTimestamp_t:** time\                                     |
|                                     |                          |           | **TZTimeOnly_t:** TZTimeOnly\                                |
|                                     |                          |           | **Tenor_t:** Tenor\                                          |
|                                     |                          |           |                                                              |
|                                     |                          |           | When defined in UTCTimestamp_t elements the following apply: |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Contains only time information -- not day, month or year.|
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Used in conjunction with Parameter/@localMktTz, this     |
|                                     |                          |           |     value must be used for the time portion of a             |
|                                     |                          |           |     UTCTimestamp that is sent on the wire by the order       |
|                                     |                          |           |     generating application. For example, if                  |
|                                     |                          |           |     constValue="08:30:00" and localMktTz="America/Chicago",  |
|                                     |                          |           |     daylight savings time is in effect in Chicago and the    |
|                                     |                          |           |     date is July 1, 2010, then the value "20100701-13:30:00" |
|                                     |                          |           |     would be sent on the wire.                               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@definedByFIX             | boolean                  | N         | Indicates whether the parameter is a redefinition of a       |
|                                     |                          |           | standard FIX tag. The default value is False.                |
|                                     |                          |           |                                                              |
|                                     |                          |           | For example, if the algorithm redefines the OrderQty(38)     |
|                                     |                          |           | then the parameter declaration may be similar to:            |
|                                     |                          |           |                                                              |
|                                     |                          |           | ```xml                                                       |
|                                     |                          |           | <Parameter name="OrderQty" xsi:type="Qty_t"                  |
|                                     |                          |           |     fixTag="38" definedByFIX="true"                          |
|                                     |                          |           |     use="required"/>                                         |
|                                     |                          |           | ```                                                          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@falseWireValue           | string                   | N         | Applicable only when xsi:type is Boolean_t.                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | **This attribute is targeted for deprecation.**              |
|                                     |                          |           |                                                              |
|                                     |                          |           | To achieve the same functionality, it is recommended that    |
|                                     |                          |           | a Char_t or String_t type parameter be used instead of a     |
|                                     |                          |           | Boolean_t. The parameter should have two EnumPairs defined   |
|                                     |                          |           | with one defining the false wire-value and the other         |
|                                     |                          |           | defining the true wire-value. The parameter should be bound  |
|                                     |                          |           | to a CheckBox control. The CheckBox control should define    |
|                                     |                          |           | the parameters checkedEnumRef and uncheckedEnumRef to refer  |
|                                     |                          |           | to the enumIDs of the parameter. (See the section            |
|                                     |                          |           | [A Sample FIXatdl&reg; Document](#sample) in this document   |
|                                     |                          |           | for an example. Examine the Parameter "AllowDarkPoolExec"    |
|                                     |                          |           | and Control "DPOption" for details.)                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | The deprecated use is described as follows:                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | Defines the value with which to populate the FIX message     |
|                                     |                          |           | when the boolean parameter is False. Overrides the           |
|                                     |                          |           | standard FIX boolean value of "N". I.e. if this attribute is |
|                                     |                          |           | not provided then the order-sending application must use "N".|
|                                     |                          |           |                                                              |
|                                     |                          |           | If it is desired that the FIX message is not to be populated |
|                                     |                          |           | with this tag when the value of the parameter is false, then |
|                                     |                          |           | falseWireValue should be defined as "{NULL}".                |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@filter                   | string                   | N         | Refers to the ID of a globally defined filter. Affects       |
|                                     |                          |           | whether the parameter is applicable in the strategy.         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@fixTag                   | positiveInteger          | N         | The tag that will hold the value of the parameter.           |
|                                     |                          |           |                                                              |
|                                     |                          |           | Required when: parameter value is intended to be transported |
|                                     |                          |           | over the wire.                                               |
|                                     |                          |           |                                                              |
|                                     |                          |           | If fixTag is not provided then the Strategies-level          |
|                                     |                          |           | attribute, tag957Support, must be set to true, indicating    |
|                                     |                          |           | that the order recipient expects to receive algo parameters  |
|                                     |                          |           | in the StrategyParameterGrp repeating group beginning at tag |
|                                     |                          |           | 957.                                                         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@invertOnWire             | boolean                  | N         | Applicable when: xsi:type is MultipleStringValue_t or        |
|                                     |                          |           | MultipleCharValue_t.                                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | Instructs the OMS whether to perform a bitwise "not"         |
|                                     |                          |           | operation on each element of these lists.                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@localMktTz               | string                   | N         | Describes the time zone without indicating whether daylight  |
|                                     |                          |           | savings is in effect. Valid values are taken from names in   |
|                                     |                          |           | the Olson time zone database. All are of the form            |
|                                     |                          |           | Area/Location, where Area is the name of a continent or      |
|                                     |                          |           | ocean, and Location is the name of a specific location       |
|                                     |                          |           | within that region. E.g. America/Chicago.                    |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when xsi:type is UTCTimestamp_t.                  |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@maxLength                | non-negative int         | N         | Applicable when xsi:type is String_t, MultipleCharValue_t or |
|                                     |                          |           | MultipleStringValue_t.                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | The maximum allowable length of the parameter.               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@maxValue                 | (Depends on value of     | N         | Maximum value of the parameter accepted by the algorithm     |
|                                     | xsi:type)                |           | provider.                                                    |
|                                     |                          |           |                                                              |
|                                     |                          |           | The following list gives the type of this attribute based on |
|                                     |                          |           | the value of xsi:type.                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | **[xsi:type]{.underline}:** [initValue type]{.underline}     |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Int_t:** int\                                              |
|                                     |                          |           | **Float_t:** decimal\                                        |
|                                     |                          |           | **Qty_t:** Qty\                                              |
|                                     |                          |           | **Price_t:** Price\                                          |
|                                     |                          |           | **PriceOffset_t:** PriceOffset\                              |
|                                     |                          |           | **Amt_t:** Amt\                                              |
|                                     |                          |           | **Percentage_t:** Percentage\                                |
|                                     |                          |           | **MonthYear_t:** MonthYear\                                  |
|                                     |                          |           | **UTCTimestamp_t:** time\                                    |
|                                     |                          |           | **UTCTimeOnly_t:** time\                                     |
|                                     |                          |           | **LocalMktDate_t:** date\                                    |
|                                     |                          |           | **UTCDateOnly_t:** UTCDateOnly\                              |
|                                     |                          |           | **TZTimestamp_t:** time\                                     |
|                                     |                          |           | **TZTimeOnly_t:** TZTimeOnly\                                |
|                                     |                          |           | **Tenor_t:** Tenor                                           |
|                                     |                          |           |                                                              |
|                                     |                          |           | This attribute is applicable only for the xsi:type values    |
|                                     |                          |           | listed above.                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | maxValue has no default value.                               |
|                                     |                          |           |                                                              |
|                                     |                          |           | When defined in UTCTimestamp_t elements the following        |
|                                     |                          |           | applies:                                                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Maximum local market time. Represents an instance of     |
|                                     |                          |           |     time that recurs every day. Contains only time           |
|                                     |                          |           |     information -- not day, month or year.                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Used in conjunction with Parameter/@localMktTz, this     |
|                                     |                          |           |     value represents the maximum time of day allowed for     |
|                                     |                          |           |     the parameter.                                           |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@minLength                | non-negative int         | N         | Applicable when xsi:type is String_t.                        |
|                                     |                          |           |                                                              |
|                                     |                          |           | The minimum allowable length of the parameter.               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@minValue                 | (Depends on value of     | N         | Minimum value of the parameter accepted by the algorithm     |
|                                     | xsi:type)                |           | provider.                                                    |
|                                     |                          |           |                                                              |
|                                     |                          |           | The following list gives the type of this attribute based on |
|                                     |                          |           | the value of xsi:type. Default values, where applicable, are |
|                                     |                          |           | provided, otherwise minValue has no default value.           |
|                                     |                          |           |                                                              |
|                                     |                          |           | **[xsi:type]{.underline}:**  [initValue type]{.underline}    |
|                                     |                          |           | ([default]{.underline})                                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Int_t:** int\                                              |
|                                     |                          |           | **Float_t:** decimal\                                        |
|                                     |                          |           | **Qty_t:** Qty (0)\                                          |
|                                     |                          |           | **Price_t:** Price (0)\                                      |
|                                     |                          |           | **PriceOffset_t:** PriceOffset (0)\                          |
|                                     |                          |           | **Amt_t:** Amt (0)\                                          |
|                                     |                          |           | **Percentage_t:** Percentage (0)\                            |
|                                     |                          |           | **MonthYear_t:** MonthYear\                                  |
|                                     |                          |           | **UTCTimestamp_t:** UTCTimestamp\                            |
|                                     |                          |           | **UTCTimeOnly_t:** time\                                     |
|                                     |                          |           | **LocalMktDate_t:** date\                                    |
|                                     |                          |           | **UTCDateOnly_t:** UTCDateOnly\                              |
|                                     |                          |           | **TZTimestamp_t:** time\                                     |
|                                     |                          |           | **TZTimeOnly_t:** TZTimeOnly\                                |
|                                     |                          |           | **Tenor_t:** Tenor                                           |
|                                     |                          |           |                                                              |
|                                     |                          |           | This attribute is applicable only for the xsi:type values    |
|                                     |                          |           | listed above.                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | When defined in UTCTimestamp_t the following applies:        |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Minimum local market time. Represents an instance of     |
|                                     |                          |           |     time that recurs every day. Contains only time           |
|                                     |                          |           |     information -- not day, month or year.                   |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Used in conjunction with Parameter/@localMktTz, this     |
|                                     |                          |           |     value represents the minimum time of day allowed for the |
|                                     |                          |           |     parameter.                                               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@multiplyBy100            | boolean                  | N         | Applicable for xsi:type of Percentage_t. If true then percent|
|                                     |                          |           | values must be multiplied by 100 before being sent on the    |
|                                     |                          |           | wire. For example, if multiplyBy100 were false then the      |
|                                     |                          |           | percentage, 75%, would be sent as 0.75 on the wire. However, |
|                                     |                          |           | if multiplyBy100 were true then 75 would be sent on the wire.|
|                                     |                          |           |                                                              |
|                                     |                          |           | If not provided it should be interpreted as false.           |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Use of this attribute is not recommended. The motivation   |
|                                     |                          |           | for this attribute is to maximize compatibility with         |
|                                     |                          |           | algorithmic interfaces that are non-compliant with FIX in    |
|                                     |                          |           | regard to their handling of percentages. In these cases an   |
|                                     |                          |           | integer parameter should be used instead of a percentage.**  |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@mutableOnCxlRpl          | boolean                  | N         | Indication of whether the parameter's value can be modified  |
|                                     |                          |           | by an OrderCancelReplaceRequest(35=G) message.               |
|                                     |                          |           |                                                              |
|                                     |                          |           | Default value: true                                          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@name                     | string restricted to\    | Y         | The name of the parameter. No two parameters of any strategy |
|                                     | "[A-Za-z]\               |           | may have the same name. The name may be used as a unique key |
|                                     | [A-Za-z0-9_]\            |           | when referenced from the other sub-schemas. Names must begin |
|                                     | {0,255}"                 |           | with an alpha character followed only by alpha-numeric       |
|                                     |                          |           | characters and must not contain whitespace characters.       |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@precision                | non-negative int         | N         | The number of digits to the right of the decimal point in    |
|                                     |                          |           | which to round when populating the FIX message. Lack of this |
|                                     |                          |           | attribute indicates that the value entered by the user should|
|                                     |                          |           | be taken as-is without rounding.                             |
|                                     |                          |           |                                                              |
|                                     |                          |           | **Applicable when** xsi:type is Float_t, Price_t,            |
|                                     |                          |           | PriceOffset_t or Qty_t.                                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@revertOnCxlRpl           | boolean                  | N         | Indicates how to interpret those tags that were populated in |
|                                     |                          |           | an original order but are not populated in a subsequent      |
|                                     |                          |           | cancel/replace of the order message. If this value is true   |
|                                     |                          |           | then revert to the value of the original order, otherwise a   |
|                                     |                          |           | null value or the parameter's default value                  |
|                                     |                          |           | (Control/@initValue) is to be used or if none is specified,  |
|                                     |                          |           | the parameter is to be omitted.                              |
|                                     |                          |           |                                                              |
|                                     |                          |           | Default value: false                                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | **NOTE:** Although revertOnCxlRpl and mutableOnCxlRpl might  |
|                                     |                          |           | appear to be mutually exclusive, this is not strictly the    |
|                                     |                          |           | the case, and as the default value for mutableOnCxlRpl is    |
|                                     |                          |           | 'true', it is recommended practice to explicitly include     |
|                                     |                          |           | **mutableOnCxlRpl="false"** if the option                    |
|                                     |                          |           | revertOnCxlRpl="true" is set for a given parameter (assuming |
|                                     |                          |           | of course this is the intended behaviour).                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@scope                    | string                   | N         | The scope of the parameter. Applicable to a multileg order   |
|                                     |                          |           | type.                                                        |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - LEG (indicating the parameter appears in the legs of the   |
|                                     |                          |           | order)                                                       |
|                                     |                          |           | - ORDER (indicating it appears in the main body of the       |
|                                     |                          |           | order)                                                       |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@trueWireValue            | string                   | N         | Applicable only when xsi:type is Boolean_t.                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | **This attribute is targeted for deprecation.**              |
|                                     |                          |           |                                                              |
|                                     |                          |           | To achieve the same functionality, it is recommended that    |
|                                     |                          |           | a Char_t or String_t type parameter be used instead of a     |
|                                     |                          |           | Boolean_t. The parameter should have two EnumPairs defined   |
|                                     |                          |           | with one defining the false wire-value and the other         |
|                                     |                          |           | defining the true wire-value. The parameter should be bound  |
|                                     |                          |           | to a CheckBox control. The CheckBox control should define    |
|                                     |                          |           | the parameters checkedEnumRef and uncheckedEnumRef to refer  |
|                                     |                          |           | to the enumIDs of the parameter. (See the section            |
|                                     |                          |           | [A Sample FIXatdl&reg; Document](#sample) in this document   |
|                                     |                          |           | for an example. Examine the Parameter "AllowDarkPoolExec"    |
|                                     |                          |           | and Control "DPOption" for details.)                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | The deprecated use is described as follows:                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | Defines the value with which to populate the FIX message     |
|                                     |                          |           | when the boolean parameter is True. Overrides the            |
|                                     |                          |           | standard FIX boolean value of "Y". I.e. if this attribute is |
|                                     |                          |           | not provided then the order-sending application must use "Y".|
|                                     |                          |           |                                                              |
|                                     |                          |           | If it is desired that the FIX message is not to be populated |
|                                     |                          |           | with this tag when the value of the parameter is false, then |
|                                     |                          |           | falseWireValue should be defined as "{NULL}".                |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@use                      | Use_t                    | N         | Indicates whether a parameter is optional or required.       |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - optional (default)                                         |
|                                     |                          |           | - required                                                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Parameter/@xsi:type                 | string                   | Y         | Indicates the type of the parameter. The type of the         |
|                                     |                          |           | parameter determines which of the extended attributes are    |
|                                     |                          |           | applicable. The namespace, xsi, must be declared within the  |
|                                     |                          |           | Strategies element with the statement:                       |
|                                     |                          |           | xmlns:xsi=<http://www.w3.org/2001/XMLSchema-instance>.       |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   Amt_t                                                    |
|                                     |                          |           | -   Boolean_t                                                |
|                                     |                          |           | -   Char_t                                                   |
|                                     |                          |           | -   Country_t                                                |
|                                     |                          |           | -   Currency_t                                               |
|                                     |                          |           | -   Data_t                                                   |
|                                     |                          |           | -   Exchange_t                                               |
|                                     |                          |           | -   Float_t                                                  |
|                                     |                          |           | -   Int_t                                                    |
|                                     |                          |           | -   Language_t                                               |
|                                     |                          |           | -   Length_t                                                 |
|                                     |                          |           | -   LocalMktDate_t                                           |
|                                     |                          |           | -   MonthYear_t                                              |
|                                     |                          |           | -   MultipleCharValue_t                                      |
|                                     |                          |           | -   MultipleStringValue_t                                    |
|                                     |                          |           | -   NumInGroup_t                                             |
|                                     |                          |           | -   Percentage_t                                             |
|                                     |                          |           | -   Price_t                                                  |
|                                     |                          |           | -   PriceOffset_t                                            |
|                                     |                          |           | -   Qty_t                                                    |
|                                     |                          |           | -   SeqNum_t                                                 |
|                                     |                          |           | -   String_t                                                 |
|                                     |                          |           | -   TagNum_t                                                 |
|                                     |                          |           | -   Tenor_t                                                  |
|                                     |                          |           | -   TZTimeOnly_t                                             |
|                                     |                          |           | -   TZTimestamp_t                                            |
|                                     |                          |           | -   UTCDateOnly_t                                            |
|                                     |                          |           | -   UTCTimeOnly_t                                            |
|                                     |                          |           | -   UTCTimestamp_t                                           |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Region Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Region/@inclusion                   | string                   | Y         | Indicates whether this region should be included or excluded |
|                                     |                          |           | when declared within a list of regions.                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - Include                                                    |
|                                     |                          |           | - Exclude                                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Region/@name                        | String                   | Y         | The name of the region.                                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   TheAmericas                                              |
|                                     |                          |           | -   EuropeMiddleEastAfrica                                   |
|                                     |                          |           | -   AsiaPacificJapan                                         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## RepeatingGroup Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| RepeatingGroup/@fixTag              | int                      | N         | The FIX tag corresponding to a NoXXX tag. Indicates that the |
|                                     |                          |           | Parameter elements defined within the RepeatingGroup element |
|                                     |                          |           | are repeating group tags when sent over the wire.            |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - 555 (NoLegs)                                               |
|                                     |                          |           | - 68 (TotNoOrders)                                           |
|                                     |                          |           |                                                              |
|                                     |                          |           | In the case where fixTag=68, either multiple                 |
|                                     |                          |           | NewOrderList(35=E) messages may be sent where the total      |
|                                     |                          |           | number of orders over the entire list must be equal to       |
|                                     |                          |           | Strategy/@totalOrders, or multiple NewOrderSingle(35=D)      |
|                                     |                          |           | messages may be sent where total number of orders must be    |
|                                     |                          |           | equal to Strategy/@totalOrders.                              |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| RepeatingGroup/@maxSize             | int                      | N         | The maximum number of legs or list orders.                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| RepeatingGroup/@minSize             | int                      | Y         | The minimum number of legs or list orders.                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| RepeatingGroup/@name                | string                   | N         | FIX Field name of the repeating group. Must refer to a FIX   |
|                                     |                          |           | field of NumInGroup type.                                    |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - TotNoOrders (when NewOrderList(35=E) messages are expected)|
|                                     |                          |           | - NoLegs (when NewOrderMultileg(35=AB) messages are expected)|
|                                     |                          |           |                                                              |
|                                     |                          |           | This field should be omitted when NewOrderSingle(35=D)       |
|                                     |                          |           | messages are expected.                                       |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## SecurityType Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| SecurityType/@inclusion             | string                   | Y         | Indicates whether this security type should be included or   |
|                                     |                          |           | excluded from encompassing list.                             |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - Include                                                    |
|                                     |                          |           | - Exclude                                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| SecurityType/@name                  | string                   | Y         | Indicates type of security. Valid values equivalent to FIX   |
|                                     |                          |           | SecurityType(167) values.                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## StateRule Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| StateRule/@enabled                  | boolean                  | N         | Indicates whether or not to enable the control when the edit |
|                                     |                          |           | expression of the StrategyEdit element evaluates to True.    |
|                                     |                          |           | The desired behavior is as follows:                          |
|                                     |                          |           |                                                              |
|                                     |                          |           | - when the StateRule element's edit condition is true and    |
|                                     |                          |           | enabled=true then enable the control;                        |
|                                     |                          |           |                                                              |
|                                     |                          |           | - when the edit condition is true and enabled=false then     |
|                                     |                          |           | disable the control;                                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | - when the edit condition is false and enable=true then      |
|                                     |                          |           | disable the control;                                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | - when the edit condition is false and enabled=false then    |
|                                     |                          |           | enable the control.                                          |
|                                     |                          |           |                                                              |
|                                     |                          |           | The value of a control's "enabled" property does not play a  |
|                                     |                          |           | role in determining whether a value is populated when a FIX  |
|                                     |                          |           | order message is generated. I.e. A control's "enabled"       |
|                                     |                          |           | property does not influence what goes out on the wire.       |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StateRule/@value                    | string                   | N         | GUI control's displayed value should be set to this value    |
|                                     |                          |           | when edit condition is true. Although the type of this       |
|                                     |                          |           | attribute has been listed as string, ultimately the type of  |
|                                     |                          |           | this attribute must be compatible with the type of the       |
|                                     |                          |           | control. For example, if the control is numeric, such as a   |
|                                     |                          |           | SingleSpinner, then a string containing a  numeric value     |
|                                     |                          |           | would an appropriate value (e.g. "15").                      |
|                                     |                          |           |                                                              |
|                                     |                          |           | If the control contains ListItem elements then allowable     |
|                                     |                          |           | values of StateRule/@value are restricted to the enumIDs of  |
|                                     |                          |           | the ListItem elements.                                       |
|                                     |                          |           |                                                              |
|                                     |                          |           | A special token, "{NULL}", may be used for the value of this |
|                                     |                          |           | attribute to indicate that the control should be set to an   |
|                                     |                          |           | uninitialized state. Controls that are un-initialized should |
|                                     |                          |           | have no value. The effect of an un-initialized control is as |
|                                     |                          |           | follows: When an order is to be generated, the controls which|
|                                     |                          |           | are linked to parameters will have their values retrieved.   |
|                                     |                          |           | If there is no retrieved value because the control was       |
|                                     |                          |           | un-initialized then the parameter should have no value       |
|                                     |                          |           | and its associated FIX tag should be excluded from the       |
|                                     |                          |           | message. This is relevant only for controls that can be in   |
|                                     |                          |           | an un-initialized state such as spinners and text fields.    |
|                                     |                          |           | Controls such as check boxes and radio buttons are always    |
|                                     |                          |           | initialized. (They are either checked or unchecked.)         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StateRule/@visible                  | boolean                  | N         | Indicates whether or not to show the control when the        |
|                                     |                          |           | boolean expression, defined by the Edit element, evaluates   |
|                                     |                          |           | to True. The desired behavior is as follows: when the        |
|                                     |                          |           | StateRule element's edit condition is true and               |
|                                     |                          |           | visible=true then display the control; when the edit         |
|                                     |                          |           | condition is true and visible=false then hide the control;   |
|                                     |                          |           | when the edit condition is false and visible=true then hide  |
|                                     |                          |           | the control; when the edit condition is false and            |
|                                     |                          |           | enabled=false then display the control.                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Strategies Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Strategies/@changeStrategyOnCxlRpl  | boolean                  | N         | Indicates whether a new strategy can be chosen during a      |
|                                     |                          |           | Cancel/Replace.                                              |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategies/@draftFlagIdentifierTag  | positiveInteger          | N         | The tag within the FIX order message to be populated with a  |
|                                     |                          |           | boolean ('Y'/'N') indicating whether the order is a draft.   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategies/@imageLocation           | string                   | N         | Filepath or URL of an image file or logo of the algo         |
|                                     |                          |           | providing firm.                                              |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategies/@strategyIdentifierTag   | positiveInteger          | Y         | The tag within the FIX order message to be populated with a  |
|                                     |                          |           | value identifying the chosen strategy. E.g. if               |
|                                     |                          |           | strategyIdentifierTag is 25001 and the chosen strategy is    |
|                                     |                          |           | identified by the value 'VWAP' then the FIX order message    |
|                                     |                          |           | would contain the tag-value pair 25001=VWAP.                 |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategies/@versionIdentifierTag    | positiveInteger          | N         | The tag within the FIX order message to be populated with a  |
|                                     |                          |           | value identifying the version of a chosen strategy. For      |
|                                     |                          |           | example, if versionIdentifierTag is 25002 and the version of |
|                                     |                          |           | the chosen strategy is '2.01' then the FIX order message     |
|                                     |                          |           | would contain the tag-value pair 25001=2.01                  |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategies/@tag957Support           | boolean                  | N         | Indicates whether the order recipient can receive algorithmic|
|                                     |                          |           | parameters in the StrategyParametersGrp repeating group      |
|                                     |                          |           | starting with NoStrategyParameters(957). If this mode of     |
|                                     |                          |           | parameter transport is not supported then the fixTag         |
|                                     |                          |           | attribute of all Parameter elements is required.             |
|                                     |                          |           |                                                              |
|                                     |                          |           | Default value: false.                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## Strategy Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| Strategy/@commonIDTag               | non-negative int         | N         | Used to denote where to place a common basket ID when        |
|                                     |                          |           | linking together *single* orders.                            |
|                                     |                          |           |                                                              |
|                                     |                          |           | Used to denote the tag which must contain a common ID        |
|                                     |                          |           | linking all legs of a multileg order together. Applicable    |
|                                     |                          |           | when multileg orders are delivered via several               |
|                                     |                          |           | NewOrderSingle(35=D) messages.                               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@disclosureDoc             | anyURI                   | N         | URL of a disclosure document supplied by the algorithm       |
|                                     |                          |           | provider.                                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@filter                    | string                   | N         | A reference to the ID of a Filter element defined in the     |
|                                     |                          |           | scope of the Strategies element.                             |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@fixMsgType                | string                   | N         | Indicates the FIX message to use when transmitting the       |
|                                     |                          |           | order. Values taken from FIX field MsgType(35).              |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - D (NewOrderSingle)                                         |
|                                     |                          |           | - E (NewOrderList)                                           |
|                                     |                          |           | - AB (NewOrderMultiLeg)                                      |
|                                     |                          |           | - s (NewOrderCross)                                          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@imageLocation             | string                   | N         | File path or URL of an image file or logo of this particular |
|                                     |                          |           | strategy.                                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@legsAreSeverable          | boolean                  | N         | If true, then an individual leg may be canceled or replaced. |
|                                     |                          |           | Otherwise, every leg of the order must be canceled, or every |
|                                     |                          |           | leg must be resent when only one is replaced.                |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when multileg orders are delivered via several    |
|                                     |                          |           | NewOrderSingle(35=D) messages.                               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@legSequenceTag            | non-negative int         | N         | Used to denote the tag which will contain the sequence       |
|                                     |                          |           | number of an order of a basket or leg of a multileg order.   |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when multileg orders are delivered via several    |
|                                     |                          |           | NewOrderSingle(35=D) messages. Used in conjunction with the  |
|                                     |                          |           | totalLegsTag attribute.                                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@maxLegs                   | non-negative int         | N         | Use to indicate the maximum number of legs an order of this  |
|                                     |                          |           | type requires. A renderer would use this information to      |
|                                     | string constant          |           | display the required number of GUI panels where parameters   |
|                                     | "unbounded" (strategy    |           | can be entered and to properly package a multileg order in   |
|                                     | accepts any number of    |           | one or more FIX messages.                                    |
|                                     | legs)                    |           |                                                              |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@minLegs                   | non-negative int         | N         | Use to indicate the minimum number of legs an order of this  |
|                                     |                          |           | type requires. A renderer would use this information to      |
|                                     |                          |           | display the required number of GUI panels where parameters   |
|                                     |                          |           | can be entered and to properly package a multileg order in   |
|                                     |                          |           | one or more FIX messages.                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@name                      | StringID                 | Y         | Unique identifier of a strategy. Strategy names must be      |
|                                     |                          |           | unique per provider.                                         |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@objective                 | string                   | N         | An optional classification of a multi-leg order.             |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - PAIRS                                                      |
|                                     |                          |           | - BUTTERFLY                                                  |
|                                     |                          |           | - BUY-WRITE                                                  |
|                                     |                          |           | - CALENDAR-SPREAD                                            |
|                                     |                          |           | - PRICE-SPREAD                                               |
|                                     |                          |           | - DIAGONAL-SPREAD                                            |
|                                     |                          |           | - SPREAD                                                     |
|                                     |                          |           | - PORTFOLIO                                                  |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@orderSequenceTag          | non-negative int         | N         | Used to denote the tag which will contain the sequence number|
|                                     |                          |           | of a particular order of a basket.                           |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@providerID                | string                   | N         | Identifies the firm providing the algorithm.                 |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@providerSubID             | string                   | N         | A further level of firm identification.                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@requiredNumberOfLegs      | non-negative int         | N         | Used to denote number of repeating orders in a               |
|                                     |                          |           | NewOrderList(35=E) message or a basket of                    |
|                                     |                          |           | NewOrderSingle(35=D) messages that the algo provider         |
|                                     |                          |           | expects to receive.                                          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@sentOrderLink             | anyURI                   | N         | Prefix portion of a URL to access the order or draft at the  |
|                                     |                          |           | target, e.g.,                                                |
|                                     |                          |           | https://xyz.com/algo/dashboard?SenderCompID=OMS.             |
|                                     |                          |           | Append to this the specific SenderCompID string, an          |
|                                     |                          |           | ampersand, "ClOrdID=", and the specific ClOrdID-string.      |
|                                     |                          |           | Trader hits this full URL to communicate regarding the order |
|                                     |                          |           | or draft. See additional documentation.                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@totalLegs                 | non-negative int         | N         | Used when msgType(35)=AB and denotes the number of repeating |
|                                     |                          |           | legs.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@totalLegsTag              | non-negative int         | N         | Used to denote the tag which will contain the total number   |
|                                     |                          |           | of legs of an order.                                         |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when multileg orders are delivered via several    |
|                                     |                          |           | NewOrderSingle(35=D) messages. Used in conjunction with the  |
|                                     |                          |           | legSequenceTag attribute.                                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@totalOrders               | non-negative int         | N         | Used to denote number of repeating orders in a               |
|                                     |                          |           | NewOrderList(35=E) message or a basket of                    |
|                                     |                          |           | NewOrderSingle(35=D) messages.                               |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@totalOrdersTag            | non-negative int         | N         | In basket trading, used to denote where to place the total   |
|                                     |                          |           | number of orders of a basket.                                |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@uiRep                     | string                   | N         | The name of the strategy as rendered in the UI. If not       |
|                                     |                          |           | provided then the "name" attribute should be used. (This is  |
|                                     |                          |           | the value rendered on the UI when the user is presented with |
|                                     |                          |           | a choice of algorithms.)                                     |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@version                   | string                   | Y         | Information to facilitate version control.                   |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Strategy/@wireValue                 | string                   | Y         | The value used to identify the algorithm. The tag referred   |
|                                     |                          |           | to by Strategy/@strategyIdentifierTag will be set to this    |
|                                     |                          |           | value.                                                       |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## StrategyEdit Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| StrategyEdit/@errorMessage          | string                   | Y         | The error message to display when the boolean expression     |
|                                     |                          |           | defined by the Edit element of a StrategyEdit element        |
|                                     |                          |           | evaluates to False.                                          |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## StrategyPanel Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| StrategyPanel/@border               | Border                   | N         | Recommended border for the panel.                            |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | -   None                                                     |
|                                     |                          |           | -   Line                                                     |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@collapsed            | boolean                  | N         | Initial visual state of a panel. Indicates whether a panel   |
|                                     |                          |           | is initially drawn in a collapsed state.                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | Default value: false.                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@collapsible          | boolean                  | N         | Indicates whether panel can be collapsed.                    |
|                                     |                          |           |                                                              |
|                                     |                          |           | Default value: false.                                        |
|                                     |                          |           |                                                              |
|                                     |                          |           | (Note that the default value may conflict with the default   |
|                                     |                          |           | value defined in the schema file, fixatdl-layout-1-2.xsd. To |
|                                     |                          |           | avoid conflict it is recommended that this attribute be      |
|                                     |                          |           | treated as a required attribute.)                            |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@color                | string                   | N         | The background color of a panel. The value should appear as  |
|                                     |                          |           | the RBG combination separated by commas.                     |
|                                     |                          |           |                                                              |
|                                     |                          |           | **It is recommended that vendors ignore this attribute and   |
|                                     |                          |           | rely on their own color scheme.**                            |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@fillOrder            | string                   | N         | Describes how the grid items are to be arranged.             |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - COL-MAJOR (default)                                        |
|                                     |                          |           | - ROW-MAJOR                                                  |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when encompassing StrategyPanel orientation is    |
|                                     |                          |           | GRID.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@orientation          | Orientation              | Y         | Declares the orientation of the components (parameters or    |
|                                     |                          |           | nested StrategyPanel elements) within a StrategyPanel.       |
|                                     |                          |           |                                                              |
|                                     |                          |           | Valid values:                                                |
|                                     |                          |           |                                                              |
|                                     |                          |           | - HORIZONTAL                                                 |
|                                     |                          |           | - VERTICAL                                                   |
|                                     |                          |           | - GRID                                                       |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@numRows              | non-negative int         | N         | Number of rows.                                              |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when encompassing StrategyPanel orientation is    |
|                                     |                          |           | GRID.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@numCols              | non-negative int         | N         | Number of columns.                                           |
|                                     |                          |           |                                                              |
|                                     |                          |           | Applicable when encompassing StrategyPanel orientation is    |
|                                     |                          |           | GRID.                                                        |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| StrategyPanel/@title                | string                   | N         | Title that appears in the panel border.                      |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

## VendorConfig Element
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| Attribute                           | Type                     | Req'd     | Description                                                  |
+=====================================+==========================+:=========:+==============================================================+
| VendorConfig/@legParameters         | boolean                  | N         | If true, indicates that this strategy definition is tailored |
|                                     |                          |           | for vendor E/OMSs that support leg-level parameters. If      |
|                                     |                          |           | false, indicates that this strategy is tailored for E/OMSs   |
|                                     |                          |           | that do not support leg-level parameters.                    |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+
| VendorConfig/@tag66Support          | boolean                  | N         | If true, indicates that this strategy definition is tailored |
|                                     |                          |           | for vendor E/OMSs that will deliver an ID linking components |
|                                     |                          |           | of a multi-leg order (the common ID) in ListID(66). If false,|
|                                     |                          |           | the algo provider will not expect a common ID in ListID(66). |
+-------------------------------------+--------------------------+-----------+--------------------------------------------------------------+

# Type Definitions

The types of the attribute listed in the previous table are defined here. Many of these datatypes have been leveraged from the FIXML schema file fixml-datatypes-5-0-SP2.xsd. Some come from the XML Schema namespace [http://www.w3.org/2001/XMLSchema](http://www.w3.org/2001/XMLSchema). All others have been defined explicitly within the FIXatdl&reg; schema files.

+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Type Name                | Source       | Description                                                                                              |
+==========================+==============+==========================================================================================================+
| Amt                      | FIXML        | Float value typically representing a Price times a Qty.                                                  |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| anyURI                   | XML Schema   | This datatype represents a URI, which includes web page addresses (commonly called URLs).                |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| boolean                  | XML Schema   | Valid values are “true” and “false”.                                                                     |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Boolean                  | FIXML        | Character field containing one of two values: ‘Y’ (for True/Yes), ‘N’ (for False/No).                    |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Border                   | FIXatdl&reg; | Enumerated type describing the border of a panel. Valid values are:                                      |
|                          |              |                                                                                                          |
|                          |              | - None                                                                                                   |
|                          |              | - Line                                                                                                   |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| char                     | XML Schema   | Char value, can include any alphanumeric character or punctuation except the delimiter.  All char fields |
|                          |              | are case sensitive (i.e. m != M).                                                                        |
|                          |              |                                                                                                          |
|                          |              | Restricted to the pattern ".{1}".                                                                        |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Country                  | FIXML        | String representing a country using ISO 3166 Country code (2 characters) values.                         |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Currency                 | FIXML        | String representing a currency type using ISO 4217 Currency code (3 characters) values.                  |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Data                     | FIXML        | String containing raw data with no format or content restrictions.  Data fields are always immediately   |
|                          |              | preceded by a length field.  The length field should specify the number of bytes of the value of the     |
|                          |              | data field (up to but not including the terminating SOH). Caution: the value of one of these fields may  |
|                          |              | contain the delimiter (SOH) character.  Note that the value specified for this field should be followed  |
|                          |              | by the delimiter (SOH) character as all fields are terminated with an SOH.                               |
|                          |              |                                                                                                          |
|                          |              | Not applicable to FIXatdl&reg;.                                                                          |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| decimal                  | XML Schema   | The XML Schema built-in datatype representing arbitrary precision decimal numbers.                       |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| double                   | XML Schema   | The XML Schema built-in datatype, double.                                                                |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Exchange                 | FIXML        | String representing a market or exchange - ISO 10383 Market Identifier Code (MIC).                       |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| int                      | XML Schema   | An integer. May be negative.                                                                             |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| language                 | XML Schema   | String identifier for a national language - uses ISO 639-1 standard.                                     |
|                          |              |                                                                                                          |
|                          |              | Examples:                                                                                                |
|                          |              |                                                                                                          |
|                          |              | - en (English)                                                                                           |
|                          |              | - fr (French)                                                                                            |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Length                   | FIXML        | Int representing a length in bytes. Value must be positive.                                              |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| LocalMktTz               | FIXatdl&reg; | An enumeration type consisting of the timezone database (or Olson database) codes for various timezones  |
|                          |              | around the world. For example: “Europe/Zurich”. Note that these codes do not provide GMT offset or       |
|                          |              | daylight savings information.                                                                            |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| MonthYear                | FIXML        | String field representing month of a year. An optional day of the month can be appended or an optional   |
|                          |              | week code. Valid formats: YYYYMM YYYYMMDD YYYYMMWW YYYY = 0000-9999, MM = 01-12, DD = 01-31, WW = w1,    |
|                          |              | w2, w3, w4, w5.                                                                                          |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| MultipleCharValue        | FIXML        | String field containing one or more space delimited char values.                                         |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| MultipleStringValue      | FIXML        | String field containing one or more space delimited string values.                                       |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Orientation              | FIXatdl&reg; | Enumerated type describing the orientation of a group of GUI components or controls. Valid values:       |
|                          |              | "HORIZONTAL", "VERTICAL", "GRID".                                                                                |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Percentage               | FIXML        | Float value representing a percentage (e.g. .05 represents 5% and .9525 represents 95.25%). Note the     |
|                          |              | number of decimal places may vary.                                                                       |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| positiveInteger (posint) | XML Schema   | An integer greater than or equal to 0.                                                                   |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Price                    | FIXML        | Float value representing a price. Note the number of decimal places may vary. For certain asset classes, |
|                          |              | prices may be negative values. For example, prices for options strategies can be negative under certain  |
|                          |              | market conditions.                                                                                       |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| PriceOffset              | FIXML        | Float value representing a price offset, which can be mathematically added to a "Price". Note the        |
|                          |              | number of decimal places may vary and some fields such as LastForwardPoints(195) may be negative.        |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| Qty                      | FIXML        | float value capable of storing either a whole number (no decimal places) of "shares" (securities         |
|                          |              | denominated in whole units) or a decimal value containing decimal places for non-share quantity asset    |
|                          |              | classes (securities denominated in fractional units).                                                    |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| SeqNum                   | FIXML        | Int representing a message sequence number. Value must be positive.                                      |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| string                   | XML Schema   | The string datatype represents character strings in XML.                                                 |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| StringID                 | FIXatdl&reg; | String with pattern restriction "[A-Za-z][A-Za-z0-9_]{0,255}".                                           |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| time                     | XML Schema   | Time specified in the format "hh:mm[:ss]" or "hh:mm[:ss]{+,-}hh:mm". In the latter format the offset     |
|                          |              | from UTC is provided.                                                                                    |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| date                     | XML Schema   | The date data type is used to specify a date. The date is specified in the following form "YYYY-MM-DD"   |
|                          |              | where:                                                                                                   |
|                          |              |                                                                                                          |
|                          |              | -   YYYY indicates the year                                                                              |
|                          |              | -   MM indicates the month                                                                               |
|                          |              | -   DD indicates the day                                                                                 |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| TZTimestamp              | FIXML        | String field representing a time/date combination representing local time with an offset to UTC to allow |
|                          |              | identification of local time and timezone offset of that time. The representation is based on ISO 8601.  |
|                          |              |                                                                                                          |
|                          |              | Format is YYYYMMDD-HH:MM:SS[Z | [ + | - hh[:mm]]] where YYYY = 0000 to 9999, MM = 01-12, DD =            |
|                          |              | 01-31 HH = 00-23 hours, MM = 00-59 minutes, SS = 00-59 seconds, hh = 01-12 offset hours, mm = 00-59      |
|                          |              | offset minutes                                                                                           |
|                          |              |                                                                                                          |
|                          |              | Example: 20060901-07:39Z is 07:39 UTC on 1st of September 2006                                           |
|                          |              |                                                                                                          |
|                          |              | Example: 20060901-02:39-05 is five hours behind UTC, thus Eastern Time on 1st of September 2006          |
|                          |              |                                                                                                          |
|                          |              | Example: 20060901-15:39+08 is eight hours ahead of UTC, Hong Kong/Singapore time on 1st of September     |
|                          |              | 2006                                                                                                     |
|                          |              |                                                                                                          |
|                          |              | Example: 20060901-13:09+05:30 is 5.5 hours ahead of UTC, India time on 1st of September 2006.            |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| TZTimeOnly               | FIXML        | String field representing the time represented based on ISO 8601. This is the time with a UTC offset to  |
|                          |              | allow identification of local time and timezone of that time.                                            |
|                          |              |                                                                                                          |
|                          |              | Format is HH:MM[:SS][Z | [ + | - hh[:mm]]] where HH = 00-23 hours, MM = 00-59 minutes, SS =              |
|                          |              | 00-59 seconds, hh = 01-12 offset hours, mm = 00-59 offset minutes.                                       |
|                          |              |                                                                                                          |
|                          |              | Example: 07:39Z is 07:39 UTC                                                                             |
|                          |              |                                                                                                          |
|                          |              | Example: 02:39-05 is five hours behind UTC, thus Eastern Time                                            |
|                          |              |                                                                                                          |
|                          |              | Example: 15:39+08 is eight hours ahead of UTC, Hong Kong/Singapore time                                  |
|                          |              |                                                                                                          |
|                          |              | Example: 13:09+05:30 is 5.5 hours ahead of UTC, India time.                                              |
+--------------------------+----------------+----------------------------------------------------------------------------------------------------------+
| Tenor                    | FIXML        | Pattern used to allow the expression of FX standard tenors in addition to the base valid enumerations    |
|                          |              | defined for the field that uses this pattern data type. This pattern data type is defined as follows:    |
|                          |              |                                                                                                          |
|                          |              | Dx = tenor expression for "days", e.g. "D5", where "x" is any integer > 0                                |
|                          |              |                                                                                                          |
|                          |              | Mx = tenor expression for "months", e.g. "M3", where "x" is any integer > 0                              |
|                          |              |                                                                                                          |
|                          |              | Wx = tenor expression for "weeks", e.g. "W13", where "x" is any integer > 0                              |
|                          |              |                                                                                                          |
|                          |              | Yx = tenor expression for "years", e.g. "Y1", where "x" is any integer > 0                               |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| UTCDateOnly              | FIXML        | String Date represented in UTC (Universal Time Coordinated, also known as "GMT") in YYYYMMDD format.     |
|                          |              | This special-purpose field is paired with UTCTimeOnly to form a proper UTCTimestamp for                  |
|                          |              | bandwidth-sensitive messages.                                                                            |
|                          |              |                                                                                                          |
|                          |              | Valid values:                                                                                            |
|                          |              |                                                                                                          |
|                          |              | YYYY = 0000-9999, MM = 01-12, DD = 01-31.                                                                |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| UTCTimeOnly              | FIXML        | String Time-only represented in UTC (Universal Time Coordinated, also known as "GMT") in either          |
|                          |              | HH:MM:SS (whole seconds) or HH:MM:SS.sss (milliseconds) format, colons, and period required. This        |
|                          |              | special-purpose field is paired with UTCDateOnly to form a proper UTCTimestamp for bandwidth-sensitive   |
|                          |              | messages.                                                                                                |
|                          |              |                                                                                                          |
|                          |              | Valid values:                                                                                            |
|                          |              |                                                                                                          |
|                          |              | HH = 00-23, MM = 00-60 (60 only if UTC leap second), SS = 00-59. (without milliseconds)                  |
|                          |              |                                                                                                          |
|                          |              | HH = 00-23, MM = 00-59, SS = 00-60 (60 only if UTC leap second), sss=000-999 (indicating milliseconds).  |
+--------------------------+--------------+----------------------------------------------------------------------------------------------------------+
| UTCTimestamp             | FIXML        | String representing Time/date combination represented in UTC (Universal Time Coordinated, also known as  |
|                          |              | "GMT") in either YYYYMMDD-HH:MM:SS (whole seconds) or YYYYMMDD-HH:MM:SS.sss (milliseconds) format,       |
|                          |              | colons, dash, and period required.                                                                       |
|                          |              |                                                                                                          |
|                          |              | Valid values:                                                                                            |
|                          |              |                                                                                                          |
|                          |              | YYYY = 0000-9999, MM = 01-12, DD = 01-31, HH = 00-23, MM = 00-59, SS = 00-60 (60 only if UTC leap        |
|                          |              | second) (without milliseconds).                                                                          |
|                          |              |                                                                                                          |
|                          |              | YYYY = 0000-9999, MM = 01-12, DD = 01-31, HH = 00-23, MM = 00-59, SS = 00-60 (60 only if UTC leap        |
|                          |              | second), sss=000-999 (indicating milliseconds).                                                          |
|                          |              |                                                                                                          |
|                          |              | Leap Seconds: Note that UTC includes corrections for leap seconds, which are inserted to account for     |
|                          |              | slowing of the rotation of the earth. Leap second insertion is declared by the International Earth       |
|                          |              | Rotation Service (IERS) and has, since 1972, only occurred on the night of Dec. 31 or Jun 30. The IERS   |
|                          |              | considers March 31 and September 30 as secondary dates for leap second insertion, but has never utilized |
|                          |              | these dates. During a leap second insertion, a UTCTimestamp field may read "19981231-23:59:59",          |
|                          |              | "19981231-23:59:60", "19990101-00:00:00"                                                                 |
|                          |              | (see [http://tycho.usno.navy.mil/leapsec.html](http://tycho.usno.navy.mil/leapsec.html).)                |
+--------------------------+------------+----------------------------------------------------------------------------------------------------------+
