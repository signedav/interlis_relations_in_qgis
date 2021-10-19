### Open links
https://signedav.github.io/interlis_relations_in_qgis
https://models.interlis.ch/
https://models.opengis.ch/
https://usabilityhub.opengis.ch/

### Ablauf

- Begrüssung (A)
- Präsentation bis zum Demo Model UML(D)
- Erklärung Ili-Model (A)
- Demo Import mit MB (D)
- Demo UsabILItyHub (D was es ist und A betr. QMLs)
- (dann lassen wir sie mal machen)
- Präsentation Inheritance (D)
- Demo Inheritance (D)
- Präsentation Widget (A)
- Demo Widgets in QGIS (A)
- Fragen (A+D)

### Notes

Let's have a quick look at the **INTERLIS components of interest**.

#### Classes 
Classes are like templates to create objects (class elements) from. Or entities in the context of databases.
They have properties described as attributes.

#### Structures
Formally similar to classes are Structures but factually they are more like types or value ranges. They describe how more complicated properties of objects are constructed.
The structure elements, have no identity of their own, but are values of attributes of an object. So they cannot exist without belonging to an object of a class.

#### Types of Classes
Concerning inheritance there are different types of classes.

#### Concrete
From concrete classes you can create objects (class elements) from. And you can extend other classes with it to inherit its properies.

#### Abstract
From abstract classes you cannot create objects (class elements) from. You need to derive it.

#### Final
Final classes you cannot extend.

#### Cardinality
Main property of an association (besides the associated entities) is the cardinality

#### Strength
Association: The objects concerned are loosely connected. 
Like Books and Writers.
If one of the objects is copied, the copy is connected to the same objects as the original. 
If an object is deleted, the relationship is deleted at the same time, however the object itself remains. 

Aggregation: There is only a feeble relationship between the entirety and its parts. 
As opposed to associations, when making a copy of the entirety corresponding copies of the parts are established.
On deletion of the whole, the parts persist.
It's like a team and its members.
However since INTERLIS 2 Aggregations are handled same as Associations (das bringt dich in Teufels Küche, Dave...)

Composition: A strong relationship exists between the entirety and its parts. Only one entirety may be assigned to a certain part-object. 
When deleting the entirety its parts are likewise deleted.
Like flat and its rooms.

#### Structures
It's similar to a one-to-many composition. As opposed to the definition of a composition by means of the association class, with a structure attribute structure elements cannot be referenced, i.e. outside of the object to whose structure attribute value belong to, they have no identity.

#### Usabilityhub

https://app.clickup.com/2192114/v/dc/22wqj-2899/22wqj-687

1. Erkläre was auf Slide auch steht (abstract)
2. Zeige ilimodel / ilisites und ilidata
3. Gehe auf Website und erkläre die Grafik
4. Zeige in Model Baker mit Kbs + gehe auf die Repos und zeige die Files
5. Zeigs bei unserem Building-Parcel Beispiel

#### Inheritance mapping
- new class
- super class
- sub class
- new and sub class

