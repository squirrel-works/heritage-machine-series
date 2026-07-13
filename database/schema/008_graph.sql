CREATE TABLE graph_nodes (
  node_uuid UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  object_kind object_kind NOT NULL,
  object_uuid UUID NOT NULL,
  canonical_id TEXT NOT NULL,
  title TEXT NOT NULL,
  metadata JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE graph_edges (
  edge_uuid UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  from_node UUID NOT NULL REFERENCES graph_nodes(node_uuid),
  relationship_kind relationship_kind NOT NULL,
  to_node UUID NOT NULL REFERENCES graph_nodes(node_uuid),
  confidence NUMERIC,
  evidence_level evidence_level,
  metadata JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);