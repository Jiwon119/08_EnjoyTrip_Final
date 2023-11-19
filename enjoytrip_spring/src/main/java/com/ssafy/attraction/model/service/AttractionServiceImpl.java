package com.ssafy.attraction.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.attraction.model.AttractionInfoDto;
import com.ssafy.attraction.model.mapper.AttractionMapper;

@Service
public class AttractionServiceImpl implements AttractionService {
	
	private AttractionMapper mapper;

	public AttractionServiceImpl(AttractionMapper mapper) {
		super();
		this.mapper = mapper;
	}
	
	@Override
	public List<AttractionInfoDto> attractionList(AttractionInfoDto attractionInfoDto, String keyword) {
		System.out.println(attractionInfoDto);
		return mapper.attractionList(attractionInfoDto, keyword);
	}
	@Override
	public List<AttractionInfoDto> searchByTitle(String title, int sidoCode) {
		return mapper.searchByTitle(title, sidoCode);
	}

	@Override
	public AttractionInfoDto searchAttractionId(String id) {
		return mapper.searchById(id);
	}	
}
