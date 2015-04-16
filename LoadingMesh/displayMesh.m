% read in mesh data
[vertexCoords, triFaces] = read_surf('./lh.white');

% as faces's index start from zero, while matlab start with 1
% to help match with vertex's index in trimesh
% transform [0 1 2]-->[1 2 3]
triFaces = triFaces + 1;

% display mesh using trimesh
% trimesh(face, vertex(:,1),vertex(:,2),vertex(:,3));
trimesh(triFaces, vertexCoords(:,1), vertexCoords(:,2), ...
    vertexCoords(:,3), ones(size(vertexCoords, 1), 1));

% saving loaded data
savefile = 'lhWhite';
save(savefile, 'vertexCoords', 'triFaces')