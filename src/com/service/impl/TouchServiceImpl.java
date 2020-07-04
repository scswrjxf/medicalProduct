package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.TouchMapper;
import com.pojo.Touch;
import com.service.TouchService;

@Service("touchService")
public class TouchServiceImpl implements TouchService {
	@Resource
	private TouchMapper touchMapper;
	@Override
	public int addTouch(Touch touch) {
		return touchMapper.addTouch(touch);
	}

}
