package com.zdaq.advise.action;

import java.util.HashMap;
import java.util.Map;

import com.zdaq.advise.service.AdviseService;

public class AdviseAction {
	private String advise;
	private Map<String,Object> map = new HashMap<String,Object>();
	private AdviseService service = new AdviseService();
	public String execute(){
			System.out.println("---------------action:"+advise);
			map.put("advise", advise);
			service.insert(map);
		return "success";
	}
	public String getAdvise() {
		return advise;
	}
	public void setAdvise(String advise) {
		this.advise = advise;
	}
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	
}
