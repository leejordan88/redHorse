package org.kosta.ttk.model.vo;

public class MemberPicReportVO {
   private int pictureReportNo;
   private String pictureReportDate;
   private int pictureReportState;
   private String pictureReportContent;
   private MemberPicVO memberPicVO;
   
   public String getPictureReportContent() {
   return pictureReportContent;
}

public void setPictureReportContent(String pictureReportContent) {
   this.pictureReportContent = pictureReportContent;
}

public MemberPicReportVO() {
      super();
   }

   public MemberPicReportVO(int pictureReportNo, String pictureReportDate, int pictureReportState,String pictureReportContent,
         MemberPicVO memberPicVO) {
      super();
      this.pictureReportNo = pictureReportNo;
      this.pictureReportDate = pictureReportDate;
      this.pictureReportState = pictureReportState;
      this.memberPicVO = memberPicVO;
   }

   public int getPictureReportNo() {
      return pictureReportNo;
   }

   public void setPictureReportNo(int pictureReportNo) {
      this.pictureReportNo = pictureReportNo;
   }

   public String getPictureReportDate() {
      return pictureReportDate;
   }

   public void setPictureReportDate(String pictureReportDate) {
      this.pictureReportDate = pictureReportDate;
   }

   public int getPictureReportState() {
      return pictureReportState;
   }

   public void setPictureReportState(int pictureReportState) {
      this.pictureReportState = pictureReportState;
   }

   public MemberPicVO getMemberPicVO() {
      return memberPicVO;
   }

   public void setMemberPicVO(MemberPicVO memberPicVO) {
      this.memberPicVO = memberPicVO;
   }

   @Override
public String toString() {
   return "MemberPicReportVO [pictureReportNo=" + pictureReportNo + ", pictureReportDate=" + pictureReportDate
         + ", pictureReportState=" + pictureReportState + ", pictureReportContent=" + pictureReportContent
         + ", memberPicVO=" + memberPicVO + "]";
}   
}