CREATE VIEW v_asset_provenance AS
SELECT a.asset_id, a.canonical_id, a.title, c.display_name AS contributor, l.short_name AS license, s.title AS source
FROM assets a
LEFT JOIN contributors c ON c.contributor_id = a.contributor_id
LEFT JOIN licenses l ON l.license_id = a.license_id
LEFT JOIN sources s ON s.source_id = a.source_id;

CREATE VIEW v_measurement_provenance AS
SELECT m.measurement_id, m.canonical_id, m.title, c.display_name AS contributor, cal.instrument_name, cal.certificate_id, m.evidence_level
FROM measurements m
LEFT JOIN contributors c ON c.contributor_id = m.contributor_id
LEFT JOIN calibrations cal ON cal.calibration_id = m.calibration_id;