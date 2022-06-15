addpath('/Users/rikkeuldbaek/Desktop/home_directory')

gg = gifti('c1sSubjectNo0083-0005-00001-000176-01.surf.gii');

     v = gg.vertices;

     f = gg.faces;

     vertface2obj(v,f,'rikkes_brain.obj')
