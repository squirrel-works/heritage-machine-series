CREATE TABLE contributors (
  contributor_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  display_name TEXT NOT NULL,
  email CITEXT,
  orcid TEXT,
  github_username TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE licenses (
  license_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  short_name TEXT NOT NULL,
  full_name TEXT NOT NULL,
  url TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE sources (
  source_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  author TEXT,
  publication_year INTEGER,
  publisher TEXT,
  source_type TEXT,
  isbn TEXT,
  doi TEXT,
  url TEXT,
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE assets (
  asset_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  asset_type TEXT NOT NULL,
  filename TEXT,
  sha256 TEXT,
  contributor_id UUID REFERENCES contributors(contributor_id),
  license_id UUID REFERENCES licenses(license_id),
  source_id UUID REFERENCES sources(source_id),
  evidence_level evidence_level,
  description TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE calibrations (
  calibration_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  instrument_name TEXT NOT NULL,
  certificate_id TEXT,
  calibrated_at TIMESTAMPTZ NOT NULL,
  expires_at TIMESTAMPTZ,
  contributor_id UUID REFERENCES contributors(contributor_id),
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE measurements (
  measurement_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  value NUMERIC,
  units TEXT,
  uncertainty NUMERIC,
  instrument_name TEXT,
  calibration_id UUID REFERENCES calibrations(calibration_id),
  ambient_temperature NUMERIC,
  humidity NUMERIC,
  contributor_id UUID REFERENCES contributors(contributor_id),
  evidence_level evidence_level,
  measured_at TIMESTAMPTZ,
  notes TEXT,
  raw_data JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE chapters (
  chapter_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  volume INTEGER NOT NULL,
  chapter_number INTEGER NOT NULL,
  title TEXT NOT NULL,
  filename TEXT NOT NULL,
  revision TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE claims (
  claim_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  statement TEXT NOT NULL,
  evidence_level evidence_level,
  confidence NUMERIC,
  status TEXT NOT NULL DEFAULT 'unverified',
  source_id UUID REFERENCES sources(source_id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE procedures (
  procedure_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_id TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  revision TEXT,
  evidence_level evidence_level,
  contributor_id UUID REFERENCES contributors(contributor_id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE revisions (
  revision_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  object_kind object_kind NOT NULL,
  object_uuid UUID NOT NULL,
  version TEXT NOT NULL,
  contributor_id UUID REFERENCES contributors(contributor_id),
  summary TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE events (
  event_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  happened_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  actor_id UUID REFERENCES contributors(contributor_id),
  object_kind object_kind NOT NULL,
  object_uuid UUID NOT NULL,
  action TEXT NOT NULL,
  old_value JSONB,
  new_value JSONB,
  reason TEXT,
  event_hash TEXT,
  signature TEXT,
  metadata JSONB
);

CREATE TABLE relationships (
  relationship_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  from_kind object_kind NOT NULL,
  from_uuid UUID NOT NULL,
  relationship_kind relationship_kind NOT NULL,
  to_kind object_kind NOT NULL,
  to_uuid UUID NOT NULL,
  confidence NUMERIC,
  evidence_level evidence_level,
  contributor_id UUID REFERENCES contributors(contributor_id),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  metadata JSONB
);