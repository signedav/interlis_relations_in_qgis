<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.16.11-Hannover" readOnly="0" styleCategories="LayerConfiguration|Symbology|Fields|Forms|MapTips">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" type="singleSymbol" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol alpha="1" type="fill" name="0" force_rhr="0" clip_to_extent="1">
        <layer enabled="1" locked="0" pass="0" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="253,191,111,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <blendMode>6</blendMode>
  <featureBlendMode>0</featureBlendMode>
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
    <field configurationFlags="None" name="egrid">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" type="bool" name="IsMultiline"/>
            <Option value="false" type="bool" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="anumber">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value="10000" type="int" name="Max"/>
            <Option value="1" type="int" name="Min"/>
            <Option value="0" type="int" name="Precision"/>
            <Option value="1" type="int" name="Step"/>
            <Option value="SpinBox" type="QString" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="area">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value="100000000" type="int" name="Max"/>
            <Option value="5" type="int" name="Min"/>
            <Option value="0" type="int" name="Precision"/>
            <Option value="1" type="int" name="Step"/>
            <Option value="SpinBox" type="QString" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bfs_nr">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" type="bool" name="AllowNull"/>
            <Option value="9999" type="int" name="Max"/>
            <Option value="1" type="int" name="Min"/>
            <Option value="0" type="int" name="Precision"/>
            <Option value="1" type="int" name="Step"/>
            <Option value="SpinBox" type="QString" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="t_id" index="0" name=""/>
    <alias field="t_ili_tid" index="1" name=""/>
    <alias field="egrid" index="2" name="EGRID"/>
    <alias field="anumber" index="3" name="Parcel Number"/>
    <alias field="area" index="4" name="Area [m2]"/>
    <alias field="bfs_nr" index="5" name="BFS-Nr"/>
  </aliases>
  <defaults>
    <default field="t_id" applyOnUpdate="0" expression=""/>
    <default field="t_ili_tid" applyOnUpdate="0" expression=""/>
    <default field="egrid" applyOnUpdate="0" expression="'CH270670353285'"/>
    <default field="anumber" applyOnUpdate="0" expression=""/>
    <default field="area" applyOnUpdate="1" expression="Round(area($geometry))"/>
    <default field="bfs_nr" applyOnUpdate="0" expression="2601"/>
  </defaults>
  <constraints>
    <constraint field="t_id" exp_strength="0" notnull_strength="1" constraints="3" unique_strength="1"/>
    <constraint field="t_ili_tid" exp_strength="0" notnull_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="egrid" exp_strength="2" notnull_strength="1" constraints="5" unique_strength="0"/>
    <constraint field="anumber" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint field="area" exp_strength="0" notnull_strength="1" constraints="1" unique_strength="0"/>
    <constraint field="bfs_nr" exp_strength="2" notnull_strength="1" constraints="5" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="t_id" desc=""/>
    <constraint exp="" field="t_ili_tid" desc=""/>
    <constraint exp="length(egrid) = 14 AND substr(egrid,0,2) = 'CH'" field="egrid" desc="The EGRID must be 15 characters long and start with CH"/>
    <constraint exp="" field="anumber" desc=""/>
    <constraint exp="" field="area" desc=""/>
    <constraint exp="bfs_nr > 1000 AND bfs_nr &lt;= 9999" field="bfs_nr" desc="The BFS-Nr must be defined between 1000 and 9999."/>
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
    <attributeEditorContainer visibilityExpression="" visibilityExpressionEnabled="0" showLabel="1" name="General" columnCount="1" groupBox="0">
      <attributeEditorField showLabel="1" name="anumber" index="3"/>
      <attributeEditorField showLabel="1" name="bfs_nr" index="5"/>
      <attributeEditorField showLabel="1" name="egrid" index="2"/>
      <attributeEditorField showLabel="1" name="area" index="4"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" visibilityExpressionEnabled="0" showLabel="1" name="Property" columnCount="1" groupBox="0">
      <attributeEditorRelation relation="property_parcel_fkey" forceSuppressFormPopup="0" showLabel="1" nmRelationId="" name="property_parcel_fkey" buttons="SaveChildEdits|AddChildFeature|DuplicateChildFeature|DeleteChildFeature" label=""/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" visibilityExpressionEnabled="0" showLabel="1" name="Buildings" columnCount="1" groupBox="0">
      <attributeEditorRelation relation="residential_building_parcel_fkey" forceSuppressFormPopup="0" showLabel="1" nmRelationId="" name="residential_building_parcel_fkey" buttons="Link|Unlink|ZoomToChildFeature" label="Residentail Building"/>
      <attributeEditorRelation relation="office_building_parcel_fkey" forceSuppressFormPopup="0" showLabel="1" nmRelationId="" name="office_building_parcel_fkey" buttons="Link|Unlink|ZoomToChildFeature" label="Office Building"/>
      <attributeEditorRelation relation="public_office_building_parcel_fkey" forceSuppressFormPopup="0" showLabel="1" nmRelationId="" name="public_office_building_parcel_fkey" buttons="Link|Unlink|ZoomToChildFeature" label="Public Office Building"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="anumber"/>
    <field editable="1" name="area"/>
    <field editable="1" name="bfs_nr"/>
    <field editable="1" name="egrid"/>
    <field editable="1" name="t_id"/>
    <field editable="1" name="t_ili_tid"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="anumber"/>
    <field labelOnTop="0" name="area"/>
    <field labelOnTop="0" name="bfs_nr"/>
    <field labelOnTop="0" name="egrid"/>
    <field labelOnTop="0" name="t_id"/>
    <field labelOnTop="0" name="t_ili_tid"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets>
    <widget name="property_parcel_fkey">
      <config type="Map">
        <Option value="property_person_fkey" type="QString" name="nm-rel"/>
      </config>
    </widget>
  </widgets>
  <previewExpression>anumber || ' (BFS-Nr: ' || bfs_nr || ')'</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
