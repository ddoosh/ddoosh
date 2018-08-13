package com.baedal.Action;

public class ddq {

	class A{
		private int a;
		public void setA(int a) { this.a= a;}		
	}
	
	class B extends A{
		protected int b, c;
	}
	
	class C extends B{
		public int d, e;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A objA = new A();
		System.out.println(objA);
		

	}

}
