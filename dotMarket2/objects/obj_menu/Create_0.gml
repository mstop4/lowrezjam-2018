for (var i=0; i<2; i++) {
	for (var j=0; j<3; j++) {
		var pe = instance_create_layer(1+j*18,1+i*18,"Instances",obj_pattern_edit);
		pe.my_index = i*2+j;
	}
}