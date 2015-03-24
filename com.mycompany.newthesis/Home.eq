
//
// Home
//


class Home : MobileApplicationScreenWidget
{



	public Object get_mobile_app_title() {
		return(null);
	}











	ButtonWidget button;
	
	public void initialize() {
			base.initialize();

//	var Page = BoxWidget.vertical();
//	Page.add(CanvasWidget.for_color_gradient(Color.instance("#F0F0F0")));
	add(CanvasWidget.for_color_gradient(Color.instance("#F0F0F0")));


	var header = LayerWidget.instance();	

	header.add(CanvasWidget.for_color(Color.instance("#000000")));
//	header.add(ImageWidget.for_resource("logo").set_mode("fit");

	



	var H = AlignWidget.instance();

	H.set_margins(0,0,0,495);
	H.add_align(0,0,header);
	add(H);
	
	var headerimage = LayerWidget.instance();
	headerimage.add(ImageWidget.for_resource("logo").set_mode("fit"));
	var HI = AlignWidget.instance();
	HI.set_margins(0,100 ,5,500);
	HI.add_align(0,0,headerimage);
	add(HI);

	
//	var settings = LayerWidget.instance();
//		settings.add(ButtonWidget.for_string(null).set_event("sett"));
//	settings.add(ImageWidget.for_resource("settings").set_mode("fit"));
//
//	settings.set_size_request_padding (5 , 5);
//
//
//	var setta = AlignWidget.instance();
//	setta.set_margins(380,5 ,5,540);
//	setta.add_align(0,0,settings);
//	add(setta);


//Settings

var menu = MenuWidget.instance();
menu.add_entry(IconCache.get("defaultpic"), "<NAME>", "Create a new document", "prof");
menu.add_entry(IconCache.get("open"), "Edit Profile", "Open an existing document", "open_document");
menu.add_entry(IconCache.get(""),"About", "", "");
menu.add_entry(IconCache.get(""),"Help", "", "");
menu.add_separator();
menu.add_entry(IconCache.get("exit"), "Exit", "Exit the application", "exit_application");
menu.add_entry(IconCache.get(""), "Change User", "", "");
var menubutton = ButtonWidget.for_icon(IconCache.get("settings"));
menubutton.set_popup(menu);


		var menua = AlignWidget.instance();
		menua.set_margins(370,5, 0 , 500);		
		menua.add_align(0, 0, menubutton);
		add(menua);


//	add(VScrollerWidget.for_widget(Page));

//First Block	
	var block1 = LayerWidget.instance();


block1.add(CanvasWidget.for_color(Color.instance("#FF0000")));
block1.add(ButtonWidget.for_string("Notification").set_event("blk1"));
block1.set_size_request_padding (50 , 50);

		var a = AlignWidget.instance();
		a.set_margins(10,170, 0 , 290);		
		a.add_align(0, 0, block1);
		add(a);


//block2
	var block2  = LayerWidget.instance();


		block2.add(CanvasWidget.for_color(Color.instance("#FF0000")));
		block2.add(ButtonWidget.for_string("Document").set_event("blk2"));
		block2.set_size_request_padding (50 , 50);

		var b = AlignWidget.instance();
		b.set_margins(170,10, 0 , 290);
		b.add_align(0, 0, block2);
		add(b);


//block3

	var block3 = LayerWidget.instance();


block3.add(CanvasWidget.for_color(Color.instance("#FF0000")));
block3.add(ButtonWidget.for_string("Calendar").set_event("blk3"));
block3.set_size_request_padding (50 , 50);

		var c = AlignWidget.instance();
		c.set_margins(10,150, 100 , 190);		
		c.add_align(0, 0, block3);
		add(c);


//block4
	var block4  = LayerWidget.instance();


		block4.add(CanvasWidget.for_color(Color.instance("#FF0000")));
		block4.add(ButtonWidget.for_string("Contacts").set_event("blk4"));
		block4.set_size_request_padding (50 , 50);

		var d = AlignWidget.instance();
		d.set_margins(150,10, 100 , 190);
		d.add_align(0, 0, block4);
		add(d);


//block5
	var block5 = LayerWidget.instance();
block5.add(CanvasWidget.for_color(Color.instance("#FF0000")));
block5.add(ButtonWidget.for_string("Statistics").set_event("blk5"));
block5.set_size_request_padding (150 , 50);

		var e = AlignWidget.instance();
		e.set_margins(10,10, 200 , 90);

		
		e.add_align(0, 0, block5);
		add(e);







//End of First Block

			var footer = BoxWidget.horizontal();	
	footer.add(ImageWidget.for_resource("bg-wrapper").set_mode("fill"));
	footer.add(ButtonWidget.for_string("Profile").set_event("blk1"));
	footer.add(ButtonWidget.for_string("Profile").set_event("blk1"));
	var I = AlignWidget.instance();

	I.set_margins(0,0,520,0);
	I.add_align(0,0,footer);
		add(I);


	

	




}



	public void on_event(Object o) {
		if("blk1".equals(o)) {
			push_screen(new Notification());
		}
		else if("blk2".equals(o)) {
			push_screen(new Mydocument());
		}
		else if("blk3".equals(o)) {
			push_screen(new Calendar());
		}
		else if("blk4".equals(o)) {
			push_screen(new Contacts());
		}
		else if("blk5".equals(o)) {
			push_screen(new Statistics());
		}
		else if("prof".equals(o)) {
			push_screen(new Prof());
		}
		
		}


	
		



	
		
}