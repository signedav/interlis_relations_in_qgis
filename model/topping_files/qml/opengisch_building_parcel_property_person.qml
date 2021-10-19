<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.16.11-Hannover" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|MapTips">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <fieldConfiguration>
    <field configurationFlags="None" name="t_id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="t_ili_tid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="aname">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="middle_names">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="first_name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="birth_date">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="allow_null"/>
            <Option value="true" type="bool" name="calendar_popup"/>
            <Option value="yyyy-MM-dd" type="QString" name="display_format"/>
            <Option value="yyyy-MM-dd" type="QString" name="field_format"/>
            <Option value="false" type="bool" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="gender">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="AllowMulti"/>
            <Option value="false" type="bool" name="AllowNull"/>
            <Option value="&quot;description&quot;" type="QString" name="Description"/>
            <Option value="" type="QString" name="FilterExpression"/>
            <Option value="ilicode" type="QString" name="Key"/>
            <Option value="Gender_d41c96a9_da43_43ce_af30_5d84e2f000d5" type="QString" name="Layer"/>
            <Option value="Gender" type="QString" name="LayerName"/>
            <Option value="postgres" type="QString" name="LayerProviderName"/>
            <Option value="dbname='test' host=localhost port=5432 user='bjsvwneu' key='itfcode' checkPrimaryKeyUnicity='1' table=&quot;building_parcel_property_smart2&quot;.&quot;gender&quot;" type="QString" name="LayerSource"/>
            <Option value="1" type="int" name="NofColumns"/>
            <Option value="true" type="bool" name="OrderByValue"/>
            <Option value="false" type="bool" name="UseCompleter"/>
            <Option value="dispname" type="QString" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="t_id" index="0" name=""/>
    <alias field="t_ili_tid" index="1" name=""/>
    <alias field="aname" index="2" name="Family Name"/>
    <alias field="middle_names" index="3" name="Middle Name(s)"/>
    <alias field="first_name" index="4" name="First Name"/>
    <alias field="birth_date" index="5" name="Birthdate"/>
    <alias field="gender" index="6" name="Gender"/>
  </aliases>
  <defaults>
    <default field="t_id" applyOnUpdate="0" expression=""/>
    <default field="t_ili_tid" applyOnUpdate="0" expression=""/>
    <default field="aname" applyOnUpdate="0" expression=""/>
    <default field="middle_names" applyOnUpdate="0" expression=""/>
    <default field="first_name" applyOnUpdate="0" expression=""/>
    <default field="birth_date" applyOnUpdate="0" expression=""/>
    <default field="gender" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="t_id" exp_strength="0" notnull_strength="1" constraints="3" unique_strength="1"/>
    <constraint field="t_ili_tid" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="aname" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint field="middle_names" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="first_name" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint field="birth_date" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint field="gender" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="t_id" desc=""/>
    <constraint exp="" field="t_ili_tid" desc=""/>
    <constraint exp="" field="aname" desc=""/>
    <constraint exp="" field="middle_names" desc=""/>
    <constraint exp="" field="first_name" desc=""/>
    <constraint exp="" field="birth_date" desc=""/>
    <constraint exp="" field="gender" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorContainer visibilityExpression="" visibilityExpressionEnabled="0" showLabel="1" name="General" columnCount="2" groupBox="0">
      <attributeEditorField showLabel="1" name="aname" index="2"/>
      <attributeEditorField showLabel="1" name="middle_names" index="3"/>
      <attributeEditorField showLabel="1" name="first_name" index="4"/>
      <attributeEditorField showLabel="1" name="birth_date" index="5"/>
      <attributeEditorField showLabel="1" name="gender" index="6"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" visibilityExpressionEnabled="0" showLabel="1" name="Property" columnCount="1" groupBox="0">
      <attributeEditorRelation relation="property_person_fkey" forceSuppressFormPopup="0" showLabel="0" nmRelationId="" name="property_person_fkey" buttons="SaveChildEdits|AddChildFeature|DuplicateChildFeature|DeleteChildFeature" label=""/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="ahv_nr"/>
    <field editable="1" name="aname"/>
    <field editable="1" name="birth_date"/>
    <field editable="1" name="first_name"/>
    <field editable="1" name="gender"/>
    <field editable="1" name="middle_names"/>
    <field editable="1" name="t_id"/>
    <field editable="1" name="t_ili_tid"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="ahv_nr"/>
    <field labelOnTop="0" name="aname"/>
    <field labelOnTop="0" name="birth_date"/>
    <field labelOnTop="0" name="first_name"/>
    <field labelOnTop="0" name="gender"/>
    <field labelOnTop="0" name="middle_names"/>
    <field labelOnTop="0" name="t_id"/>
    <field labelOnTop="0" name="t_ili_tid"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="property_person_fkey">
      <config type="Map">
        <Option value="property_parcel_fkey" type="QString" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>aname || COALESCE(' ' || first_name,'') || ' (' || birth_date || ')'</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>4</layerGeometryType>
</qgis>
