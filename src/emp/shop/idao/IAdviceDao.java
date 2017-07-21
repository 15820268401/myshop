package emp.shop.idao;

import java.util.List;

import emp.shop.model.Advice;

public interface IAdviceDao {

	public void addAdvice(Advice advice);
	
	public void deleteAdvice(Advice advice);
	
	public void modifyAdvice(Advice advice);
	
	public List queryAdviceByUserId(int user_id); 
}

