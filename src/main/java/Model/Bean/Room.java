package Model.Bean;

public class Room {
	String Name, RoomID, Type, Description;
	int price;
	boolean availability;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}

	public String getRoomID() {
		return RoomID;
	}
	public void setRoomID(String roomID) {
		RoomID = roomID;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public boolean getAvailability() {
		return availability;
	}
	public void isAvailability(boolean availability) {
		this.availability = availability;
	}
	
	
}
