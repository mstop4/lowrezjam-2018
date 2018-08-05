var temp = data[| ds_list_size(data)-1];
ds_list_clear(data);
ds_list_add(data,temp);