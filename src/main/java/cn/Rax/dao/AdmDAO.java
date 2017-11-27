package cn.Rax.dao;

import org.springframework.stereotype.Repository;

import cn.Rax.entity.Adm;

@Repository("AdmDAO")
public interface AdmDAO {
	public Adm findByName(String username);
}
