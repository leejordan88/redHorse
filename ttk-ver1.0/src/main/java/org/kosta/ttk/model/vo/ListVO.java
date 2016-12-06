package org.kosta.ttk.model.vo;

import java.util.List;

/**
 * 한 페이지에서 보여줄 게시물 목록 정보와 페이징 정보를 저장하는 비즈니스 객체
 * 
 * @author kosta
 *
 */
public class ListVO {
   private List<AreaVO> areaList;
   private List<CategoryVO> categoryList;
   private List<TravelerVO> travelerList;

   private List<MessageVO> list;
   private PagingBeanVO pagingBean;

   public ListVO() {
      super();
   }

   public ListVO(List<MessageVO> list, PagingBeanVO pagingBean) {
      super();
      this.list = list;
      this.pagingBean = pagingBean;
   }

   public List<MessageVO> getList() {
      return list;
   }

   public void setList(List<MessageVO> list) {
      this.list = list;
   }

   public PagingBeanVO getPagingBean() {
      return pagingBean;
   }

   public void setPagingBean(PagingBeanVO pagingBean) {
      this.pagingBean = pagingBean;
   }

   public ListVO(List<AreaVO> areaList, List<CategoryVO> categoryList, List<TravelerVO> travelerList) {
      super();
      this.areaList = areaList;
      this.categoryList = categoryList;
      this.travelerList = travelerList;
   }

   public List<AreaVO> getAreaList() {
      return areaList;
   }

   public void setAreaList(List<AreaVO> areaList) {
      this.areaList = areaList;
   }

   public List<CategoryVO> getCategoryList() {
      return categoryList;
   }

   public void setCategoryList(List<CategoryVO> categoryList) {
      this.categoryList = categoryList;
   }

   public List<TravelerVO> getTravelerList() {
      return travelerList;
   }

   public void setTravelerList(List<TravelerVO> travelerList) {
      this.travelerList = travelerList;
   }

   @Override
   public String toString() {
      return "ListVO [areaList=" + areaList + ", categoryList=" + categoryList + ", travelerList=" + travelerList
            + ", list=" + list + ", pagingBean=" + pagingBean + "]";
   }

}