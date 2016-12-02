package org.kosta.ttk.model.dao;

import org.kosta.ttk.model.vo.MessageVO;

public interface MessageDAO {

	void messageSend(MessageVO messageVO);
	
}
