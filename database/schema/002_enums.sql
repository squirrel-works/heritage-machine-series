CREATE TYPE evidence_level AS ENUM ('A','B','C','D','E');
CREATE TYPE object_kind AS ENUM ('contributor','license','source','asset','measurement','procedure','chapter','claim','revision','event');
CREATE TYPE relationship_kind AS ENUM ('supports','refutes','derived_from','illustrates','requires','references','validates','contains','appears_in','created_by');