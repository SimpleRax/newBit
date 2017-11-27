package cn.Rax.Service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.Rax.dao.AdmDAO;
import cn.Rax.entity.Adm;

@Service("loginadmService")
public class LoginadmServiceImpl implements LoginadmService{

	@Resource(name="AdmDAO")
	private AdmDAO admdao;
	
	public Adm checkLogin(Adm ad) {
		Adm adm = null;
		adm = admdao.findByName(ad.getUsername());
		if(adm==null){
			throw new AppException("”√ªß√˚¥ÌŒÛ");
		}
		if(!adm.getPassword().equals(ad.getPassword())){
			throw new AppException("√‹¬Î¥ÌŒÛ");
		}
		return adm;
	}

}
