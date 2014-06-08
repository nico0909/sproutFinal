package sprout.utility;

public interface SQLCommands {
	//IANS
	String addSprout = "insert into sprout_pet (sproutName, health, sproutstate, sproutmoney, sproutimagepath, userid) values (?, ?, ?,?,?,?)";
	String login="Select * from users Where userName=? AND password= ?";

}
