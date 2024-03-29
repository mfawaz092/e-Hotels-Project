-- Trigger 1: Prevent hotel deletion if has associated rooms
CREATE OR REPLACE FUNCTION prevent_deletion()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM room WHERE hotel_id = OLD.hotel_id) THEN
        RAISE EXCEPTION 'Cannot delete hotel.';
    END IF;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_prevent_deletion
BEFORE DELETE ON hotel
FOR EACH ROW
EXECUTE FUNCTION prevent_deletion();

-- Trigger 2: Update amt of hotels after insertion or deletion
CREATE OR REPLACE FUNCTION update_hotel_amount()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        UPDATE hotelchain
        SET numberofhotels = numberofhotels + 1
        WHERE chain_id = NEW.chain_id;
    ELSIF TG_OP = 'DELETE' THEN
        UPDATE hotelchain
        SET numberofhotels = numberofhotels - 1
        WHERE chain_id = OLD.chain_id;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_hotel_amount
AFTER INSERT OR DELETE ON hotel
FOR EACH ROW
EXECUTE FUNCTION update_hotel_amount();