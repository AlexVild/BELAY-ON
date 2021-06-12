function tutorial_next_page() {
	var _page_count = array_length_1d(tutorial_instance.pages);

	if(tutorial_instance.page_num < _page_count - 1) {
		tutorial_instance.page_num ++;
	}


}
