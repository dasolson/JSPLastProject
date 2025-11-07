package com.sist.commons;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        String data="https://recipe1.ezmember.co.kr/cache/recipe/2019/11/13/c2a3316499fe4f81b0495ff9264038ec1_m.jpg";
        data=data.substring(data.indexOf("recipe/"));
        data=data.substring(data.indexOf("/")+1,data.indexOf("/")+11);
        //data=data.substring()
        System.out.println(data);
	}

}
