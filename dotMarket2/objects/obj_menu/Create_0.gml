for (var i=0; i<2; i++) {
	for (var j=0; j<3; j++) {
		var pe = instance_create_layer(2+j*21,1+i*22,"Instances",obj_pattern_edit);
		pe.my_index = i*3+j;
	}
}