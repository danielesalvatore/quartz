---
title: Data model
---
A model that is used for organizing [Data elements](danielesalvatore/data-analysts/prepare/data-elements.md) and how they relate to one another. 

![pyramid with the three common types of data modeling: conceptual, logical, and physical](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/CFnznQrXRhaZ850K1_YW7w_32345423f15a4115961a22948e080610_Screen-Shot-2021-01-08-at-2.28.52-PM.png?expiry=1671148800000&hmac=q9LA_BVgHsxSLVNFZNdEsuzEfCd-SGO1irtaPVRRF3M)


Conceptual data modeling gives a high-level view of the data structure, such as how data interacts across an organization. For example, a conceptual data model may be used to define the business requirements for a new database. A conceptual data model doesn't contain technical details. 

Logical data modeling focuses on the technical details of a database such as relationships, attributes, and entities. For example, a logical data model defines how individual records are uniquely identified in a database. But it doesn't spell out actual names of database tables. That's the job of a physical data model.

Physical data modeling depicts how a database operates. A physical data model defines all entities and attributes used; for example, it includes table names, column names, and data types for the database.

Techniques:
- Entity Relationship Diagram (ERD)
- Unified Modeling Language (UML)

Refs:
- [Data](danielesalvatore/data-analysts/foundations/data.md)