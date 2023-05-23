/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  v2106                                 |
|   \\  /    A nd           | Website:  www.openfoam.com                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       dictionary;
    object      blockMeshDict;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

include(meshScale.m4)



vertices
(
    (-26 -19 -16)
    (16 -19 -16)
    (16 0 -16)
    (-26 0 -16)

    (-26 -19 -1)
    (16 -19 -1)
    (16 0 -1)
    (-26 0 -1)

    (-26 -19 -0.1)
    (16 -19 -0.1)
    (16 0 -0.1)
    (-26 0 -0.1)

    (-26 -19 0.244)
    (16 -19 0.244)
    (16 0 0.244)
    (-26 0 0.244)

    (-26 -19 0.3)
    (16 -19 0.3)
    (16 0 0.3)
    (-26 0 0.3)

    (-26 -19 1.6)
    (16 -19 1.6)
    (16 0 1.6)
    (-26 0 1.6)

    (-26 -19 4)
    (16 -19 4)
    (16 0 4)
    (-26 0 4)
);

blocks
(
    hex (0 1 2 3 4 5 6 7) (nX nY nZ3) simpleGrading (1 1 0.05)
    hex (4 5 6 7 8 9 10 11) (nX nY nZ3) simpleGrading (1 1 1)
    hex (8 9 10 11 12 13 14 15) (nX nY nZfs2) simpleGrading (1 1 1)
    hex (12 13 14 15 16 17 18 19) (nX nY nZfs1) simpleGrading (1 1 1)
    hex (16 17 18 19 20 21 22 23) (nX nY nZ2) simpleGrading (1 1 1)
    hex (20 21 22 23 24 25 26 27) (nX nY nZ1) simpleGrading (1 1 5)
);

edges
(
);

boundary
(
    atmosphere
    {
        type patch;
        faces
        (
            (24 25 26 27)
        );
    }
    inlet
    {
        type patch;
        faces
        (
            (1 2 6 5)
            (5 6 10 9)
            (9 10 14 13)
            (13 14 18 17)
            (17 18 22 21)
            (21 22 26 25)
        );
    }
    outlet
    {
        type patch;
        faces
        (
            (0 4 7 3)
            (4 8 11 7)
            (8 12 15 11)
            (12 16 19 15)
            (16 20 23 19)
            (20 24 27 23)
        );
    }
    bottom
    {
        type symmetryPlane;
        faces
        (
            (0 3 2 1)
        );
    }
    side
    {
        type symmetryPlane;
        faces
        (
            (0 1 5 4)
            (4 5 9 8)
            (8 9 13 12)
            (12 13 17 16)
            (16 17 21 20)
            (20 21 25 24)
        );
    }
    midPlane
    {
        type symmetryPlane;
        faces
        (
            (3 7 6 2)
            (7 11 10 6)
            (11 15 14 10)
            (15 19 18 14)
            (19 23 22 18)
            (23 27 26 22)
        );
    }
);

mergePatchPairs
(
);


// ************************************************************************* //