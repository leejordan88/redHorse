package org.kosta.ttk.model.vo;

public class ReporterVO {
   private String id;
   private String name;
   private String tel;
   private String age;
   private int reportCount;
   private int messageCount;
   private int travelingCount;
   private int pictureCount;
   private int enabled;
   
   public ReporterVO() {
      super();
   }

   public ReporterVO(String id, String name, String tel, String age, int reportCount, int messageCount,
         int travelingCount, int pictureCount, int enabled) {
      super();
      this.id = id;
      this.name = name;
      this.tel = tel;
      this.age = age;
      this.reportCount = reportCount;
      this.messageCount = messageCount;
      this.travelingCount = travelingCount;
      this.pictureCount = pictureCount;
      this.enabled = enabled;
   }

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getTel() {
      return tel;
   }

   public void setTel(String tel) {
      this.tel = tel;
   }

   public String getAge() {
      return age;
   }

   public void setAge(String age) {
      this.age = age;
   }

   public int getReportCount() {
      return reportCount;
   }

   public void setReportCount(int reportCount) {
      this.reportCount = reportCount;
   }

   public int getMessageCount() {
      return messageCount;
   }

   public void setMessageCount(int messageCount) {
      this.messageCount = messageCount;
   }

   public int getTravelingCount() {
      return travelingCount;
   }

   public void setTravelingCount(int travelingCount) {
      this.travelingCount = travelingCount;
   }

   public int getPictureCount() {
      return pictureCount;
   }

   public void setPictureCount(int pictureCount) {
      this.pictureCount = pictureCount;
   }

   public int getEnabled() {
      return enabled;
   }

   public void setEnabled(int enabled) {
      this.enabled = enabled;
   }

   @Override
   public String toString() {
      return "ReporterVO [id=" + id + ", name=" + name + ", tel=" + tel + ", age=" + age + ", reportCount="
            + reportCount + ", messageCount=" + messageCount + ", travelingCount=" + travelingCount
            + ", pictureCount=" + pictureCount + ", enabled=" + enabled + "]";
   }
   
   
}