function function_ChageText_01() {
	customLabel_01.text = "00";
	customLabel_03.text = "00";
}

function function_ChageText_02() {
	if (page.property_count < 10) {
		label.text = "0" + property_count++;
	} else {
		label.text = property_count++;
	}
}

function function_ChageText_03() {
	label.text = "00";
	customLabel_01.text = "00";
	customLabel_03.text = "00";
}

function function_ChageText_04() {
	customLabel_01.text = "00";
}

function function_ChageText_05() {
	if (page.property_minute < 10) {
		customLabel_01.text = "0" + page.property_minute++;
	} else {
		customLabel_01.text = page.property_minute++;
	}
}

function function_ChageText_06() {
	if (page.property_second < 10) {
		customLabel_03.text = "0" + page.property_second++;
	} else {
		customLabel_03.text = page.property_second++;
	}
}

function function_ResetValue_01() {
	page.property_second = 1;
	page.property_minute = 1;
}

function function_ResetValue_02() {
	page.property_count = 1;
	page.property_second = 1;
	page.property_minute = 1;
}

function function_ResetValue_03() {
	page.property_second = 1;
}

function function_StartTimer_01() {
	timer.start();
}

function function_StopTimer_01() {
	timer.stop();
}
