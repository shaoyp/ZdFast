package com.zdaq.fastWx.event;

import java.util.Map;

import com.zdaq.fastWx.message.resp.TextMessage;
import com.zdaq.fastWx.service.content.BaseContent;
import com.zdaq.fastWx.util.MessageUtil;
import com.zdaq.fastWx.util.WeiXinConstant;

public class Menu1Children1 extends BaseContent{

	@Override
	public String getContent(Map<String, String> requestMap) {
		String respMessage = "";
		String respContent = "您点击了"+WeiXinConstant.MENU1_CHILDREN1_NAME;
		TextMessage textMessage = getTextContent(requestMap, respContent);
		respMessage = MessageUtil.textMessageToXml(textMessage);
		return respMessage;
	}

}
