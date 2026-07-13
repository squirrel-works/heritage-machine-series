CREATE OR REPLACE FUNCTION touch_updated_at() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  NEW.created_at := COALESCE(NEW.created_at, now());
  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION make_event_hash() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  NEW.event_hash := encode(digest(COALESCE(NEW.object_kind::text,'') || COALESCE(NEW.action,'') || COALESCE(NEW.reason,''), 'sha256'), 'hex');
  RETURN NEW;
END;
$$;