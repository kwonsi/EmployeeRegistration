package my.company.test.vo;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Employee {
	private String employeeNo;
	private String employeeRank;
	private String employeeName;
	private String employeeTel;
	private String employeeMail;


}