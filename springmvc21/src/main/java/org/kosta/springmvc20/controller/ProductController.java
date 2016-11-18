package org.kosta.springmvc20.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {		
	
	@RequestMapping("updateProduct.do")
	public String updateProduct(String id){
		System.out.println("updateProduct method 실행");
		//shop은 디렉토리 명, update_result는 파일 명
		return "shop/update_result";
		
	}
}

















