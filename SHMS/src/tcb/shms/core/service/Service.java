package tcb.shms.core.service;

import tcb.shms.core.entity.Entity;

/**
 * Service
 * @author Mark Huang
 * @version 2020/3/4
 */
public interface Service<T extends Entity> {

	public T save(T entity)  throws Exception;
	
	public T getById(Long id) throws Exception;
		
	public T update(T entity) throws Exception;	
	
	public void deleteById(Long id) throws Exception;
	
}
