package com.javaclass.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

public class ProductVO {

   // product 테이블에 입력
   private Integer product_number;      // 상품 번호
   private String category_code;      // 카테고리
   private String product_name;      // 상품명
   private int product_price;         // 상품 가격
   private int product_stock;         // 수량
   private String product_desc;      // 상품 설명
   private String product_date;      // 등록 날짜
   private int product_hits;         // 조회수
   //----------------------------------
   
   // 상품 배너 Image 테이블에 입력
   private String origin_file_name;   //원래 파일이름
   private String stored_file_name;   //저장된 파일이름
   private long file_size;             //파일 크기
   
   // 상세 설명 배너 Image 테이블에 입력
   private String main_file_name;   //원래 파일이름
   private String stored_main_file_name;   //저장된 파일이름
   private long main_file_size;             //파일 크기
   

   
   
   
   
   
   //*************************************************

   @Override
   public String toString() {
	   return "ProductVO [product_number=" + product_number + ", category_code=" + category_code + ", product_name="
			   + product_name + ", product_price=" + product_price + ", product_stock=" + product_stock + ", product_desc="
			   + product_desc + ", product_date=" + product_date + ", product_hits=" + product_hits + ", origin_file_name="
			   + origin_file_name + ", stored_file_name=" + stored_file_name + ", file_size=" + file_size
			   + ", main_file_name=" + main_file_name + ", stored_main_file_name=" + stored_main_file_name
			   + ", main_file_size=" + main_file_size + ", file=" + file + ", file1=" + file1 + "]";
   }

   //*************************************************

   MultipartFile file;      // 상세 배너 이미지 파일
   MultipartFile file1;   // 상세 설명 이미지 파일
   
   public ProductVO() {
      super();
      // TODO Auto-generated constructor stub
   }
   
   public ProductVO(String category_code, String product_name, int product_price, int product_stock,
         String product_desc, String product_date, int product_hits, String origin_file_name,
         String stored_file_name, long file_size, Integer product_number, MultipartFile file) {
      super();
      this.category_code = category_code;
      this.product_name = product_name;
      this.product_price = product_price;
      this.product_stock = product_stock;
      this.product_desc = product_desc;
      this.product_date = product_date;
      this.product_hits = product_hits;
      this.origin_file_name = origin_file_name;
      this.stored_file_name = stored_file_name;
      this.file_size = file_size;
      this.product_number = product_number;
      this.file = file;
   }
   
   public Integer getProduct_number() {
      return product_number;
   }

   public void setProduct_number(Integer product_number) {
      this.product_number = product_number;
   }

   public String getCategory_code() {
      return category_code;
   }

   public void setCategory_code(String category_code) {
      this.category_code = category_code;
   }

   public String getProduct_name() {
      return product_name;
   }

   public void setProduct_name(String product_name) {
      this.product_name = product_name;
   }

   public int getProduct_price() {
      return product_price;
   }

   public void setProduct_price(int product_price) {
      this.product_price = product_price;
   }

   public int getProduct_stock() {
      return product_stock;
   }

   public void setProduct_stock(int product_stock) {
      this.product_stock = product_stock;
   }

   public String getProduct_desc() {
      return product_desc;
   }

   public void setProduct_desc(String product_desc) {
      this.product_desc = product_desc;
   }

   public String getProduct_date() {
      return product_date;
   }

   public void setProduct_date(String product_date) {
      this.product_date = product_date;
   }

   public int getProduct_hits() {
      return product_hits;
   }

   public void setProduct_hits(int product_hits) {
      this.product_hits = product_hits;
   }

   public String getOrigin_file_name() {
      return origin_file_name;
   }

   public void setOrigin_file_name(String origin_file_name) {
      this.origin_file_name = origin_file_name;
   }

   public String getStored_file_name() {
      return stored_file_name;
   }

   public void setStored_file_name(String stored_file_name) {
      this.stored_file_name = stored_file_name;
   }

   public long getFile_size() {
      return file_size;
   }

   public void setFile_size(long file_size) {
      this.file_size = file_size;
   }

   public MultipartFile getFile() {
      return file;
   }
   
   public void setFile(MultipartFile file) {
      this.file =file;
      
      //
      if(!file.isEmpty()) {
         
         this.origin_file_name= file.getOriginalFilename();
         this.file_size = file.getSize();
         
         UUID uuid = UUID.randomUUID();
         this.stored_file_name = uuid.toString() + "_"+ origin_file_name;
         
         File f = new File("C:\\springweb\\petdo\\src\\main\\webapp\\resources\\images\\shop\\" + stored_file_name);
         //파일 저장 위치를 추후에 서버경로를 얻어서 상대경로로 수정하기 
            try {
               file.transferTo(f);
            } catch (IllegalStateException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
            } catch (IOException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
            }
         
      }
   }
   
   public String getMain_file_name() {
      return main_file_name;
   }

   public void setMain_file_name(String main_file_name) {
      this.main_file_name = main_file_name;
   }

   public String getStored_main_file_name() {
      return stored_main_file_name;
   }

   public void setStored_main_file_name(String stored_main_file_name) {
      this.stored_main_file_name = stored_main_file_name;
   }

   public long getMain_file_size() {
      return main_file_size;
   }

   public void setMain_file_size(long main_file_size) {
      this.main_file_size = main_file_size;
   }

   public MultipartFile getFile1() {
      return file1;
   }

   public void setFile1(MultipartFile file1) {
      this.file1 = file1;
      
      
      if(!file1.isEmpty()) {
         
         this.main_file_name= file1.getOriginalFilename();
         this.main_file_size = file1.getSize();
         
         UUID uuid = UUID.randomUUID();
         this.stored_main_file_name = uuid.toString() + "_"+ main_file_name;
         
         File fi = new File("C:\\springweb\\petdo\\src\\main\\webapp\\resources\\images\\product-details\\" + stored_main_file_name);
         //파일 저장 위치를 추후에 서버경로를 얻어서 상대경로로 수정하기 
            try {
               file1.transferTo(fi);
            } catch (IllegalStateException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
            } catch (IOException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
            }
         
      }
   }
   
   
   
}