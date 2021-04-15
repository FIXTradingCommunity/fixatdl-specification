# A Sample FIXatdl&reg; Document {#sample}

The following listing shows a FIXatdl&reg; instance document describing one
strategy with six parameters. The associated controls to be rendered are
aligned horizontally within two panels which are, in turn, are
vertically aligned. Three validation rules are provided.

```xml
<Strategies
    xmlns="http://www.fixprotocol.org/FIXatdl-1-2/Core"
    xmlns:val="http://www.fixprotocol.org/FIXatdl-1-2/Validation"
    xmlns:lay="http://www.fixprotocol.org/FIXatdl-1-2/Layout"
    xmlns:flow="http://www.fixprotocol.org/FIXatdl-1-2/Flow"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.fixprotocol.org/FIXatdl-1-2/Core fixatdl-core-1-2.xsd"
    strategyIdentifierTag="27620"
    versionIdentifierTag="27621">

    <Strategy name="Tazer1" uiRep="Tazer" wireValue="Tazer" version="1" fixMsgType="D"
      providerID="ABC">

        <!--
            Declare the algorithm to be applicable in The U.S., Canada and the UK.
        -->
        <Regions>
            <Region name="TheAmericas" inclusion="Include">
                <Country CountryCode="US" inclusion="Include"/>
                <Country CountryCode="CA" inclusion="Include"/>
            </Region>
            <Region name="EuropeMiddleEastAfrica" inclusion="Include">
                <Country CountryCode="UK" inclusion="Include"/>
            </Region>
        </Regions>

        <!--
            Declare the markets where order may be executed.
        -->
        <Markets>
            <Market MICCode="BATS" inclusion="Include"/>
            <Market MICCode="NYSE" inclusion="Include"/>
            <Market MICCode="XTSE" inclusion="Include"/>
            <Market MICCode="LSE" inclusion="Include"/>
        </Markets>

        <!--
        This algorithm will be applied to equity common stock.
        -->
        <SecurityTypes>
            <SecurityType name="CS" inclusion="Include"/>
        </SecurityTypes>

        <!--
            Parameter declarations

            Five parameters are declared here. The order recipient may reject
            orders with: EndTime(7603) values greater than 4pm New York time;
            SweepDistribution(7640) values other than "U" or "G"; Variance(7641)
            values outside the range [0.01, 0.50]; and DisplayQty(7645)
            values less than 0.
        -->
        <Parameter name="StartTime" xsi:type="UTCTimestamp_t" fixTag="27602" use="required"/>
        <Parameter name="EndTime" xsi:type="UTCTimestamp_t" fixTag="27603" use="required"
          maxValue="16:00:00" localMktTz="America/New_York "/>
        <Parameter name="DisplayQty" xsi:type="Int_t" fixTag="27645" use="optional"
          minValue="0"/>
        <Parameter name="SweepDistribution" xsi:type="Char_t" fixTag="27640" use="required">
            <EnumPair enumID="e_Uniform" wireValue="U"/>
            <EnumPair enumID="e_Gaussian" wireValue="G"/>
        </Parameter>
        <Parameter name="Variance" xsi:type="Float_t" fixTag="27641" use="optional"
          minValue="0.01" maxValue="0.50"/>
        <Parameter name="AllowDarkPoolExec" xsi:type="Char_t" fixTag="27642" use="required">
            <EnumPair enumID="e_True" wireValue="T"/>
            <EnumPair enumID="e_False" wireValue="F"/>
        </Parameter>

        <!--
            Description and Layout of GUI controls
        -->
        <lay:StrategyLayout>
            <lay:StrategyPanel orientation="VERTICAL">
                <lay:StrategyPanel orientation="HORIZONTAL">
                    <!--
                        The StartTimeClock control will be initialized to 9:30am (New
                        York time). If it is past 9:30am when the control is rendered,
                        then it will be initialized with the current time.

                        Note that the user will see the 9:30am New York time rendered
                        according to his/her environment's local timezone setup.
                    -->
                    <lay:Control xsi:type="lay:Clock_t" ID="StartTimeClock" label="Start Time"
                      parameterRef="StartTime" initValue="09:30:00" localMktTz="America/New_York"
                      initValueMode="1"/>

                    <!--
                      The EndTimeClock control is not initialized.
                    -->

                    <lay:Control xsi:type="lay:Clock_t" ID="EndTimeClock" label="End Time"
                      parameterRef="EndTime"/>

                    <!--
                        The next control is not bound to any parameter. It is intended to
                        direct the behavior of the DisplayQty control. It presents 3
                        options in a drop-down list.
                    -->

                    <lay:Control ID="DQHandling" xsi:type="lay:DropDownList_t"
                      label="Display Handling">
                        <lay:ListItem enumID="choice1" uiRep="Send nothing"/>
                        <lay:ListItem enumID="choice2" uiRep="Send 0"/>
                        <lay:ListItem enumID="choice3" uiRep="Send what user enters"/>
                    </lay:Control>

                    <!--
                        The DisplayQty control is bound to the DisplayQty parameter. The
                        control is un-initialized when it is first rendered. Its
                        subsequent behavior is directed by DQHandling control. When
                        DQHandling's choice1 is selected DisplayQty will revert to an
                        un-initialized state and become disabled. When DQHandling's
                        choice2 is selected, DisplayQty's value will be set to 0 and
                        it will become disabled. When DQHandling's choice3 is selected,
                        DisplayQty will be enabled and will accept user input.
                    -->

                    <lay:Control xsi:type="lay:TextField_t" ID="DisplayQty" label="Display Qty"
                      parameterRef="DisplayQty">
                        <flow:StateRule enabled="true">
                          <val:Edit field="DQHandling" operator="EQ" value="choice3"/>
                        </flow:StateRule>
                        <flow:StateRule value="{NULL}">
                            <val:Edit field="DQHandling" operator="EQ" value="choice1"/>
                        </flow:StateRule>
                        <flow:StateRule value="0">
                            <val:Edit field="DQHandling" operator="EQ" value="choice2"/>
                        </flow:StateRule>
                    </lay:Control>
                </lay:StrategyPanel>
                <lay:StrategyPanel orientation="HORIZONTAL">
                    <!--
                        The SweepDist control will present the 2 options corresponding to
                        the enumPairs of the SweepDistribution parameter.
                    -->
                    <lay:Control ID="SweepDist" xsi:type="lay:DropDownList_t"
                      label="Sweep Distribution"
                      parameterRef="SweepDistribution" initValue="Uniform">
                        <lay:ListItem enumID="e_Uniform" uiRep="Uniform"/>
                        <lay:ListItem enumID="e_Gaussian" uiRep="Gaussian"/>
                    </lay:Control>
                    <!--
                        The Variance control is enabled only when SweepDist's e_Gaussian
                        item is selected.
                    -->
                    <lay:Control xsi:type="lay:SingleSpinner_t" ID="Variance" label="Variance"
                      parameterRef="Variance">
                        <flow:StateRule enabled="true">
                            <val:Edit field="SweepDist" operator="EQ" value="e_Gaussian"/>
                        </flow:StateRule>
                    </lay:Control>
                </lay:StrategyPanel>
                <lay:StrategyPanel orientation="HORIZONTAL">
                    <lay:Control xsi:type="lay:CheckBox_t" ID="DPOption"
                      label="Allow Dark Pool Execution" parameterRef="AllowDarkPoolExec"
                      checkedEnumRef="e_True" uncheckedEnumRef="e_False">
                    </lay:Control>
                </lay:StrategyPanel>
            </lay:StrategyPanel>
        </lay:StrategyLayout>

        <!--
            Validation Section

            Note that the attribute, field, always refers to a Parameter name and
            not a Control ID. Also note that short-circuit evaluation is fully
            exploited.
        -->
        <val:StrategyEdit errorMessage="End Time should be later than Start Time">
            <val:Edit field="EndTime" operator="GT" field2="StartTime"/>
        </val:StrategyEdit>

        <val:StrategyEdit errorMessage="Variance is required when Sweep Distribution is
          Gaussian.">
            <val:Edit logicOperator="OR">
                <val:Edit field="SweepDistribution" operator="NE" value="G"/>
                <val:Edit logicOperator="AND">
                    <val:Edit field="SweepDistribution" operator="EQ" value="G"/>
                    <val:Edit field="Variance" operator="EX"/>
                </val:Edit>
            </val:Edit>
        </val:StrategyEdit>

        <val:StrategyEdit errorMessage="Variance must be between 0 and 2.0">
            <val:Edit logicOperator="OR">
                <val:Edit field="SweepDistribution" operator="NE" value="G"/>
                <val:Edit logicOperator="AND">
                    <val:Edit field="SweepDistribution" operator="EQ" value="G"/>
                    <val:Edit field="Variance" operator="EX"/>
                    <val:Edit field="Variance" operator="GT" value="0.0"/>
                    <val:Edit field="Variance" operator="LT" value="2.0"/>
                </val:Edit>
            </val:Edit>
        </val:StrategyEdit>
    </Strategy>
</Strategies>
```
