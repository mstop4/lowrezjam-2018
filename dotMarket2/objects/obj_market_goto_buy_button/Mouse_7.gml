if (!global.transition && enabled) {
	if (os_type == os_android) {
		keyboard_virtual_show(kbv_type_numbers,kbv_returnkey_default,kbv_autocapitalize_none,false);
	}
}

event_inherited();