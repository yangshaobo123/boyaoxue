package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Collect;
import org.fkit.mapper.CollectMapper;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.*;

@Transactional (propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("collectService")
public class CollectServiceImpl implements CollectService{
	@Autowired
	private CollectMapper collectMapper;
	
	@Override
	public void saveCollect(Collect collect) {
		// TODO Auto-generated method stub
		collectMapper.saveCollect(collect);
	}
	@Override
	public List<Collect> getAllCollectByLoginname(String loginname) {
		// TODO Auto-generated method stub
		return collectMapper.findAllCollectByLoginname(loginname);
	}
	@Override
	public Collect findCollect(String loginname,Integer book_id) {
		// TODO Auto-generated method stub
		return collectMapper.findCollect(loginname,book_id);
	}

	
	@Override
	public Collect removeCollect(String loginname,Integer book_id) {
		// TODO Auto-generated method stub
		collectMapper.removeCollect(loginname,book_id);
		return collectMapper.findCollect(loginname,book_id);
	}

}
