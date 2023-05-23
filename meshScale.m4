
//include some math functions
changecom(//)changequote([,])
define(calc, [esyscmd(perl -e 'use Math::Trig; use POSIX; printf ($1)')])
define(calc_round, [esyscmd(perl -e "printf ('%d', $1)")])
//mandatory
//convertToMeters 1;
scale 1;

//scale factors for blockMesh
define(scaleX, 1.5)
define(scaleY, 1.15)
define(scaleZ, 1.15)
define(scaleZ_fs, 1.5)

define(nX, calc_round(47*scaleX))
define(nY, calc_round(22*scaleY))

define(nZ3, calc_round(56*scaleZ))
define(nZ2, calc_round(45*scaleZ))
define(nZ1, calc_round(23*scaleZ))
define(nZfs1, calc_round(5*scaleZ_fs))
define(nZfs2, calc_round(28*scaleZ_fs))


//snappyHexMesh
define(grading, 1.25)
define(nLayer, 8)
define(yMin, 0.0005)
//define(yMin, 0.0018)
define(yFinal, 0.75)

  

// ************************************************************************* //
