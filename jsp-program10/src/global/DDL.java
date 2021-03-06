package global;

public class DDL {
	public static String make(String table,String column,String pk){
		return "create table "+table+"("
				+ column
				+ ",constraint "+table+"_pk"+" primary key("+pk+"))";
	}
	public static String makeString(String table, String column,String size){
		return "alter table "+table+" add("+column+" varchar2("+size+"))";
	}
	public static String makeNumber(String table, String column){
		return "alter table "+table+" add("+column+" number)";
	}
	public static String makeDate(String table, String column){
		return "alter table "+table+" add("+column+" date)";
	}
	public static String changeName(String table, String oldName, String newName){
		return "alter table "+table+" rename column "+oldName+" to "+newName;
	}
	public static String changeType(String table,String column, String newType){
		return "alter table "+table+" modify("+column+" "+newType+")";
	}
	public static String remove(String table,String column){
		return "alter table "+table+" drop column "+column;
	}
	public static String change(String oldName, String newName){
		return "rename "+oldName+" to "+newName;
	}
	public static String remove(String table){
		return "drop table "+table;
	}
	public static String empty(String table){
		return "truncate table "+table;
	}
}
