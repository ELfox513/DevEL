.class public final Lr4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/kc4;


# instance fields
.field public final synthetic a:Lr4/j;


# direct methods
.method public synthetic constructor <init>(Lr4/j;Lr4/lc4;)V
    .locals 0

    iput-object p1, p0, Lr4/h;->a:Lr4/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B[B)V
    .locals 98

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/h;->a:Lr4/j;

    iget v2, v1, Lr4/j;->D0:I

    iget v3, v1, Lr4/j;->F0:I

    iget v4, v1, Lr4/j;->i2:I

    iget v5, v1, Lr4/j;->K1:I

    xor-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v4

    xor-int/2addr v2, v5

    iget v3, v1, Lr4/j;->F:I

    xor-int/2addr v2, v3

    iput v2, v1, Lr4/j;->F:I

    iget v3, v1, Lr4/j;->p:I

    or-int v5, v3, v2

    iget v6, v1, Lr4/j;->l0:I

    or-int v7, v6, v2

    and-int v8, v2, v6

    iget v9, v1, Lr4/j;->N:I

    and-int v10, v9, v8

    xor-int v11, v6, v2

    xor-int/lit8 v12, v11, -0x1

    and-int/2addr v12, v9

    xor-int v13, v7, v12

    iput v13, v1, Lr4/j;->X1:I

    and-int v14, v9, v11

    xor-int/2addr v14, v11

    iput v12, v1, Lr4/j;->e2:I

    xor-int v15, v11, v9

    xor-int/lit8 v16, v2, -0x1

    and-int v17, v9, v16

    and-int v18, v9, v2

    xor-int v7, v7, v18

    xor-int v8, v8, v18

    and-int v19, v2, v3

    and-int v20, v6, v16

    xor-int/lit8 v21, v20, -0x1

    and-int v21, v9, v21

    or-int v22, v20, v2

    and-int v23, v9, v22

    xor-int v20, v20, v23

    iget v0, v1, Lr4/j;->R1:I

    xor-int v0, v22, v0

    xor-int v11, v11, v23

    move/from16 p1, v5

    xor-int v5, v6, v18

    iput v5, v1, Lr4/j;->Z1:I

    xor-int/lit8 v18, v6, -0x1

    and-int v22, v2, v18

    xor-int/lit8 v23, v22, -0x1

    and-int v24, v2, v23

    xor-int v25, v24, v21

    move/from16 p2, v3

    iget v3, v1, Lr4/j;->H0:I

    xor-int v3, v24, v3

    and-int v23, v9, v23

    xor-int v24, v22, v23

    xor-int v26, v22, v17

    xor-int v23, v2, v23

    xor-int v27, v22, v9

    move/from16 v28, v9

    iget v9, v1, Lr4/j;->y:I

    move/from16 v29, v2

    iget v2, v1, Lr4/j;->P1:I

    xor-int/2addr v2, v9

    iput v2, v1, Lr4/j;->P1:I

    move/from16 v30, v9

    iget v9, v1, Lr4/j;->T1:I

    move/from16 v31, v11

    iget v11, v1, Lr4/j;->k0:I

    move/from16 v32, v7

    iget v7, v1, Lr4/j;->O:I

    move/from16 v33, v14

    iget v14, v1, Lr4/j;->o2:I

    and-int/2addr v9, v2

    xor-int/2addr v9, v11

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v7

    xor-int/2addr v9, v14

    iget v11, v1, Lr4/j;->d1:I

    xor-int/2addr v9, v11

    iput v9, v1, Lr4/j;->d1:I

    iget v11, v1, Lr4/j;->L:I

    xor-int/2addr v9, v11

    iput v9, v1, Lr4/j;->L:I

    iget v11, v1, Lr4/j;->q1:I

    iget v14, v1, Lr4/j;->z0:I

    move/from16 v34, v10

    iget v10, v1, Lr4/j;->G:I

    move/from16 v35, v0

    iget v0, v1, Lr4/j;->z:I

    xor-int/2addr v0, v2

    iput v0, v1, Lr4/j;->z:I

    move/from16 v36, v5

    iget v5, v1, Lr4/j;->Z0:I

    xor-int/2addr v0, v5

    iput v0, v1, Lr4/j;->Z0:I

    xor-int/2addr v2, v11

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v7

    xor-int/2addr v2, v14

    xor-int/lit8 v5, v10, -0x1

    and-int/2addr v2, v5

    xor-int/2addr v0, v2

    iput v0, v1, Lr4/j;->q1:I

    iget v2, v1, Lr4/j;->L0:I

    xor-int/2addr v0, v2

    iput v0, v1, Lr4/j;->L0:I

    iget v2, v1, Lr4/j;->a:I

    iget v5, v1, Lr4/j;->z1:I

    xor-int/lit8 v11, v5, -0x1

    and-int/2addr v2, v11

    iget v11, v1, Lr4/j;->n2:I

    xor-int/2addr v11, v2

    iput v11, v1, Lr4/j;->n2:I

    iget v14, v1, Lr4/j;->f1:I

    move/from16 v37, v7

    iget v7, v1, Lr4/j;->x0:I

    move/from16 v38, v10

    iget v10, v1, Lr4/j;->q:I

    xor-int/2addr v11, v14

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v7, v11

    xor-int/2addr v7, v10

    iget v10, v1, Lr4/j;->Q:I

    xor-int/2addr v7, v10

    iget v10, v1, Lr4/j;->W1:I

    xor-int v11, v10, v7

    iput v11, v1, Lr4/j;->f1:I

    iget v14, v1, Lr4/j;->C0:I

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v14, v7

    iput v14, v1, Lr4/j;->C0:I

    move/from16 v39, v5

    iget v5, v1, Lr4/j;->L1:I

    move/from16 v40, v15

    iget v15, v1, Lr4/j;->V1:I

    move/from16 v41, v8

    iget v8, v1, Lr4/j;->A:I

    move/from16 v42, v12

    iget v12, v1, Lr4/j;->I:I

    move/from16 v43, v13

    iget v13, v1, Lr4/j;->n:I

    move/from16 v44, v0

    iget v0, v1, Lr4/j;->Y:I

    move/from16 v45, v6

    iget v6, v1, Lr4/j;->h0:I

    and-int v46, v7, v0

    xor-int v6, v6, v46

    iput v6, v1, Lr4/j;->n:I

    move/from16 v46, v0

    iget v0, v1, Lr4/j;->O1:I

    move/from16 v47, v4

    iget v4, v1, Lr4/j;->u1:I

    and-int/2addr v0, v7

    and-int/2addr v0, v8

    xor-int/2addr v0, v14

    or-int/2addr v0, v4

    iget v14, v1, Lr4/j;->A0:I

    move/from16 v48, v2

    iget v2, v1, Lr4/j;->I1:I

    move/from16 v49, v0

    iget v0, v1, Lr4/j;->B:I

    and-int/2addr v0, v7

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v8

    move/from16 v50, v0

    iget v0, v1, Lr4/j;->j2:I

    move/from16 v51, v11

    iget v11, v1, Lr4/j;->a0:I

    move/from16 v52, v3

    iget v3, v1, Lr4/j;->H1:I

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v3, v11

    and-int/2addr v5, v7

    xor-int/2addr v5, v15

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v8

    xor-int/2addr v3, v5

    and-int v5, v7, v14

    xor-int/2addr v5, v2

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v7

    xor-int/2addr v0, v10

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v8

    xor-int/2addr v0, v5

    or-int/2addr v0, v4

    xor-int/2addr v0, v3

    iget v3, v1, Lr4/j;->h:I

    xor-int/2addr v0, v3

    iput v0, v1, Lr4/j;->h:I

    xor-int/lit8 v3, v19, -0x1

    and-int/2addr v3, v0

    xor-int/lit8 v5, v9, -0x1

    and-int v10, v0, v5

    or-int v11, v9, v0

    and-int v14, v11, v5

    and-int v15, v0, v9

    xor-int/lit8 v19, v0, -0x1

    and-int v53, v9, v19

    move/from16 v54, v3

    iget v3, v1, Lr4/j;->B0:I

    move/from16 v55, v5

    iget v5, v1, Lr4/j;->c1:I

    and-int/2addr v3, v7

    xor-int/2addr v3, v5

    iput v3, v1, Lr4/j;->B0:I

    iget v5, v1, Lr4/j;->g1:I

    move/from16 v56, v10

    iget v10, v1, Lr4/j;->m1:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v7

    xor-int/2addr v5, v10

    and-int/2addr v5, v8

    xor-int/2addr v5, v6

    iput v5, v1, Lr4/j;->g1:I

    xor-int/lit8 v6, v12, -0x1

    and-int/2addr v6, v7

    xor-int/2addr v6, v13

    and-int/2addr v6, v8

    xor-int/2addr v3, v6

    or-int/2addr v3, v4

    xor-int/2addr v3, v5

    iput v3, v1, Lr4/j;->V1:I

    iget v5, v1, Lr4/j;->V:I

    xor-int/2addr v3, v5

    iput v3, v1, Lr4/j;->V:I

    xor-int/lit8 v5, v52, -0x1

    and-int/2addr v5, v3

    iget v6, v1, Lr4/j;->k2:I

    and-int/2addr v6, v7

    iget v10, v1, Lr4/j;->J:I

    iget v12, v1, Lr4/j;->M1:I

    iget v13, v1, Lr4/j;->o1:I

    move/from16 v52, v11

    iget v11, v1, Lr4/j;->v0:I

    xor-int/2addr v6, v10

    and-int/2addr v6, v8

    xor-int v6, v51, v6

    xor-int/lit8 v10, v12, -0x1

    and-int/2addr v10, v7

    xor-int/2addr v10, v13

    iget v12, v1, Lr4/j;->r0:I

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v12

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v10, v11

    xor-int/lit8 v11, v4, -0x1

    and-int/2addr v10, v11

    xor-int/2addr v6, v10

    iget v10, v1, Lr4/j;->f2:I

    xor-int/2addr v6, v10

    iput v6, v1, Lr4/j;->f2:I

    iget v10, v1, Lr4/j;->E1:I

    or-int v11, v6, v10

    iget v12, v1, Lr4/j;->d:I

    xor-int/lit8 v13, v7, -0x1

    and-int/2addr v12, v13

    xor-int/2addr v2, v12

    xor-int v2, v2, v50

    xor-int v2, v2, v49

    iget v12, v1, Lr4/j;->v:I

    xor-int/2addr v2, v12

    iput v2, v1, Lr4/j;->v:I

    iget v12, v1, Lr4/j;->t:I

    iget v13, v1, Lr4/j;->n1:I

    move/from16 v49, v8

    iget v8, v1, Lr4/j;->B1:I

    xor-int/lit8 v50, v48, -0x1

    and-int v12, v12, v50

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v12, v13

    xor-int/2addr v8, v12

    iget v12, v1, Lr4/j;->y1:I

    xor-int/2addr v8, v12

    iget v12, v1, Lr4/j;->M:I

    xor-int/2addr v8, v12

    iget v12, v1, Lr4/j;->o0:I

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v12, v8

    move/from16 v50, v7

    iget v7, v1, Lr4/j;->R:I

    xor-int v51, v7, v12

    move/from16 v57, v11

    iget v11, v1, Lr4/j;->c0:I

    xor-int/lit8 v58, v11, -0x1

    or-int v59, v11, v51

    move/from16 v60, v6

    iget v6, v1, Lr4/j;->b2:I

    xor-int v61, v6, v8

    move/from16 v62, v13

    iget v13, v1, Lr4/j;->h1:I

    xor-int v13, v61, v13

    move/from16 v63, v2

    iget v2, v1, Lr4/j;->v1:I

    xor-int v64, v2, v8

    and-int v64, v64, v58

    and-int v65, v8, v47

    xor-int v66, v7, v65

    move/from16 v67, v14

    iget v14, v1, Lr4/j;->K0:I

    move/from16 v68, v15

    iget v15, v1, Lr4/j;->r:I

    or-int/2addr v14, v8

    xor-int/2addr v14, v15

    iget v15, v1, Lr4/j;->N1:I

    move/from16 v69, v9

    iget v9, v1, Lr4/j;->a1:I

    move/from16 v70, v0

    iget v0, v1, Lr4/j;->C1:I

    or-int/2addr v15, v8

    xor-int/2addr v9, v15

    or-int/2addr v9, v0

    iget v15, v1, Lr4/j;->f0:I

    xor-int v71, v15, v8

    move/from16 v72, v13

    iget v13, v1, Lr4/j;->W0:I

    xor-int v13, v71, v13

    xor-int/lit8 v47, v47, -0x1

    and-int v47, v8, v47

    xor-int v71, v6, v47

    move/from16 v73, v2

    iget v2, v1, Lr4/j;->M0:I

    move/from16 v74, v4

    iget v4, v1, Lr4/j;->S0:I

    or-int/2addr v2, v8

    xor-int/2addr v2, v4

    iput v2, v1, Lr4/j;->M0:I

    move/from16 v75, v4

    iget v4, v1, Lr4/j;->q0:I

    or-int v76, v4, v8

    or-int v76, v0, v76

    and-int v77, v8, v7

    and-int v78, v77, v58

    move/from16 v79, v4

    iget v4, v1, Lr4/j;->E:I

    and-int v80, v8, v4

    xor-int v81, v4, v80

    and-int v82, v61, v58

    xor-int v81, v81, v82

    move/from16 v82, v3

    iget v3, v1, Lr4/j;->N0:I

    move/from16 v83, v5

    iget v5, v1, Lr4/j;->y0:I

    xor-int/lit8 v84, v3, -0x1

    and-int v84, v8, v84

    xor-int v84, v7, v84

    and-int v51, v51, v58

    xor-int v51, v84, v51

    or-int v51, v5, v51

    move/from16 v84, v10

    iget v10, v1, Lr4/j;->Q1:I

    move/from16 v85, v7

    iget v7, v1, Lr4/j;->w1:I

    and-int/2addr v10, v8

    xor-int/2addr v10, v7

    iput v10, v1, Lr4/j;->Q1:I

    move/from16 v86, v10

    iget v10, v1, Lr4/j;->D1:I

    move/from16 v87, v12

    iget v12, v1, Lr4/j;->O0:I

    xor-int/lit8 v88, v0, -0x1

    move/from16 v89, v3

    iget v3, v1, Lr4/j;->j1:I

    move/from16 v90, v2

    iget v2, v1, Lr4/j;->e0:I

    xor-int/lit8 v91, v8, -0x1

    and-int v91, v10, v91

    xor-int v12, v12, v91

    and-int v12, v12, v88

    xor-int/2addr v12, v3

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v12, v2

    xor-int/2addr v12, v13

    iget v13, v1, Lr4/j;->i1:I

    xor-int/2addr v12, v13

    iput v12, v1, Lr4/j;->i1:I

    xor-int/lit8 v13, v4, -0x1

    and-int/2addr v13, v8

    xor-int/lit8 v91, v5, -0x1

    move/from16 v92, v12

    iget v12, v1, Lr4/j;->U:I

    and-int v93, v8, v7

    xor-int v76, v93, v76

    and-int v76, v2, v76

    move/from16 v93, v3

    iget v3, v1, Lr4/j;->J1:I

    xor-int v94, v3, v47

    or-int v95, v11, v94

    move/from16 v96, v4

    iget v4, v1, Lr4/j;->U1:I

    move/from16 v97, v7

    iget v7, v1, Lr4/j;->J0:I

    or-int/2addr v4, v8

    xor-int/2addr v4, v7

    and-int v4, v4, v88

    xor-int/2addr v4, v14

    iput v4, v1, Lr4/j;->U1:I

    xor-int v7, v3, v65

    iput v7, v1, Lr4/j;->K0:I

    xor-int v7, v7, v64

    or-int/2addr v7, v5

    xor-int v7, v81, v7

    or-int/2addr v7, v12

    iget v14, v1, Lr4/j;->n0:I

    move/from16 v64, v7

    iget v7, v1, Lr4/j;->s0:I

    and-int/2addr v14, v8

    xor-int/2addr v14, v7

    xor-int/2addr v9, v14

    iput v9, v1, Lr4/j;->N1:I

    xor-int/lit8 v14, v3, -0x1

    and-int/2addr v14, v8

    xor-int/2addr v14, v6

    iput v14, v1, Lr4/j;->n0:I

    move/from16 v65, v4

    iget v4, v1, Lr4/j;->S1:I

    xor-int v78, v14, v78

    and-int v78, v78, v91

    or-int/2addr v15, v8

    xor-int/2addr v7, v15

    or-int/2addr v7, v0

    xor-int v7, v90, v7

    and-int/2addr v7, v2

    xor-int/2addr v7, v9

    iget v9, v1, Lr4/j;->Z:I

    xor-int/2addr v7, v9

    iput v7, v1, Lr4/j;->Z:I

    xor-int v7, v89, v80

    and-int v9, v80, v58

    xor-int v9, v94, v9

    xor-int/lit8 v15, v7, -0x1

    and-int/2addr v15, v11

    xor-int/2addr v15, v14

    and-int v15, v15, v91

    xor-int/2addr v9, v15

    or-int/2addr v9, v12

    xor-int/2addr v4, v14

    or-int/2addr v7, v11

    xor-int v7, v77, v7

    or-int/2addr v7, v5

    xor-int/2addr v4, v7

    xor-int/lit8 v7, v12, -0x1

    and-int/2addr v4, v7

    and-int/2addr v6, v8

    xor-int/2addr v6, v3

    or-int v7, v11, v87

    xor-int/2addr v6, v7

    xor-int v6, v6, v51

    xor-int v7, v85, v13

    and-int v7, v7, v58

    xor-int v7, v71, v7

    and-int v7, v7, v91

    xor-int v7, v66, v7

    or-int/2addr v7, v12

    xor-int/2addr v6, v7

    iget v7, v1, Lr4/j;->j:I

    xor-int/2addr v6, v7

    iput v6, v1, Lr4/j;->j:I

    xor-int v7, v6, v84

    xor-int/lit8 v12, v6, -0x1

    and-int v14, v84, v12

    and-int v15, v14, v45

    and-int v51, v84, v6

    xor-int v51, v6, v51

    and-int v58, v7, v18

    xor-int v58, v51, v58

    xor-int/lit8 v58, v58, -0x1

    and-int v58, v44, v58

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v8

    xor-int v10, v97, v10

    or-int/2addr v10, v0

    xor-int v10, v86, v10

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v2

    xor-int v10, v65, v10

    iput v10, v1, Lr4/j;->D1:I

    move/from16 v65, v15

    iget v15, v1, Lr4/j;->d0:I

    xor-int/2addr v10, v15

    iput v10, v1, Lr4/j;->d0:I

    or-int v15, v10, v21

    xor-int v15, v43, v15

    xor-int v15, v15, v83

    iput v15, v1, Lr4/j;->H0:I

    xor-int/lit8 v21, v10, -0x1

    and-int v66, v25, v10

    move/from16 v71, v7

    xor-int v7, v42, v66

    iput v7, v1, Lr4/j;->x2:I

    and-int v41, v41, v10

    xor-int v41, v43, v41

    xor-int/lit8 v41, v41, -0x1

    and-int v41, v82, v41

    xor-int v7, v7, v41

    xor-int/lit8 v7, v7, -0x1

    and-int v7, v44, v7

    xor-int/2addr v7, v15

    iget v15, v1, Lr4/j;->I0:I

    xor-int/2addr v7, v15

    iput v7, v1, Lr4/j;->I0:I

    and-int v15, v26, v10

    or-int v26, v10, v45

    xor-int v26, v40, v26

    xor-int/lit8 v41, v40, -0x1

    and-int v41, v10, v41

    xor-int v36, v36, v41

    and-int v36, v82, v36

    xor-int v26, v26, v36

    xor-int/lit8 v25, v25, -0x1

    and-int v25, v10, v25

    xor-int v25, v45, v25

    move/from16 v36, v14

    iget v14, v1, Lr4/j;->i:I

    xor-int/lit8 v27, v27, -0x1

    and-int v27, v10, v27

    xor-int v14, v14, v27

    xor-int/lit8 v14, v14, -0x1

    and-int v14, v82, v14

    xor-int v14, v25, v14

    xor-int/lit8 v14, v14, -0x1

    and-int v14, v44, v14

    xor-int v14, v26, v14

    xor-int/2addr v14, v2

    iput v14, v1, Lr4/j;->F2:I

    and-int v25, v10, v35

    xor-int v25, v45, v25

    and-int v22, v22, v10

    xor-int v20, v20, v22

    xor-int/lit8 v20, v20, -0x1

    and-int v20, v82, v20

    xor-int v20, v25, v20

    and-int v22, v34, v10

    xor-int v22, v33, v22

    xor-int v24, v24, v15

    and-int v24, v82, v24

    xor-int v22, v22, v24

    xor-int/lit8 v22, v22, -0x1

    and-int v22, v44, v22

    xor-int v20, v20, v22

    move/from16 v22, v12

    iget v12, v1, Lr4/j;->k:I

    xor-int v12, v20, v12

    iput v12, v1, Lr4/j;->k:I

    xor-int/lit8 v12, v32, -0x1

    and-int/2addr v10, v12

    xor-int v10, v40, v10

    and-int v12, v17, v21

    xor-int v12, v35, v12

    and-int v12, v82, v12

    xor-int/2addr v10, v12

    and-int v12, v23, v21

    xor-int v12, v35, v12

    xor-int v15, v31, v15

    xor-int/lit8 v15, v15, -0x1

    and-int v15, v82, v15

    xor-int/2addr v12, v15

    and-int v12, v44, v12

    xor-int/2addr v10, v12

    xor-int v10, v10, v74

    iput v10, v1, Lr4/j;->u1:I

    xor-int/lit8 v12, v75, -0x1

    and-int/2addr v12, v8

    xor-int v12, v79, v12

    and-int v12, v12, v88

    xor-int v15, v73, v47

    xor-int v15, v15, v95

    xor-int v15, v15, v78

    xor-int/2addr v4, v15

    xor-int v4, v4, v39

    iput v4, v1, Lr4/j;->z1:I

    xor-int/2addr v3, v13

    and-int/2addr v3, v11

    xor-int v3, v61, v3

    and-int v15, v8, v73

    xor-int v15, v96, v15

    or-int/2addr v15, v11

    xor-int v15, v94, v15

    and-int v15, v15, v91

    xor-int/2addr v3, v15

    xor-int/2addr v3, v9

    iget v9, v1, Lr4/j;->r1:I

    xor-int/2addr v3, v9

    iput v3, v1, Lr4/j;->r1:I

    iget v9, v1, Lr4/j;->H:I

    or-int/2addr v9, v3

    iput v9, v1, Lr4/j;->N0:I

    iget v9, v1, Lr4/j;->Y1:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v9

    iput v3, v1, Lr4/j;->v1:I

    iget v3, v1, Lr4/j;->x1:I

    xor-int v3, v3, v87

    xor-int v3, v3, v59

    or-int/2addr v3, v5

    xor-int v3, v72, v3

    xor-int v3, v3, v64

    iget v15, v1, Lr4/j;->j0:I

    xor-int/2addr v3, v15

    iput v3, v1, Lr4/j;->j0:I

    and-int v15, v3, v19

    and-int v17, v3, v70

    xor-int v20, v69, v17

    and-int v21, v3, v68

    xor-int/lit8 v23, v3, -0x1

    and-int v24, v29, v23

    xor-int/lit8 v25, p2, -0x1

    and-int v26, v3, v25

    and-int v27, v3, v53

    xor-int v31, v68, v27

    xor-int v32, v67, v3

    or-int v33, v3, v29

    and-int v34, v33, v16

    or-int v35, p2, v33

    and-int v39, v33, v25

    and-int v40, v3, v29

    xor-int/lit8 v41, v40, -0x1

    and-int v42, v29, v41

    and-int v43, v42, v25

    or-int v47, p2, v42

    xor-int v59, v3, v29

    xor-int/lit8 v61, v68, -0x1

    and-int v61, v3, v61

    xor-int v61, v70, v61

    and-int v16, v3, v16

    and-int v16, v16, v25

    xor-int v25, v68, v17

    xor-int v13, v93, v13

    xor-int/2addr v12, v13

    xor-int v12, v12, v76

    iget v13, v1, Lr4/j;->D:I

    xor-int/2addr v12, v13

    iput v12, v1, Lr4/j;->D:I

    and-int v13, v12, v19

    xor-int/lit8 v19, v12, -0x1

    xor-int v64, v52, v3

    xor-int v27, v70, v27

    and-int v27, v27, v19

    xor-int v27, v64, v27

    move/from16 v64, v6

    iget v6, v1, Lr4/j;->b0:I

    xor-int/lit8 v66, v6, -0x1

    and-int v72, v21, v19

    xor-int v72, v69, v72

    and-int v72, v72, v66

    xor-int v73, v52, v17

    or-int v74, v52, v12

    xor-int v73, v73, v74

    and-int v73, v73, v66

    move/from16 v74, v7

    iget v7, v1, Lr4/j;->T:I

    xor-int v75, v56, v13

    xor-int/lit8 v67, v67, -0x1

    and-int v67, v3, v67

    xor-int v67, v69, v67

    and-int v69, v31, v19

    xor-int v67, v67, v69

    and-int v69, v25, v19

    xor-int v53, v53, v69

    and-int v53, v53, v66

    xor-int v53, v67, v53

    xor-int/lit8 v53, v53, -0x1

    and-int v53, v7, v53

    move/from16 v67, v9

    and-int v9, v63, v19

    iput v9, v1, Lr4/j;->j2:I

    or-int v9, v12, v32

    and-int v9, v9, v66

    xor-int v13, v20, v13

    xor-int v63, v68, v15

    and-int v55, v3, v55

    xor-int v52, v52, v55

    or-int v52, v52, v12

    xor-int v52, v63, v52

    or-int v52, v6, v52

    xor-int v13, v13, v52

    and-int v52, v3, v56

    xor-int v52, v68, v52

    and-int v52, v52, v19

    xor-int v17, v17, v52

    and-int v52, v56, v19

    xor-int v25, v25, v52

    and-int v25, v25, v66

    xor-int v17, v17, v25

    xor-int/lit8 v17, v17, -0x1

    and-int v17, v7, v17

    xor-int v13, v13, v17

    move/from16 v17, v5

    iget v5, v1, Lr4/j;->c:I

    xor-int/2addr v5, v13

    iput v5, v1, Lr4/j;->c:I

    and-int v5, v12, v15

    and-int v13, v61, v19

    xor-int v13, v20, v13

    xor-int/2addr v9, v13

    xor-int v9, v9, v53

    iget v13, v1, Lr4/j;->d2:I

    xor-int/2addr v9, v13

    iput v9, v1, Lr4/j;->d2:I

    xor-int/lit8 v13, v21, -0x1

    and-int/2addr v13, v12

    xor-int v13, v61, v13

    xor-int v13, v13, v72

    xor-int/lit8 v15, v32, -0x1

    and-int/2addr v12, v15

    xor-int v12, v20, v12

    xor-int v12, v12, v73

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v12, v7

    xor-int/2addr v12, v13

    iget v13, v1, Lr4/j;->e:I

    xor-int/2addr v12, v13

    iput v12, v1, Lr4/j;->e:I

    xor-int v13, v31, v5

    or-int/2addr v6, v13

    xor-int v6, v27, v6

    and-int v5, v5, v66

    xor-int v5, v75, v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v7

    xor-int/2addr v5, v6

    iget v6, v1, Lr4/j;->w:I

    xor-int/2addr v5, v6

    iput v5, v1, Lr4/j;->w:I

    or-int v6, v14, v5

    iput v6, v1, Lr4/j;->A0:I

    xor-int v7, v14, v5

    iput v7, v1, Lr4/j;->B:I

    xor-int/lit8 v13, v5, -0x1

    and-int/2addr v13, v14

    or-int v15, v13, v5

    xor-int/lit8 v19, v14, -0x1

    move/from16 v20, v8

    and-int v8, v5, v19

    iput v8, v1, Lr4/j;->L1:I

    xor-int/lit8 v21, v8, -0x1

    move/from16 v25, v7

    and-int v7, v5, v21

    iput v7, v1, Lr4/j;->s:I

    and-int v7, v5, v14

    move/from16 v21, v7

    iget v7, v1, Lr4/j;->t0:I

    move/from16 v27, v15

    iget v15, v1, Lr4/j;->k1:I

    move/from16 v31, v13

    iget v13, v1, Lr4/j;->Q0:I

    xor-int v7, v48, v7

    xor-int/2addr v7, v15

    xor-int/lit8 v7, v7, -0x1

    and-int v7, v62, v7

    xor-int/2addr v7, v13

    iget v13, v1, Lr4/j;->Y0:I

    xor-int/2addr v7, v13

    iget v13, v1, Lr4/j;->S:I

    xor-int/2addr v7, v13

    iget v13, v1, Lr4/j;->s1:I

    xor-int/lit8 v15, v13, -0x1

    and-int v32, v7, v88

    and-int v32, v32, v15

    or-int v48, v0, v7

    move/from16 v52, v8

    iget v8, v1, Lr4/j;->E0:I

    move/from16 v53, v5

    iget v5, v1, Lr4/j;->K:I

    and-int v55, v48, v88

    or-int v55, v13, v55

    move/from16 v56, v6

    iget v6, v1, Lr4/j;->g2:I

    move/from16 v61, v14

    iget v14, v1, Lr4/j;->e1:I

    xor-int v63, v48, v32

    xor-int/lit8 v63, v63, -0x1

    and-int v63, v2, v63

    xor-int v63, v0, v63

    xor-int v6, v63, v6

    or-int/2addr v6, v14

    xor-int/lit8 v63, v7, -0x1

    and-int v63, v0, v63

    xor-int/lit8 v66, v14, -0x1

    move/from16 v68, v10

    iget v10, v1, Lr4/j;->V0:I

    xor-int v10, v63, v10

    and-int/2addr v10, v2

    or-int v69, v13, v48

    xor-int v69, v48, v69

    xor-int v8, v69, v8

    or-int/2addr v8, v5

    xor-int/2addr v8, v10

    and-int v8, v8, v66

    iput v8, v1, Lr4/j;->E0:I

    and-int v8, v63, v15

    xor-int/lit8 v10, v2, -0x1

    and-int/2addr v10, v8

    or-int/2addr v10, v5

    xor-int v8, v48, v8

    move/from16 v63, v4

    iget v4, v1, Lr4/j;->X0:I

    xor-int/2addr v4, v8

    or-int/2addr v4, v5

    iput v4, v1, Lr4/j;->X0:I

    xor-int v4, v7, v0

    or-int v8, v13, v4

    xor-int v8, v48, v8

    xor-int/lit8 v69, v8, -0x1

    move/from16 v72, v14

    and-int v14, v2, v69

    iput v14, v1, Lr4/j;->y1:I

    xor-int v14, v4, v32

    or-int/2addr v14, v2

    and-int v32, v7, v0

    move/from16 v69, v14

    iget v14, v1, Lr4/j;->u0:I

    or-int v73, v13, v32

    xor-int v75, v32, v73

    move/from16 v76, v7

    iget v7, v1, Lr4/j;->h2:I

    xor-int v7, v75, v7

    or-int/2addr v7, v5

    xor-int v73, v4, v73

    and-int v75, v32, v2

    xor-int v73, v73, v75

    xor-int v10, v73, v10

    xor-int/lit8 v73, v32, -0x1

    and-int v0, v0, v73

    or-int v73, v13, v0

    xor-int v75, v48, v73

    xor-int/lit8 v73, v73, -0x1

    and-int v73, v2, v73

    xor-int v73, v75, v73

    and-int v75, v32, v15

    xor-int v48, v48, v75

    or-int v48, v5, v48

    xor-int v48, v73, v48

    and-int v48, v48, v66

    xor-int v0, v0, v55

    move/from16 v55, v4

    iget v4, v1, Lr4/j;->a2:I

    xor-int/2addr v4, v0

    xor-int v14, v32, v14

    or-int/2addr v14, v5

    xor-int/2addr v4, v14

    xor-int/2addr v4, v6

    iget v6, v1, Lr4/j;->x:I

    xor-int/2addr v4, v6

    iput v4, v1, Lr4/j;->x:I

    xor-int v6, v34, v4

    and-int v14, v6, p2

    xor-int/2addr v14, v6

    xor-int/lit8 v14, v14, -0x1

    and-int v14, v70, v14

    and-int v41, v4, v41

    xor-int v66, v33, v41

    xor-int/lit8 v73, v33, -0x1

    and-int v73, v4, v73

    and-int v75, v4, v3

    and-int v77, v4, v59

    xor-int v77, v33, v77

    or-int v77, p2, v77

    xor-int v77, v75, v77

    xor-int v78, v24, v73

    or-int v6, p2, v6

    xor-int v6, v78, v6

    xor-int/lit8 v6, v6, -0x1

    and-int v6, v70, v6

    xor-int v6, v77, v6

    and-int v6, v28, v6

    and-int v77, v4, v33

    xor-int v42, v42, v77

    xor-int v77, v42, p1

    xor-int v54, v77, v54

    xor-int v77, v34, v73

    xor-int v29, v29, v75

    xor-int v29, v29, v43

    and-int v29, v70, v29

    xor-int v29, v77, v29

    xor-int/lit8 v29, v29, -0x1

    and-int v29, v28, v29

    xor-int v29, v54, v29

    xor-int v13, v29, v13

    iput v13, v1, Lr4/j;->K1:I

    xor-int/lit8 v13, v59, -0x1

    and-int/2addr v13, v4

    xor-int v13, v40, v13

    xor-int v13, v13, v39

    xor-int v3, v3, v75

    and-int v3, v3, p2

    xor-int/lit8 v3, v3, -0x1

    and-int v3, v70, v3

    xor-int/2addr v3, v13

    xor-int v13, v33, v73

    xor-int v13, v13, v35

    and-int v13, v70, v13

    xor-int/lit8 v13, v13, -0x1

    and-int v13, v28, v13

    xor-int/2addr v3, v13

    xor-int v3, v3, v38

    iput v3, v1, Lr4/j;->G:I

    xor-int/lit8 v13, v9, -0x1

    and-int v29, v3, v13

    or-int v33, v9, v3

    xor-int v35, v3, v33

    and-int v4, v4, v23

    xor-int v4, v34, v4

    xor-int v23, v4, p2

    xor-int v34, v42, v47

    and-int v34, v70, v34

    xor-int v23, v23, v34

    xor-int v24, v24, v41

    xor-int v16, v24, v16

    xor-int v24, v66, v26

    xor-int/lit8 v24, v24, -0x1

    and-int v24, v70, v24

    xor-int v16, v16, v24

    and-int v16, v28, v16

    xor-int v16, v23, v16

    move/from16 p1, v15

    xor-int v15, v16, v46

    iput v15, v1, Lr4/j;->Y:I

    or-int v16, v12, v15

    move/from16 v23, v13

    and-int v13, v15, v12

    iput v13, v1, Lr4/j;->C2:I

    xor-int v13, v15, v12

    iput v13, v1, Lr4/j;->J1:I

    xor-int/lit8 v24, v15, -0x1

    move/from16 v26, v13

    and-int v13, v12, v24

    iput v13, v1, Lr4/j;->z2:I

    xor-int/lit8 v24, v13, -0x1

    move/from16 v28, v13

    and-int v13, v12, v24

    iput v13, v1, Lr4/j;->E2:I

    xor-int/lit8 v34, v12, -0x1

    move/from16 v38, v9

    and-int v9, v15, v34

    iput v9, v1, Lr4/j;->y2:I

    move/from16 v39, v3

    or-int v3, v12, v9

    iput v3, v1, Lr4/j;->o0:I

    or-int v3, p2, v4

    xor-int v3, v66, v3

    xor-int/2addr v3, v14

    xor-int/2addr v3, v6

    xor-int/2addr v3, v11

    iput v3, v1, Lr4/j;->c0:I

    or-int/2addr v0, v2

    xor-int/2addr v0, v8

    xor-int/lit8 v3, v5, -0x1

    and-int/2addr v0, v3

    or-int v2, v2, v32

    xor-int/2addr v2, v7

    or-int v2, v72, v2

    xor-int/2addr v2, v10

    xor-int v2, v2, v62

    iput v2, v1, Lr4/j;->n1:I

    xor-int/lit8 v3, v84, -0x1

    and-int/2addr v3, v2

    iput v3, v1, Lr4/j;->h2:I

    iget v4, v1, Lr4/j;->l:I

    xor-int/lit8 v6, v4, -0x1

    and-int v7, v3, v6

    xor-int/2addr v7, v2

    iput v7, v1, Lr4/j;->V0:I

    iget v8, v1, Lr4/j;->P:I

    xor-int/lit8 v10, v60, -0x1

    and-int v11, v3, v10

    iget v14, v1, Lr4/j;->c2:I

    move/from16 p2, v12

    iget v12, v1, Lr4/j;->b:I

    xor-int/lit8 v14, v14, -0x1

    and-int/2addr v14, v2

    xor-int/2addr v12, v14

    iget v14, v1, Lr4/j;->p0:I

    or-int/2addr v14, v2

    xor-int/lit8 v32, v63, -0x1

    and-int v14, v14, v32

    xor-int/2addr v14, v12

    xor-int/lit8 v32, v2, -0x1

    and-int v40, v84, v32

    and-int v41, v40, v6

    move/from16 v42, v0

    iget v0, v1, Lr4/j;->A1:I

    move/from16 v43, v14

    iget v14, v1, Lr4/j;->m0:I

    or-int/2addr v0, v2

    xor-int/2addr v0, v14

    and-int v12, v63, v12

    xor-int/2addr v0, v12

    or-int v12, v84, v2

    or-int v46, v4, v12

    and-int v47, v12, v6

    xor-int v54, v84, v47

    xor-int v54, v54, v11

    or-int v54, v8, v54

    and-int v59, v12, v32

    or-int v62, v4, v59

    move/from16 v66, v14

    xor-int v14, v3, v62

    iput v14, v1, Lr4/j;->k2:I

    or-int v62, v60, v47

    move/from16 v70, v5

    iget v5, v1, Lr4/j;->m2:I

    and-int/2addr v5, v2

    xor-int/lit8 v5, v5, -0x1

    and-int v5, v63, v5

    and-int v72, v84, v2

    and-int v73, v72, v6

    xor-int v75, v2, v73

    or-int v77, v60, v75

    and-int v75, v75, v60

    xor-int v75, v2, v75

    or-int v75, v8, v75

    xor-int/lit8 v78, v72, -0x1

    and-int v78, v2, v78

    or-int v79, v4, v78

    xor-int v79, v12, v79

    or-int v80, v60, v41

    xor-int v79, v79, v80

    or-int v80, v60, v7

    xor-int v80, v2, v80

    or-int v80, v8, v80

    move/from16 v81, v5

    xor-int v5, v79, v80

    iput v5, v1, Lr4/j;->h1:I

    xor-int/lit8 v79, v8, -0x1

    or-int v80, v60, v12

    xor-int v80, v12, v80

    xor-int v78, v78, v47

    xor-int v57, v78, v57

    and-int v57, v57, v79

    xor-int v57, v80, v57

    xor-int/lit8 v57, v57, -0x1

    and-int v57, v92, v57

    and-int v41, v41, v10

    move/from16 v78, v10

    xor-int v10, v72, v41

    iput v10, v1, Lr4/j;->w2:I

    xor-int v40, v40, v73

    or-int/2addr v4, v2

    move/from16 v41, v8

    iget v8, v1, Lr4/j;->g:I

    and-int v8, v8, v32

    move/from16 v73, v8

    iget v8, v1, Lr4/j;->w0:I

    move/from16 v80, v11

    iget v11, v1, Lr4/j;->U0:I

    move/from16 v82, v3

    iget v3, v1, Lr4/j;->u2:I

    and-int/2addr v8, v2

    xor-int/2addr v8, v11

    and-int v8, v63, v8

    xor-int/2addr v3, v8

    or-int v3, v60, v3

    xor-int/2addr v0, v3

    xor-int v0, v0, v50

    iput v0, v1, Lr4/j;->Q:I

    xor-int/lit8 v3, v13, -0x1

    and-int/2addr v3, v0

    xor-int/2addr v3, v15

    or-int v3, v68, v3

    xor-int/lit8 v8, v9, -0x1

    and-int v11, v0, v8

    move/from16 v50, v3

    xor-int v3, v84, v2

    iput v3, v1, Lr4/j;->u2:I

    and-int/2addr v6, v3

    xor-int v72, v72, v6

    xor-int v72, v72, v77

    xor-int v72, v72, v75

    xor-int v46, v3, v46

    xor-int v46, v46, v62

    xor-int v46, v46, v54

    xor-int v46, v46, v57

    move/from16 v54, v11

    iget v11, v1, Lr4/j;->o:I

    xor-int v11, v46, v11

    iput v11, v1, Lr4/j;->o:I

    and-int v46, v11, v61

    move/from16 v57, v15

    xor-int v15, v61, v46

    iput v15, v1, Lr4/j;->v0:I

    xor-int v15, v56, v11

    iput v15, v1, Lr4/j;->a:I

    xor-int v15, v53, v46

    move/from16 v62, v8

    and-int v8, v11, v52

    iput v8, v1, Lr4/j;->g2:I

    and-int v8, v11, v19

    move/from16 v19, v13

    xor-int v13, v61, v8

    iput v13, v1, Lr4/j;->W:I

    and-int v13, v11, v53

    xor-int v13, v52, v13

    iput v13, v1, Lr4/j;->U0:I

    and-int v13, v11, v31

    xor-int v13, v27, v13

    iput v13, v1, Lr4/j;->f0:I

    and-int v13, v11, v27

    xor-int v13, v21, v13

    iput v13, v1, Lr4/j;->d:I

    xor-int/lit8 v13, v25, -0x1

    and-int/2addr v13, v11

    xor-int v13, v52, v13

    iput v13, v1, Lr4/j;->A1:I

    xor-int v13, v53, v8

    iput v13, v1, Lr4/j;->R1:I

    xor-int v8, v31, v8

    iput v8, v1, Lr4/j;->S0:I

    and-int v8, v11, v25

    xor-int v8, v25, v8

    iput v8, v1, Lr4/j;->a2:I

    xor-int/lit8 v8, v56, -0x1

    and-int/2addr v8, v11

    xor-int v8, v21, v8

    iput v8, v1, Lr4/j;->H1:I

    xor-int v8, v31, v46

    iput v8, v1, Lr4/j;->a1:I

    or-int v8, v60, v3

    xor-int/2addr v7, v8

    and-int v7, v7, v79

    xor-int/2addr v7, v10

    and-int v7, v92, v7

    xor-int/2addr v5, v7

    iput v5, v1, Lr4/j;->A2:I

    iget v7, v1, Lr4/j;->b1:I

    xor-int/2addr v5, v7

    iput v5, v1, Lr4/j;->b1:I

    xor-int v3, v3, v47

    or-int v3, v60, v3

    xor-int/2addr v3, v14

    iput v3, v1, Lr4/j;->a0:I

    xor-int v5, v12, v4

    xor-int/lit8 v5, v5, -0x1

    and-int v5, v60, v5

    xor-int/2addr v5, v2

    and-int v5, v5, v79

    xor-int/2addr v3, v5

    xor-int v5, v82, v6

    xor-int v5, v5, v80

    and-int v5, v5, v79

    xor-int/lit8 v5, v5, -0x1

    and-int v5, v92, v5

    xor-int/2addr v3, v5

    xor-int v3, v3, v70

    iput v3, v1, Lr4/j;->K:I

    iget v3, v1, Lr4/j;->q2:I

    and-int v3, v3, v32

    iget v5, v1, Lr4/j;->P0:I

    and-int/2addr v5, v2

    and-int v5, v63, v5

    iget v6, v1, Lr4/j;->p1:I

    iget v7, v1, Lr4/j;->v2:I

    iget v8, v1, Lr4/j;->r2:I

    iget v10, v1, Lr4/j;->T0:I

    and-int/2addr v8, v2

    xor-int/2addr v8, v10

    and-int v8, v63, v8

    xor-int/2addr v3, v8

    or-int v3, v60, v3

    xor-int v3, v43, v3

    xor-int v3, v3, v20

    iput v3, v1, Lr4/j;->M:I

    iget v3, v1, Lr4/j;->s2:I

    iget v8, v1, Lr4/j;->i0:I

    or-int v4, v60, v4

    xor-int v4, v59, v4

    or-int v10, v60, v2

    xor-int v10, v40, v10

    or-int v10, v41, v10

    xor-int/2addr v4, v10

    xor-int/lit8 v4, v4, -0x1

    and-int v4, v92, v4

    xor-int v4, v72, v4

    xor-int v4, v4, v17

    iput v4, v1, Lr4/j;->y0:I

    or-int v10, v39, v4

    or-int v10, v38, v10

    xor-int v11, v4, v39

    xor-int v12, v11, v38

    xor-int/lit8 v13, v4, -0x1

    and-int v13, v39, v13

    xor-int/lit8 v14, v13, -0x1

    and-int v17, v39, v14

    or-int v17, v38, v17

    xor-int v17, v13, v17

    xor-int v20, v13, v29

    and-int v21, v4, v39

    xor-int v21, v21, v38

    xor-int/lit8 v25, v39, -0x1

    and-int v27, v4, v25

    or-int v31, v39, v27

    and-int v32, v27, v23

    xor-int v40, v27, v29

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    xor-int/2addr v3, v8

    iget v8, v1, Lr4/j;->p2:I

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v2

    xor-int v8, v67, v8

    xor-int/lit8 v8, v8, -0x1

    and-int v8, v63, v8

    xor-int/2addr v3, v8

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    xor-int/2addr v6, v7

    and-int v6, v63, v6

    xor-int v6, v73, v6

    or-int v6, v60, v6

    xor-int/2addr v3, v6

    xor-int v3, v3, v30

    iput v3, v1, Lr4/j;->y:I

    xor-int/lit8 v6, v3, -0x1

    xor-int v7, v4, v10

    and-int/2addr v7, v6

    xor-int/2addr v7, v12

    and-int v8, v35, v3

    xor-int/2addr v10, v8

    xor-int v8, v33, v8

    xor-int/lit8 v8, v8, -0x1

    and-int v8, v74, v8

    xor-int/2addr v8, v10

    iput v8, v1, Lr4/j;->p1:I

    or-int v8, v38, v11

    xor-int v8, v31, v8

    xor-int/lit8 v10, v29, -0x1

    and-int/2addr v10, v3

    xor-int/2addr v8, v10

    and-int v10, v13, v6

    xor-int/2addr v10, v13

    xor-int/lit8 v10, v10, -0x1

    and-int v10, v74, v10

    xor-int/2addr v8, v10

    iput v8, v1, Lr4/j;->B1:I

    or-int v8, v38, v27

    xor-int/2addr v8, v11

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v3

    xor-int/2addr v8, v12

    and-int v10, v31, v23

    xor-int/2addr v10, v4

    or-int/2addr v10, v3

    and-int v11, v11, v23

    xor-int/2addr v11, v13

    xor-int/lit8 v13, v33, -0x1

    and-int/2addr v13, v3

    xor-int/2addr v11, v13

    xor-int/lit8 v11, v11, -0x1

    and-int v11, v74, v11

    xor-int/2addr v10, v11

    iput v10, v1, Lr4/j;->F0:I

    and-int v10, v3, v14

    xor-int/2addr v10, v4

    xor-int/lit8 v10, v10, -0x1

    and-int v10, v74, v10

    xor-int/2addr v7, v10

    iput v7, v1, Lr4/j;->q2:I

    xor-int v7, v17, v3

    xor-int/lit8 v10, v21, -0x1

    and-int/2addr v10, v3

    xor-int/2addr v4, v10

    and-int v4, v4, v74

    xor-int/2addr v4, v7

    iput v4, v1, Lr4/j;->r2:I

    or-int v4, v39, v3

    and-int v7, v40, v3

    xor-int v7, v20, v7

    xor-int/lit8 v7, v7, -0x1

    and-int v7, v74, v7

    xor-int/2addr v7, v8

    iput v7, v1, Lr4/j;->g0:I

    and-int v7, v3, v25

    iput v7, v1, Lr4/j;->c2:I

    and-int v8, v32, v3

    xor-int v8, v39, v8

    or-int v10, v3, v21

    xor-int/2addr v10, v12

    xor-int/lit8 v10, v10, -0x1

    and-int v10, v74, v10

    xor-int/2addr v8, v10

    iput v8, v1, Lr4/j;->g:I

    iget v8, v1, Lr4/j;->t2:I

    iget v10, v1, Lr4/j;->G1:I

    iget v11, v1, Lr4/j;->l2:I

    xor-int/lit8 v12, v66, -0x1

    and-int/2addr v12, v2

    xor-int/2addr v11, v12

    xor-int v11, v11, v81

    and-int/2addr v2, v8

    xor-int/2addr v2, v10

    xor-int/2addr v2, v5

    and-int v2, v2, v78

    xor-int/2addr v2, v11

    xor-int v2, v2, v76

    iput v2, v1, Lr4/j;->P0:I

    and-int v2, v76, p1

    xor-int v2, v55, v2

    iput v2, v1, Lr4/j;->s1:I

    xor-int v2, v2, v69

    xor-int v2, v2, v42

    xor-int v2, v2, v48

    iget v5, v1, Lr4/j;->l1:I

    xor-int/2addr v2, v5

    iput v2, v1, Lr4/j;->l1:I

    xor-int/lit8 v5, v2, -0x1

    and-int v8, v64, v5

    and-int v10, v2, v64

    and-int v11, v2, v22

    and-int v12, v84, v11

    xor-int/2addr v12, v11

    and-int v12, v12, v45

    and-int v13, v84, v8

    xor-int/2addr v13, v11

    or-int v11, v64, v11

    xor-int v14, v11, v84

    and-int v14, v45, v14

    xor-int v14, v51, v14

    xor-int/lit8 v14, v14, -0x1

    and-int v14, v44, v14

    xor-int/lit8 v17, v92, -0x1

    and-int v11, v84, v11

    xor-int/2addr v11, v10

    and-int v20, v13, v45

    xor-int v11, v11, v20

    and-int v18, v2, v18

    xor-int v18, v36, v18

    xor-int/lit8 v18, v18, -0x1

    and-int v18, v44, v18

    xor-int v11, v11, v18

    and-int v11, v11, v17

    xor-int v18, v2, v64

    or-int v20, v64, v2

    xor-int/lit8 v20, v20, -0x1

    and-int v20, v84, v20

    and-int v20, v20, v45

    xor-int v20, v71, v20

    xor-int v21, v18, v65

    and-int v21, v44, v21

    xor-int v20, v20, v21

    xor-int/lit8 v21, v18, -0x1

    and-int v21, v84, v21

    xor-int v22, v64, v21

    or-int v22, v45, v22

    xor-int v23, v2, v21

    or-int v21, v45, v21

    and-int v5, v84, v5

    xor-int v5, v18, v5

    xor-int v5, v5, v45

    xor-int v27, v2, v36

    and-int v10, v84, v10

    xor-int/2addr v8, v10

    or-int v8, v45, v8

    xor-int v8, v27, v8

    xor-int v8, v8, v58

    or-int v10, v45, v13

    xor-int v13, v23, v22

    xor-int/lit8 v13, v13, -0x1

    and-int v13, v44, v13

    xor-int/2addr v10, v13

    and-int v10, v10, v17

    xor-int/2addr v8, v10

    xor-int v8, v8, v96

    iput v8, v1, Lr4/j;->E:I

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v15

    iput v8, v1, Lr4/j;->r:I

    and-int v8, v44, v27

    xor-int/2addr v5, v8

    xor-int/2addr v5, v11

    xor-int v5, v5, v37

    iput v5, v1, Lr4/j;->O:I

    xor-int v8, v5, v3

    iput v8, v1, Lr4/j;->M1:I

    or-int v10, v39, v5

    xor-int/2addr v8, v10

    iput v8, v1, Lr4/j;->R0:I

    and-int/2addr v6, v5

    iput v6, v1, Lr4/j;->k1:I

    and-int v8, v6, v25

    iput v8, v1, Lr4/j;->t:I

    or-int v10, v3, v6

    and-int v11, v10, v25

    xor-int v13, v3, v11

    iput v13, v1, Lr4/j;->G1:I

    xor-int/2addr v6, v7

    iput v6, v1, Lr4/j;->i0:I

    xor-int v6, v3, v8

    iput v6, v1, Lr4/j;->B2:I

    or-int v6, v5, v3

    xor-int/2addr v4, v6

    iput v4, v1, Lr4/j;->u0:I

    and-int v4, v5, v25

    iput v4, v1, Lr4/j;->T0:I

    xor-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v3

    iput v6, v1, Lr4/j;->e0:I

    xor-int v7, v6, v8

    iput v7, v1, Lr4/j;->Y0:I

    xor-int/lit8 v7, v6, -0x1

    and-int/2addr v7, v3

    xor-int v8, v7, v11

    iput v8, v1, Lr4/j;->t2:I

    or-int v8, v39, v7

    xor-int/2addr v8, v6

    iput v8, v1, Lr4/j;->D0:I

    and-int v8, v6, v25

    xor-int/2addr v8, v10

    iput v8, v1, Lr4/j;->D2:I

    xor-int v6, v6, v39

    iput v6, v1, Lr4/j;->l2:I

    xor-int/2addr v4, v5

    iput v4, v1, Lr4/j;->Q0:I

    and-int/2addr v3, v5

    and-int v3, v3, v25

    xor-int/2addr v3, v7

    iput v3, v1, Lr4/j;->p2:I

    xor-int v3, v27, v21

    xor-int v4, v27, v22

    and-int v4, v44, v4

    xor-int/2addr v3, v4

    or-int v3, v3, v92

    xor-int v3, v20, v3

    iget v4, v1, Lr4/j;->m:I

    xor-int/2addr v3, v4

    iput v3, v1, Lr4/j;->m:I

    and-int v2, v84, v2

    xor-int v2, v18, v2

    and-int v3, v45, v2

    xor-int v3, v27, v3

    xor-int/2addr v3, v14

    xor-int/lit8 v2, v2, -0x1

    and-int v2, v45, v2

    xor-int v2, v23, v2

    and-int v2, v44, v2

    xor-int/2addr v2, v12

    or-int v2, v92, v2

    xor-int/2addr v2, v3

    xor-int v2, v2, v49

    iput v2, v1, Lr4/j;->A:I

    and-int v3, v2, p2

    and-int v4, v2, v9

    xor-int v4, p2, v4

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v0

    iput v4, v1, Lr4/j;->S:I

    iput v4, v1, Lr4/j;->W0:I

    xor-int v4, p2, v2

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v0

    and-int v5, v2, v26

    xor-int v5, v26, v5

    iput v5, v1, Lr4/j;->t0:I

    xor-int v6, v19, v3

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    iput v6, v1, Lr4/j;->O1:I

    and-int v6, v2, v62

    xor-int v6, v28, v6

    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v7, v0

    xor-int/2addr v7, v6

    xor-int/lit8 v8, v68, -0x1

    xor-int v9, p2, v3

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v0

    xor-int/2addr v6, v9

    and-int/2addr v6, v8

    iput v6, v1, Lr4/j;->S1:I

    and-int v6, v2, v34

    xor-int v6, v28, v6

    and-int/2addr v6, v0

    iput v6, v1, Lr4/j;->m2:I

    and-int v6, v2, v28

    xor-int v6, v28, v6

    iput v6, v1, Lr4/j;->x1:I

    and-int v6, v2, v24

    xor-int v9, v57, v6

    xor-int/2addr v4, v9

    and-int/2addr v4, v8

    iput v4, v1, Lr4/j;->m0:I

    xor-int/lit8 v4, v16, -0x1

    and-int/2addr v4, v2

    xor-int/lit8 v9, v0, -0x1

    and-int/2addr v4, v9

    or-int v4, v68, v4

    xor-int/2addr v4, v7

    iput v4, v1, Lr4/j;->q0:I

    and-int v2, v2, v57

    xor-int v2, v19, v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    iput v2, v1, Lr4/j;->I1:I

    xor-int/lit8 v2, v3, -0x1

    and-int/2addr v0, v2

    xor-int/2addr v0, v5

    and-int/2addr v0, v8

    iput v0, v1, Lr4/j;->s2:I

    xor-int v0, p2, v6

    iput v0, v1, Lr4/j;->v2:I

    xor-int v0, v0, v54

    iput v0, v1, Lr4/j;->b:I

    xor-int v0, v0, v50

    iput v0, v1, Lr4/j;->w0:I

    return-void
.end method
