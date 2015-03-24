
//
// Login
//

class Login : MobileApplicationScreenWidget
{

	public Object get_mobile_app_title() {
		return(null);
	}



	FormWidget myform;

	Font user;
	
	String usern;
	String pass;
	
	public void initialize() {

		
		base.initialize();
			add(CanvasWidget.for_color(Color.instance("#9AD9EA")));

		var myform = FormWidget.instance();
		var	button = LayerWidget.instance();
		var	user = Font.instance();

		


		
		myform.add_text_field("usern", "Username",null , null, "Username");
				
		
		
	//	user.instance("Courier 3mm color=blue outline-color=black bold");



		myform.add_text_field("pass", "Password",null, null, "Password");



		

		
		
	//	myform.add(CanvasWidget.for_color(Color.instance("#FF0000")));



	
//		myform.add_button("Log-In", null ,"login");

		var H = AlignWidget.instance();

		H.set_margins(50,50,100,250);
		H.add_align(0,0,myform);
		add(H);




		button.add(ButtonWidget.for_string("Log-In").set_event("login"));

		button.set_size_request_padding (230, -11);

		
		var b = AlignWidget.instance();
		b.set_margins(50,50, 200 , 150);
		b.add_align(0, 0, button);
		add(b);



		
	
		
//		add(VScrollerWidget.for_widget(myform));
	
	
		}


			public void on_event(Object a) {
		if("login".equals(a)) {
				push_screen(new Loading());
		}
		}

}