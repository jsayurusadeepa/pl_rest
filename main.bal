import ballerinax/mysql;
import ballerinax/mysql.driver as _;

public function main() returns error?{

	mysql:Client mysqlClient = check new ("sql12.freemysqlhosting.net", "sql12599595", "ZMdQjtRK4Q", "sql12599595", 3306);
		
	_ = check mysqlClient->execute(`CREATE TABLE sql12599595.STUD_MARKS_STORE (
											stud_id VARCHAR(10),
											stud_name VARCHAR(50),
											stud_marks float
                                    );`);
									
	check mysqlClient.close();

}
