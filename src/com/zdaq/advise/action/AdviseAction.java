package com.zdaq.advise.action;

import java.util.HashMap;
import java.util.Map;

import com.zdaq.advise.service.AdviseService;
import com.zdaq.common.action.BaseAction;

public class AdviseAction extends BaseAction{
	private static final long serialVersionUID = -7513329891384487766L;
	private String advise; //建议意见信息
	private Map<String,Object> map = new HashMap<String,Object>();  //接收参数
	private AdviseService service = new AdviseService();
	/**
	 * 插入意见建议信息
	 * 
	 * */
	public String insertAdvise(){
			System.out.println("---------------advise action:"+advise);
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
