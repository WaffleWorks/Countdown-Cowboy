ini_open("save.ini");
global.newbest = ini_read_real("save", "newbest", false)
ini_close();