package org.kosta.ttk.model.service;


import java.util.List;

import org.kosta.ttk.model.vo.ListVO;
import org.kosta.ttk.model.vo.ReporterVO;


public interface AdminService {

   ListVO managerView(String pageNo);
ListVO messageReportList(String pageNo);

 List<ReporterVO> adminSearchByName(String name);

}