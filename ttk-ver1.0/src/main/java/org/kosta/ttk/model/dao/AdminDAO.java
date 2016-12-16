package org.kosta.ttk.model.dao;

import java.util.List;

import org.kosta.ttk.model.vo.MessageReportVO;
import org.kosta.ttk.model.vo.PagingBeanVO;
import org.kosta.ttk.model.vo.ReporterVO;

public interface AdminDAO {

 List<ReporterVO> managerView(PagingBeanVO pagingBean);
 int memberListTotalCount();
int memberTotalCount();
List<MessageReportVO> messageReportList(PagingBeanVO pagingBean);

List<ReporterVO> adminSearchByName(String name);

}