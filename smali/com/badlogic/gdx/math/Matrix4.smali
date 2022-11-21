.class public Lcom/badlogic/gdx/math/Matrix4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x4

.field public static final M02:I = 0x8

.field public static final M03:I = 0xc

.field public static final M10:I = 0x1

.field public static final M11:I = 0x5

.field public static final M12:I = 0x9

.field public static final M13:I = 0xd

.field public static final M20:I = 0x2

.field public static final M21:I = 0x6

.field public static final M22:I = 0xa

.field public static final M23:I = 0xe

.field public static final M30:I = 0x3

.field public static final M31:I = 0x7

.field public static final M32:I = 0xb

.field public static final M33:I = 0xf

.field public static final a:Lcom/badlogic/gdx/math/Quaternion;

.field public static final b:Lcom/badlogic/gdx/math/Quaternion;

.field public static final d:Lcom/badlogic/gdx/math/Vector3;

.field public static final k:Lcom/badlogic/gdx/math/Vector3;

.field public static final p:Lcom/badlogic/gdx/math/Vector3;

.field public static final q:Lcom/badlogic/gdx/math/Vector3;

.field public static final r:Lcom/badlogic/gdx/math/Matrix4;

.field public static final s:Lcom/badlogic/gdx/math/Vector3;

.field public static final t:Lcom/badlogic/gdx/math/Vector3;

.field public static final u:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public final val:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->b:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->d:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->k:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->p:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->r:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->s:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Matrix4;->u:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public static det([F)F
    .locals 15

    const/4 v0, 0x3

    aget v0, p0, v0

    const/4 v1, 0x6

    aget v1, p0, v1

    mul-float v2, v0, v1

    const/16 v3, 0x9

    aget v3, p0, v3

    mul-float v2, v2, v3

    const/16 v4, 0xc

    aget v4, p0, v4

    mul-float v2, v2, v4

    const/4 v5, 0x2

    aget v5, p0, v5

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float v7, v5, v6

    mul-float v7, v7, v3

    mul-float v7, v7, v4

    sub-float/2addr v2, v7

    const/4 v7, 0x5

    aget v7, p0, v7

    mul-float v8, v0, v7

    const/16 v9, 0xa

    aget v9, p0, v9

    mul-float v8, v8, v9

    mul-float v8, v8, v4

    sub-float/2addr v2, v8

    const/4 v8, 0x1

    aget v8, p0, v8

    mul-float v10, v8, v6

    mul-float v10, v10, v9

    mul-float v10, v10, v4

    add-float/2addr v2, v10

    mul-float v10, v5, v7

    const/16 v11, 0xb

    aget v11, p0, v11

    mul-float v10, v10, v11

    mul-float v10, v10, v4

    add-float/2addr v2, v10

    mul-float v10, v8, v1

    mul-float v10, v10, v11

    mul-float v10, v10, v4

    sub-float/2addr v2, v10

    mul-float v4, v0, v1

    const/16 v10, 0x8

    aget v10, p0, v10

    mul-float v4, v4, v10

    const/16 v12, 0xd

    aget v12, p0, v12

    mul-float v4, v4, v12

    sub-float/2addr v2, v4

    mul-float v4, v5, v6

    mul-float v4, v4, v10

    mul-float v4, v4, v12

    add-float/2addr v2, v4

    const/4 v4, 0x4

    aget v4, p0, v4

    mul-float v13, v0, v4

    mul-float v13, v13, v9

    mul-float v13, v13, v12

    add-float/2addr v2, v13

    const/4 v13, 0x0

    aget v13, p0, v13

    mul-float v14, v13, v6

    mul-float v14, v14, v9

    mul-float v14, v14, v12

    sub-float/2addr v2, v14

    mul-float v14, v5, v4

    mul-float v14, v14, v11

    mul-float v14, v14, v12

    sub-float/2addr v2, v14

    mul-float v14, v13, v1

    mul-float v14, v14, v11

    mul-float v14, v14, v12

    add-float/2addr v2, v14

    mul-float v12, v0, v7

    mul-float v12, v12, v10

    const/16 v14, 0xe

    aget v14, p0, v14

    mul-float v12, v12, v14

    add-float/2addr v2, v12

    mul-float v12, v8, v6

    mul-float v12, v12, v10

    mul-float v12, v12, v14

    sub-float/2addr v2, v12

    mul-float v0, v0, v4

    mul-float v0, v0, v3

    mul-float v0, v0, v14

    sub-float/2addr v2, v0

    mul-float v6, v6, v13

    mul-float v6, v6, v3

    mul-float v6, v6, v14

    add-float/2addr v2, v6

    mul-float v0, v8, v4

    mul-float v0, v0, v11

    mul-float v0, v0, v14

    add-float/2addr v2, v0

    mul-float v0, v13, v7

    mul-float v0, v0, v11

    mul-float v0, v0, v14

    sub-float/2addr v2, v0

    mul-float v0, v5, v7

    mul-float v0, v0, v10

    const/16 v6, 0xf

    aget p0, p0, v6

    mul-float v0, v0, p0

    sub-float/2addr v2, v0

    mul-float v0, v8, v1

    mul-float v0, v0, v10

    mul-float v0, v0, p0

    add-float/2addr v2, v0

    mul-float v5, v5, v4

    mul-float v5, v5, v3

    mul-float v5, v5, p0

    add-float/2addr v2, v5

    mul-float v1, v1, v13

    mul-float v1, v1, v3

    mul-float v1, v1, p0

    sub-float/2addr v2, v1

    mul-float v8, v8, v4

    mul-float v8, v8, v9

    mul-float v8, v8, p0

    sub-float/2addr v2, v8

    mul-float v13, v13, v7

    mul-float v13, v13, v9

    mul-float v13, v13, p0

    add-float/2addr v2, v13

    return v2
.end method

.method public static inv([F)Z
    .locals 45

    invoke-static/range {p0 .. p0}, Lcom/badlogic/gdx/math/Matrix4;->det([F)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x9

    aget v3, p0, v2

    const/16 v4, 0xe

    aget v5, p0, v4

    mul-float v6, v3, v5

    const/4 v7, 0x7

    aget v8, p0, v7

    mul-float v6, v6, v8

    const/16 v9, 0xd

    aget v10, p0, v9

    const/16 v11, 0xa

    aget v12, p0, v11

    mul-float v13, v10, v12

    mul-float v13, v13, v8

    sub-float/2addr v6, v13

    const/4 v13, 0x6

    aget v14, p0, v13

    mul-float v15, v10, v14

    const/16 v16, 0xb

    aget v17, p0, v16

    mul-float v15, v15, v17

    add-float/2addr v6, v15

    const/4 v15, 0x5

    aget v18, p0, v15

    mul-float v19, v18, v5

    mul-float v19, v19, v17

    sub-float v6, v6, v19

    mul-float v19, v3, v14

    const/16 v20, 0xf

    aget v21, p0, v20

    mul-float v19, v19, v21

    sub-float v6, v6, v19

    mul-float v19, v18, v12

    mul-float v19, v19, v21

    add-float v6, v6, v19

    const/16 v19, 0xc

    aget v22, p0, v19

    mul-float v23, v22, v12

    mul-float v23, v23, v8

    const/16 v24, 0x8

    aget v25, p0, v24

    mul-float v26, v25, v5

    mul-float v26, v26, v8

    sub-float v23, v23, v26

    mul-float v26, v22, v14

    mul-float v26, v26, v17

    sub-float v23, v23, v26

    const/16 v26, 0x4

    aget v27, p0, v26

    mul-float v28, v27, v5

    mul-float v28, v28, v17

    add-float v23, v23, v28

    mul-float v28, v25, v14

    mul-float v28, v28, v21

    add-float v23, v23, v28

    mul-float v28, v27, v12

    mul-float v28, v28, v21

    sub-float v23, v23, v28

    mul-float v28, v25, v10

    mul-float v28, v28, v8

    mul-float v29, v22, v3

    mul-float v29, v29, v8

    sub-float v28, v28, v29

    mul-float v29, v22, v18

    mul-float v29, v29, v17

    add-float v28, v28, v29

    mul-float v29, v27, v10

    mul-float v29, v29, v17

    sub-float v28, v28, v29

    mul-float v29, v25, v18

    mul-float v29, v29, v21

    sub-float v28, v28, v29

    mul-float v29, v27, v3

    mul-float v29, v29, v21

    add-float v28, v28, v29

    mul-float v29, v22, v3

    mul-float v29, v29, v14

    mul-float v30, v25, v10

    mul-float v30, v30, v14

    sub-float v29, v29, v30

    mul-float v30, v22, v18

    mul-float v30, v30, v12

    sub-float v29, v29, v30

    mul-float v30, v27, v10

    mul-float v30, v30, v12

    add-float v29, v29, v30

    mul-float v30, v25, v18

    mul-float v30, v30, v5

    add-float v29, v29, v30

    mul-float v30, v27, v3

    mul-float v30, v30, v5

    sub-float v29, v29, v30

    mul-float v30, v10, v12

    const/16 v31, 0x3

    aget v32, p0, v31

    mul-float v30, v30, v32

    mul-float v33, v3, v5

    mul-float v33, v33, v32

    sub-float v30, v30, v33

    const/16 v33, 0x2

    aget v34, p0, v33

    mul-float v35, v10, v34

    mul-float v35, v35, v17

    sub-float v30, v30, v35

    const/16 v35, 0x1

    aget v36, p0, v35

    mul-float v37, v36, v5

    mul-float v37, v37, v17

    add-float v30, v30, v37

    mul-float v37, v3, v34

    mul-float v37, v37, v21

    add-float v30, v30, v37

    mul-float v37, v36, v12

    mul-float v37, v37, v21

    sub-float v30, v30, v37

    mul-float v37, v25, v5

    mul-float v37, v37, v32

    mul-float v38, v22, v12

    mul-float v38, v38, v32

    sub-float v37, v37, v38

    mul-float v38, v22, v34

    mul-float v38, v38, v17

    add-float v37, v37, v38

    aget v38, p0, v1

    mul-float v39, v38, v5

    mul-float v39, v39, v17

    sub-float v37, v37, v39

    mul-float v39, v25, v34

    mul-float v39, v39, v21

    sub-float v37, v37, v39

    mul-float v39, v38, v12

    mul-float v39, v39, v21

    add-float v37, v37, v39

    mul-float v39, v22, v3

    mul-float v39, v39, v32

    mul-float v40, v25, v10

    mul-float v40, v40, v32

    sub-float v39, v39, v40

    mul-float v40, v22, v36

    mul-float v40, v40, v17

    sub-float v39, v39, v40

    mul-float v40, v38, v10

    mul-float v40, v40, v17

    add-float v39, v39, v40

    mul-float v40, v25, v36

    mul-float v40, v40, v21

    add-float v39, v39, v40

    mul-float v40, v38, v3

    mul-float v40, v40, v21

    sub-float v39, v39, v40

    mul-float v40, v25, v10

    mul-float v40, v40, v34

    mul-float v41, v22, v3

    mul-float v41, v41, v34

    sub-float v40, v40, v41

    mul-float v41, v22, v36

    mul-float v41, v41, v12

    add-float v40, v40, v41

    mul-float v41, v38, v10

    mul-float v41, v41, v12

    sub-float v40, v40, v41

    mul-float v41, v25, v36

    mul-float v41, v41, v5

    sub-float v40, v40, v41

    mul-float v41, v38, v3

    mul-float v41, v41, v5

    add-float v40, v40, v41

    mul-float v41, v18, v5

    mul-float v41, v41, v32

    mul-float v42, v10, v14

    mul-float v42, v42, v32

    sub-float v41, v41, v42

    mul-float v42, v10, v34

    mul-float v42, v42, v8

    add-float v41, v41, v42

    mul-float v42, v36, v5

    mul-float v42, v42, v8

    sub-float v41, v41, v42

    mul-float v42, v18, v34

    mul-float v42, v42, v21

    sub-float v41, v41, v42

    mul-float v42, v36, v14

    mul-float v42, v42, v21

    add-float v41, v41, v42

    mul-float v42, v22, v14

    mul-float v42, v42, v32

    mul-float v43, v27, v5

    mul-float v43, v43, v32

    sub-float v42, v42, v43

    mul-float v43, v22, v34

    mul-float v43, v43, v8

    sub-float v42, v42, v43

    mul-float v43, v38, v5

    mul-float v43, v43, v8

    add-float v42, v42, v43

    mul-float v43, v27, v34

    mul-float v43, v43, v21

    add-float v42, v42, v43

    mul-float v43, v38, v14

    mul-float v43, v43, v21

    sub-float v42, v42, v43

    mul-float v43, v27, v10

    mul-float v43, v43, v32

    mul-float v44, v22, v18

    mul-float v44, v44, v32

    sub-float v43, v43, v44

    mul-float v44, v22, v36

    mul-float v44, v44, v8

    add-float v43, v43, v44

    mul-float v44, v38, v10

    mul-float v44, v44, v8

    sub-float v43, v43, v44

    mul-float v44, v27, v36

    mul-float v44, v44, v21

    sub-float v43, v43, v44

    mul-float v44, v38, v18

    mul-float v44, v44, v21

    add-float v43, v43, v44

    mul-float v21, v22, v18

    mul-float v21, v21, v34

    mul-float v44, v27, v10

    mul-float v44, v44, v34

    sub-float v21, v21, v44

    mul-float v22, v22, v36

    mul-float v22, v22, v14

    sub-float v21, v21, v22

    mul-float v10, v10, v38

    mul-float v10, v10, v14

    add-float v21, v21, v10

    mul-float v10, v27, v36

    mul-float v10, v10, v5

    add-float v21, v21, v10

    mul-float v10, v38, v18

    mul-float v10, v10, v5

    sub-float v21, v21, v10

    mul-float v5, v3, v14

    mul-float v5, v5, v32

    mul-float v10, v18, v12

    mul-float v10, v10, v32

    sub-float/2addr v5, v10

    mul-float v10, v3, v34

    mul-float v10, v10, v8

    sub-float/2addr v5, v10

    mul-float v10, v36, v12

    mul-float v10, v10, v8

    add-float/2addr v5, v10

    mul-float v10, v18, v34

    mul-float v10, v10, v17

    add-float/2addr v5, v10

    mul-float v10, v36, v14

    mul-float v10, v10, v17

    sub-float/2addr v5, v10

    mul-float v10, v27, v12

    mul-float v10, v10, v32

    mul-float v22, v25, v14

    mul-float v22, v22, v32

    sub-float v10, v10, v22

    mul-float v22, v25, v34

    mul-float v22, v22, v8

    add-float v10, v10, v22

    mul-float v22, v38, v12

    mul-float v22, v22, v8

    sub-float v10, v10, v22

    mul-float v22, v27, v34

    mul-float v22, v22, v17

    sub-float v10, v10, v22

    mul-float v22, v38, v14

    mul-float v22, v22, v17

    add-float v10, v10, v22

    mul-float v22, v25, v18

    mul-float v22, v22, v32

    mul-float v44, v27, v3

    mul-float v44, v44, v32

    sub-float v22, v22, v44

    mul-float v32, v25, v36

    mul-float v32, v32, v8

    sub-float v22, v22, v32

    mul-float v32, v38, v3

    mul-float v32, v32, v8

    add-float v22, v22, v32

    mul-float v8, v27, v36

    mul-float v8, v8, v17

    add-float v22, v22, v8

    mul-float v8, v38, v18

    mul-float v8, v8, v17

    sub-float v22, v22, v8

    mul-float v8, v27, v3

    mul-float v8, v8, v34

    mul-float v17, v25, v18

    mul-float v17, v17, v34

    sub-float v8, v8, v17

    mul-float v25, v25, v36

    mul-float v25, v25, v14

    add-float v8, v8, v25

    mul-float v3, v3, v38

    mul-float v3, v3, v14

    sub-float/2addr v8, v3

    mul-float v27, v27, v36

    mul-float v27, v27, v12

    sub-float v8, v8, v27

    mul-float v38, v38, v18

    mul-float v38, v38, v12

    add-float v8, v8, v38

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    mul-float v6, v6, v3

    aput v6, p0, v1

    mul-float v30, v30, v3

    aput v30, p0, v35

    mul-float v41, v41, v3

    aput v41, p0, v33

    mul-float v5, v5, v3

    aput v5, p0, v31

    mul-float v23, v23, v3

    aput v23, p0, v26

    mul-float v37, v37, v3

    aput v37, p0, v15

    mul-float v42, v42, v3

    aput v42, p0, v13

    mul-float v10, v10, v3

    aput v10, p0, v7

    mul-float v28, v28, v3

    aput v28, p0, v24

    mul-float v39, v39, v3

    aput v39, p0, v2

    mul-float v43, v43, v3

    aput v43, p0, v11

    mul-float v22, v22, v3

    aput v22, p0, v16

    mul-float v29, v29, v3

    aput v29, p0, v19

    mul-float v40, v40, v3

    aput v40, p0, v9

    mul-float v21, v21, v3

    aput v21, p0, v4

    mul-float v8, v8, v3

    aput v8, p0, v20

    return v35
.end method

.method public static mul([F[F)V
    .locals 48

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float v3, v1, v2

    const/4 v4, 0x4

    aget v5, p0, v4

    const/4 v6, 0x1

    aget v7, p1, v6

    mul-float v8, v5, v7

    add-float/2addr v3, v8

    const/16 v8, 0x8

    aget v9, p0, v8

    const/4 v10, 0x2

    aget v11, p1, v10

    mul-float v12, v9, v11

    add-float/2addr v3, v12

    const/16 v12, 0xc

    aget v13, p0, v12

    const/4 v14, 0x3

    aget v15, p1, v14

    mul-float v16, v13, v15

    add-float v3, v3, v16

    aget v16, p1, v4

    mul-float v17, v1, v16

    const/16 v18, 0x5

    aget v19, p1, v18

    mul-float v20, v5, v19

    add-float v17, v17, v20

    const/16 v20, 0x6

    aget v21, p1, v20

    mul-float v22, v9, v21

    add-float v17, v17, v22

    const/16 v22, 0x7

    aget v23, p1, v22

    mul-float v24, v13, v23

    add-float v17, v17, v24

    aget v24, p1, v8

    mul-float v25, v1, v24

    const/16 v26, 0x9

    aget v27, p1, v26

    mul-float v28, v5, v27

    add-float v25, v25, v28

    const/16 v28, 0xa

    aget v29, p1, v28

    mul-float v30, v9, v29

    add-float v25, v25, v30

    const/16 v30, 0xb

    aget v31, p1, v30

    mul-float v32, v13, v31

    add-float v25, v25, v32

    aget v32, p1, v12

    mul-float v1, v1, v32

    const/16 v33, 0xd

    aget v34, p1, v33

    mul-float v5, v5, v34

    add-float/2addr v1, v5

    const/16 v5, 0xe

    aget v35, p1, v5

    mul-float v9, v9, v35

    add-float/2addr v1, v9

    const/16 v9, 0xf

    aget v36, p1, v9

    mul-float v13, v13, v36

    add-float/2addr v1, v13

    aget v13, p0, v6

    mul-float v37, v13, v2

    aget v38, p0, v18

    mul-float v39, v38, v7

    add-float v37, v37, v39

    aget v39, p0, v26

    mul-float v40, v39, v11

    add-float v37, v37, v40

    aget v40, p0, v33

    mul-float v41, v40, v15

    add-float v37, v37, v41

    mul-float v41, v13, v16

    mul-float v42, v38, v19

    add-float v41, v41, v42

    mul-float v42, v39, v21

    add-float v41, v41, v42

    mul-float v42, v40, v23

    add-float v41, v41, v42

    mul-float v42, v13, v24

    mul-float v43, v38, v27

    add-float v42, v42, v43

    mul-float v43, v39, v29

    add-float v42, v42, v43

    mul-float v43, v40, v31

    add-float v42, v42, v43

    mul-float v13, v13, v32

    mul-float v38, v38, v34

    add-float v13, v13, v38

    mul-float v39, v39, v35

    add-float v13, v13, v39

    mul-float v40, v40, v36

    add-float v13, v13, v40

    aget v38, p0, v10

    mul-float v39, v38, v2

    aget v40, p0, v20

    mul-float v43, v40, v7

    add-float v39, v39, v43

    aget v43, p0, v28

    mul-float v44, v43, v11

    add-float v39, v39, v44

    aget v44, p0, v5

    mul-float v45, v44, v15

    add-float v39, v39, v45

    mul-float v45, v38, v16

    mul-float v46, v40, v19

    add-float v45, v45, v46

    mul-float v46, v43, v21

    add-float v45, v45, v46

    mul-float v46, v44, v23

    add-float v45, v45, v46

    mul-float v46, v38, v24

    mul-float v47, v40, v27

    add-float v46, v46, v47

    mul-float v47, v43, v29

    add-float v46, v46, v47

    mul-float v47, v44, v31

    add-float v46, v46, v47

    mul-float v38, v38, v32

    mul-float v40, v40, v34

    add-float v38, v38, v40

    mul-float v43, v43, v35

    add-float v38, v38, v43

    mul-float v44, v44, v36

    add-float v38, v38, v44

    aget v40, p0, v14

    mul-float v2, v2, v40

    aget v43, p0, v22

    mul-float v7, v7, v43

    add-float/2addr v2, v7

    aget v7, p0, v30

    mul-float v11, v11, v7

    add-float/2addr v2, v11

    aget v11, p0, v9

    mul-float v15, v15, v11

    add-float/2addr v2, v15

    mul-float v16, v16, v40

    mul-float v19, v19, v43

    add-float v16, v16, v19

    mul-float v21, v21, v7

    add-float v16, v16, v21

    mul-float v23, v23, v11

    add-float v16, v16, v23

    mul-float v24, v24, v40

    mul-float v27, v27, v43

    add-float v24, v24, v27

    mul-float v29, v29, v7

    add-float v24, v24, v29

    mul-float v31, v31, v11

    add-float v24, v24, v31

    mul-float v40, v40, v32

    mul-float v43, v43, v34

    add-float v40, v40, v43

    mul-float v7, v7, v35

    add-float v40, v40, v7

    mul-float v11, v11, v36

    add-float v40, v40, v11

    aput v3, p0, v0

    aput v37, p0, v6

    aput v39, p0, v10

    aput v2, p0, v14

    aput v17, p0, v4

    aput v41, p0, v18

    aput v45, p0, v20

    aput v16, p0, v22

    aput v25, p0, v8

    aput v42, p0, v26

    aput v46, p0, v28

    aput v24, p0, v30

    aput v1, p0, v12

    aput v13, p0, v33

    aput v38, p0, v5

    aput v40, p0, v9

    return-void
.end method

.method public static mulVec([F[F)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    mul-float v2, v2, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x4

    aget v5, p0, v5

    mul-float v5, v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p1, v5

    const/16 v7, 0x8

    aget v7, p0, v7

    mul-float v7, v7, v6

    add-float/2addr v2, v7

    const/16 v7, 0xc

    aget v7, p0, v7

    add-float/2addr v2, v7

    aget v7, p0, v3

    mul-float v7, v7, v1

    const/4 v8, 0x5

    aget v8, p0, v8

    mul-float v8, v8, v4

    add-float/2addr v7, v8

    const/16 v8, 0x9

    aget v8, p0, v8

    mul-float v8, v8, v6

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p0, v8

    add-float/2addr v7, v8

    aget v8, p0, v5

    mul-float v1, v1, v8

    const/4 v8, 0x6

    aget v8, p0, v8

    mul-float v4, v4, v8

    add-float/2addr v1, v4

    const/16 v4, 0xa

    aget v4, p0, v4

    mul-float v6, v6, v4

    add-float/2addr v1, v6

    const/16 v4, 0xe

    aget p0, p0, v4

    add-float/2addr v1, p0

    aput v2, p1, v0

    aput v7, p1, v3

    aput v1, p1, v5

    return-void
.end method

.method public static native mulVec([F[FIII)V
.end method

.method public static prj([F[F)V
    .locals 10

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x3

    aget v2, p0, v2

    mul-float v2, v2, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x7

    aget v5, p0, v5

    mul-float v5, v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p1, v5

    const/16 v7, 0xb

    aget v7, p0, v7

    mul-float v7, v7, v6

    add-float/2addr v2, v7

    const/16 v7, 0xf

    aget v7, p0, v7

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v2

    aget v2, p0, v0

    mul-float v2, v2, v1

    const/4 v8, 0x4

    aget v8, p0, v8

    mul-float v8, v8, v4

    add-float/2addr v2, v8

    const/16 v8, 0x8

    aget v8, p0, v8

    mul-float v8, v8, v6

    add-float/2addr v2, v8

    const/16 v8, 0xc

    aget v8, p0, v8

    add-float/2addr v2, v8

    mul-float v2, v2, v7

    aget v8, p0, v3

    mul-float v8, v8, v1

    const/4 v9, 0x5

    aget v9, p0, v9

    mul-float v9, v9, v4

    add-float/2addr v8, v9

    const/16 v9, 0x9

    aget v9, p0, v9

    mul-float v9, v9, v6

    add-float/2addr v8, v9

    const/16 v9, 0xd

    aget v9, p0, v9

    add-float/2addr v8, v9

    mul-float v8, v8, v7

    aget v9, p0, v5

    mul-float v1, v1, v9

    const/4 v9, 0x6

    aget v9, p0, v9

    mul-float v4, v4, v9

    add-float/2addr v1, v4

    const/16 v4, 0xa

    aget v4, p0, v4

    mul-float v6, v6, v4

    add-float/2addr v1, v6

    const/16 v4, 0xe

    aget p0, p0, v4

    add-float/2addr v1, p0

    mul-float v1, v1, v7

    aput v2, p1, v0

    aput v8, p1, v3

    aput v1, p1, v5

    return-void
.end method

.method public static native prj([F[FIII)V
.end method

.method public static rot([F[F)V
    .locals 9

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    mul-float v2, v2, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    const/4 v5, 0x4

    aget v5, p0, v5

    mul-float v5, v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p1, v5

    const/16 v7, 0x8

    aget v7, p0, v7

    mul-float v7, v7, v6

    add-float/2addr v2, v7

    aget v7, p0, v3

    mul-float v7, v7, v1

    const/4 v8, 0x5

    aget v8, p0, v8

    mul-float v8, v8, v4

    add-float/2addr v7, v8

    const/16 v8, 0x9

    aget v8, p0, v8

    mul-float v8, v8, v6

    add-float/2addr v7, v8

    aget v8, p0, v5

    mul-float v1, v1, v8

    const/4 v8, 0x6

    aget v8, p0, v8

    mul-float v4, v4, v8

    add-float/2addr v1, v4

    const/16 v4, 0xa

    aget p0, p0, v4

    mul-float v6, v6, p0

    add-float/2addr v1, v6

    aput v2, p1, v0

    aput v7, p1, v3

    aput v1, p1, v5

    return-void
.end method

.method public static native rot([F[FIII)V
.end method


# virtual methods
.method public avg(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->b:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Matrix4;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/math/Quaternion;->slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 6

    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v2

    sget-object v5, Lcom/badlogic/gdx/math/Matrix4;->b:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v0

    sget-object v5, Lcom/badlogic/gdx/math/Matrix4;->b:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    aget-object v3, p1, v0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public avg([Lcom/badlogic/gdx/math/Matrix4;[F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v4, p2, v1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v1

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->b:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v4, p2, v1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v1, p2, v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v4, p2, v0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v0

    sget-object v4, Lcom/badlogic/gdx/math/Matrix4;->b:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Matrix4;->getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    aget v4, p2, v0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    aget-object v2, p1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    sget-object p2, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    return-object v0
.end method

.method public det()F
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v2, v1, v2

    const/4 v3, 0x6

    aget v3, v1, v3

    mul-float v4, v2, v3

    const/16 v5, 0x9

    aget v5, v1, v5

    mul-float v4, v4, v5

    const/16 v6, 0xc

    aget v6, v1, v6

    mul-float v4, v4, v6

    const/4 v7, 0x2

    aget v7, v1, v7

    const/4 v8, 0x7

    aget v8, v1, v8

    mul-float v9, v7, v8

    mul-float v9, v9, v5

    mul-float v9, v9, v6

    sub-float/2addr v4, v9

    const/4 v9, 0x5

    aget v9, v1, v9

    mul-float v10, v2, v9

    const/16 v11, 0xa

    aget v11, v1, v11

    mul-float v10, v10, v11

    mul-float v10, v10, v6

    sub-float/2addr v4, v10

    const/4 v10, 0x1

    aget v10, v1, v10

    mul-float v12, v10, v8

    mul-float v12, v12, v11

    mul-float v12, v12, v6

    add-float/2addr v4, v12

    mul-float v12, v7, v9

    const/16 v13, 0xb

    aget v13, v1, v13

    mul-float v12, v12, v13

    mul-float v12, v12, v6

    add-float/2addr v4, v12

    mul-float v12, v10, v3

    mul-float v12, v12, v13

    mul-float v12, v12, v6

    sub-float/2addr v4, v12

    mul-float v6, v2, v3

    const/16 v12, 0x8

    aget v12, v1, v12

    mul-float v6, v6, v12

    const/16 v14, 0xd

    aget v14, v1, v14

    mul-float v6, v6, v14

    sub-float/2addr v4, v6

    mul-float v6, v7, v8

    mul-float v6, v6, v12

    mul-float v6, v6, v14

    add-float/2addr v4, v6

    const/4 v6, 0x4

    aget v6, v1, v6

    mul-float v15, v2, v6

    mul-float v15, v15, v11

    mul-float v15, v15, v14

    add-float/2addr v4, v15

    const/4 v15, 0x0

    aget v15, v1, v15

    mul-float v16, v15, v8

    mul-float v16, v16, v11

    mul-float v16, v16, v14

    sub-float v4, v4, v16

    mul-float v16, v7, v6

    mul-float v16, v16, v13

    mul-float v16, v16, v14

    sub-float v4, v4, v16

    mul-float v16, v15, v3

    mul-float v16, v16, v13

    mul-float v16, v16, v14

    add-float v4, v4, v16

    mul-float v14, v2, v9

    mul-float v14, v14, v12

    const/16 v16, 0xe

    aget v16, v1, v16

    mul-float v14, v14, v16

    add-float/2addr v4, v14

    mul-float v14, v10, v8

    mul-float v14, v14, v12

    mul-float v14, v14, v16

    sub-float/2addr v4, v14

    mul-float v2, v2, v6

    mul-float v2, v2, v5

    mul-float v2, v2, v16

    sub-float/2addr v4, v2

    mul-float v8, v8, v15

    mul-float v8, v8, v5

    mul-float v8, v8, v16

    add-float/2addr v4, v8

    mul-float v2, v10, v6

    mul-float v2, v2, v13

    mul-float v2, v2, v16

    add-float/2addr v4, v2

    mul-float v2, v15, v9

    mul-float v2, v2, v13

    mul-float v2, v2, v16

    sub-float/2addr v4, v2

    mul-float v2, v7, v9

    mul-float v2, v2, v12

    const/16 v8, 0xf

    aget v1, v1, v8

    mul-float v2, v2, v1

    sub-float/2addr v4, v2

    mul-float v2, v10, v3

    mul-float v2, v2, v12

    mul-float v2, v2, v1

    add-float/2addr v4, v2

    mul-float v7, v7, v6

    mul-float v7, v7, v5

    mul-float v7, v7, v1

    add-float/2addr v4, v7

    mul-float v3, v3, v15

    mul-float v3, v3, v5

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    mul-float v10, v10, v6

    mul-float v10, v10, v11

    mul-float v10, v10, v1

    sub-float/2addr v4, v10

    mul-float v15, v15, v9

    mul-float v15, v15, v11

    mul-float v15, v15, v1

    add-float/2addr v4, v15

    return v4
.end method

.method public det3x3()F
    .locals 12

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    mul-float v3, v1, v2

    const/16 v4, 0xa

    aget v4, v0, v4

    mul-float v3, v3, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/16 v6, 0x9

    aget v6, v0, v6

    mul-float v7, v5, v6

    const/4 v8, 0x2

    aget v8, v0, v8

    mul-float v7, v7, v8

    add-float/2addr v3, v7

    const/16 v7, 0x8

    aget v7, v0, v7

    const/4 v9, 0x1

    aget v9, v0, v9

    mul-float v10, v7, v9

    const/4 v11, 0x6

    aget v0, v0, v11

    mul-float v10, v10, v0

    add-float/2addr v3, v10

    mul-float v1, v1, v6

    mul-float v1, v1, v0

    sub-float/2addr v3, v1

    mul-float v5, v5, v9

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    mul-float v7, v7, v2

    mul-float v7, v7, v8

    sub-float/2addr v3, v7

    return v3
.end method

.method public extract4x3Matrix([F)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x2

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x4

    aget v2, v0, v1

    const/4 v3, 0x3

    aput v2, p1, v3

    const/4 v2, 0x5

    aget v3, v0, v2

    aput v3, p1, v1

    const/4 v1, 0x6

    aget v3, v0, v1

    aput v3, p1, v2

    const/16 v2, 0x8

    aget v3, v0, v2

    aput v3, p1, v1

    const/16 v1, 0x9

    aget v3, v0, v1

    const/4 v4, 0x7

    aput v3, p1, v4

    const/16 v3, 0xa

    aget v4, v0, v3

    aput v4, p1, v2

    const/16 v2, 0xc

    aget v2, v0, v2

    aput v2, p1, v1

    const/16 v1, 0xd

    aget v1, v0, v1

    aput v1, p1, v3

    const/16 v1, 0xe

    aget v0, v0, v1

    const/16 v1, 0xb

    aput v0, p1, v1

    return-void
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getRotation(Lcom/badlogic/gdx/math/Quaternion;Z)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0

    invoke-virtual {p1, p2, p0}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getScale(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleY()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZ()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getScaleX()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleXSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public getScaleXSquared()F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    mul-float v1, v1, v1

    const/4 v2, 0x4

    aget v2, v0, v2

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v0, v0, v2

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    return v1
.end method

.method public getScaleY()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleYSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public getScaleYSquared()F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    mul-float v1, v1, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v0, v0, v2

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    return v1
.end method

.method public getScaleZ()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getScaleZSquared()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    return v0
.end method

.method public getScaleZSquared()F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    mul-float v1, v1, v1

    const/4 v2, 0x6

    aget v2, v0, v2

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v0, v0, v2

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    return v1
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v1, v0, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v1, 0xd

    aget v1, v0, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object p1
.end method

.method public getValues()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    return-object v0
.end method

.method public hasRotationOrScaling()Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v0, v0, v4

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v0, v0, v4

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v0, v0, v3

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix4;
    .locals 47

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x3

    aget v3, v1, v2

    const/4 v4, 0x6

    aget v5, v1, v4

    mul-float v6, v3, v5

    const/16 v7, 0x9

    aget v8, v1, v7

    mul-float v6, v6, v8

    const/16 v9, 0xc

    aget v10, v1, v9

    mul-float v6, v6, v10

    const/4 v11, 0x2

    aget v12, v1, v11

    const/4 v13, 0x7

    aget v14, v1, v13

    mul-float v15, v12, v14

    mul-float v15, v15, v8

    mul-float v15, v15, v10

    sub-float/2addr v6, v15

    const/4 v15, 0x5

    aget v16, v1, v15

    mul-float v17, v3, v16

    const/16 v18, 0xa

    aget v19, v1, v18

    mul-float v17, v17, v19

    mul-float v17, v17, v10

    sub-float v6, v6, v17

    const/16 v17, 0x1

    aget v20, v1, v17

    mul-float v21, v20, v14

    mul-float v21, v21, v19

    mul-float v21, v21, v10

    add-float v6, v6, v21

    mul-float v21, v12, v16

    const/16 v22, 0xb

    aget v23, v1, v22

    mul-float v21, v21, v23

    mul-float v21, v21, v10

    add-float v6, v6, v21

    mul-float v21, v20, v5

    mul-float v21, v21, v23

    mul-float v21, v21, v10

    sub-float v6, v6, v21

    mul-float v21, v3, v5

    const/16 v24, 0x8

    aget v25, v1, v24

    mul-float v21, v21, v25

    const/16 v26, 0xd

    aget v27, v1, v26

    mul-float v21, v21, v27

    sub-float v6, v6, v21

    mul-float v21, v12, v14

    mul-float v21, v21, v25

    mul-float v21, v21, v27

    add-float v6, v6, v21

    const/16 v21, 0x4

    aget v28, v1, v21

    mul-float v29, v3, v28

    mul-float v29, v29, v19

    mul-float v29, v29, v27

    add-float v6, v6, v29

    const/16 v29, 0x0

    aget v30, v1, v29

    mul-float v31, v30, v14

    mul-float v31, v31, v19

    mul-float v31, v31, v27

    sub-float v6, v6, v31

    mul-float v31, v12, v28

    mul-float v31, v31, v23

    mul-float v31, v31, v27

    sub-float v6, v6, v31

    mul-float v31, v30, v5

    mul-float v31, v31, v23

    mul-float v31, v31, v27

    add-float v6, v6, v31

    mul-float v31, v3, v16

    mul-float v31, v31, v25

    const/16 v32, 0xe

    aget v33, v1, v32

    mul-float v31, v31, v33

    add-float v6, v6, v31

    mul-float v31, v20, v14

    mul-float v31, v31, v25

    mul-float v31, v31, v33

    sub-float v6, v6, v31

    mul-float v31, v3, v28

    mul-float v31, v31, v8

    mul-float v31, v31, v33

    sub-float v6, v6, v31

    mul-float v31, v30, v14

    mul-float v31, v31, v8

    mul-float v31, v31, v33

    add-float v6, v6, v31

    mul-float v31, v20, v28

    mul-float v31, v31, v23

    mul-float v31, v31, v33

    add-float v6, v6, v31

    mul-float v31, v30, v16

    mul-float v31, v31, v23

    mul-float v31, v31, v33

    sub-float v6, v6, v31

    mul-float v31, v12, v16

    mul-float v31, v31, v25

    const/16 v34, 0xf

    aget v35, v1, v34

    mul-float v31, v31, v35

    sub-float v6, v6, v31

    mul-float v31, v20, v5

    mul-float v31, v31, v25

    mul-float v31, v31, v35

    add-float v6, v6, v31

    mul-float v31, v12, v28

    mul-float v31, v31, v8

    mul-float v31, v31, v35

    add-float v6, v6, v31

    mul-float v31, v30, v5

    mul-float v31, v31, v8

    mul-float v31, v31, v35

    sub-float v6, v6, v31

    mul-float v31, v20, v28

    mul-float v31, v31, v19

    mul-float v31, v31, v35

    sub-float v6, v6, v31

    mul-float v31, v30, v16

    mul-float v31, v31, v19

    mul-float v31, v31, v35

    add-float v6, v6, v31

    const/16 v31, 0x0

    cmpl-float v31, v6, v31

    if-eqz v31, :cond_0

    mul-float v31, v8, v33

    mul-float v31, v31, v14

    mul-float v36, v27, v19

    mul-float v36, v36, v14

    sub-float v31, v31, v36

    mul-float v36, v27, v5

    mul-float v36, v36, v23

    add-float v31, v31, v36

    mul-float v36, v16, v33

    mul-float v36, v36, v23

    sub-float v31, v31, v36

    mul-float v36, v8, v5

    mul-float v36, v36, v35

    sub-float v31, v31, v36

    mul-float v36, v16, v19

    mul-float v36, v36, v35

    add-float v31, v31, v36

    mul-float v36, v10, v19

    mul-float v36, v36, v14

    mul-float v37, v25, v33

    mul-float v37, v37, v14

    sub-float v36, v36, v37

    mul-float v37, v10, v5

    mul-float v37, v37, v23

    sub-float v36, v36, v37

    mul-float v37, v28, v33

    mul-float v37, v37, v23

    add-float v36, v36, v37

    mul-float v37, v25, v5

    mul-float v37, v37, v35

    add-float v36, v36, v37

    mul-float v37, v28, v19

    mul-float v37, v37, v35

    sub-float v36, v36, v37

    mul-float v37, v25, v27

    mul-float v37, v37, v14

    mul-float v38, v10, v8

    mul-float v38, v38, v14

    sub-float v37, v37, v38

    mul-float v38, v10, v16

    mul-float v38, v38, v23

    add-float v37, v37, v38

    mul-float v38, v28, v27

    mul-float v38, v38, v23

    sub-float v37, v37, v38

    mul-float v38, v25, v16

    mul-float v38, v38, v35

    sub-float v37, v37, v38

    mul-float v38, v28, v8

    mul-float v38, v38, v35

    add-float v37, v37, v38

    mul-float v38, v10, v8

    mul-float v38, v38, v5

    mul-float v39, v25, v27

    mul-float v39, v39, v5

    sub-float v38, v38, v39

    mul-float v39, v10, v16

    mul-float v39, v39, v19

    sub-float v38, v38, v39

    mul-float v39, v28, v27

    mul-float v39, v39, v19

    add-float v38, v38, v39

    mul-float v39, v25, v16

    mul-float v39, v39, v33

    add-float v38, v38, v39

    mul-float v39, v28, v8

    mul-float v39, v39, v33

    sub-float v38, v38, v39

    mul-float v39, v27, v19

    mul-float v39, v39, v3

    mul-float v40, v8, v33

    mul-float v40, v40, v3

    sub-float v39, v39, v40

    mul-float v40, v27, v12

    mul-float v40, v40, v23

    sub-float v39, v39, v40

    mul-float v40, v20, v33

    mul-float v40, v40, v23

    add-float v39, v39, v40

    mul-float v40, v8, v12

    mul-float v40, v40, v35

    add-float v39, v39, v40

    mul-float v40, v20, v19

    mul-float v40, v40, v35

    sub-float v39, v39, v40

    mul-float v40, v25, v33

    mul-float v40, v40, v3

    mul-float v41, v10, v19

    mul-float v41, v41, v3

    sub-float v40, v40, v41

    mul-float v41, v10, v12

    mul-float v41, v41, v23

    add-float v40, v40, v41

    mul-float v41, v30, v33

    mul-float v41, v41, v23

    sub-float v40, v40, v41

    mul-float v41, v25, v12

    mul-float v41, v41, v35

    sub-float v40, v40, v41

    mul-float v41, v30, v19

    mul-float v41, v41, v35

    add-float v40, v40, v41

    mul-float v41, v10, v8

    mul-float v41, v41, v3

    mul-float v42, v25, v27

    mul-float v42, v42, v3

    sub-float v41, v41, v42

    mul-float v42, v10, v20

    mul-float v42, v42, v23

    sub-float v41, v41, v42

    mul-float v42, v30, v27

    mul-float v42, v42, v23

    add-float v41, v41, v42

    mul-float v42, v25, v20

    mul-float v42, v42, v35

    add-float v41, v41, v42

    mul-float v42, v30, v8

    mul-float v42, v42, v35

    sub-float v41, v41, v42

    mul-float v42, v25, v27

    mul-float v42, v42, v12

    mul-float v43, v10, v8

    mul-float v43, v43, v12

    sub-float v42, v42, v43

    mul-float v43, v10, v20

    mul-float v43, v43, v19

    add-float v42, v42, v43

    mul-float v43, v30, v27

    mul-float v43, v43, v19

    sub-float v42, v42, v43

    mul-float v43, v25, v20

    mul-float v43, v43, v33

    sub-float v42, v42, v43

    mul-float v43, v30, v8

    mul-float v43, v43, v33

    add-float v42, v42, v43

    mul-float v43, v16, v33

    mul-float v43, v43, v3

    mul-float v44, v27, v5

    mul-float v44, v44, v3

    sub-float v43, v43, v44

    mul-float v44, v27, v12

    mul-float v44, v44, v14

    add-float v43, v43, v44

    mul-float v44, v20, v33

    mul-float v44, v44, v14

    sub-float v43, v43, v44

    mul-float v44, v16, v12

    mul-float v44, v44, v35

    sub-float v43, v43, v44

    mul-float v44, v20, v5

    mul-float v44, v44, v35

    add-float v43, v43, v44

    mul-float v44, v10, v5

    mul-float v44, v44, v3

    mul-float v45, v28, v33

    mul-float v45, v45, v3

    sub-float v44, v44, v45

    mul-float v45, v10, v12

    mul-float v45, v45, v14

    sub-float v44, v44, v45

    mul-float v45, v30, v33

    mul-float v45, v45, v14

    add-float v44, v44, v45

    mul-float v45, v28, v12

    mul-float v45, v45, v35

    add-float v44, v44, v45

    mul-float v45, v30, v5

    mul-float v45, v45, v35

    sub-float v44, v44, v45

    mul-float v45, v28, v27

    mul-float v45, v45, v3

    mul-float v46, v10, v16

    mul-float v46, v46, v3

    sub-float v45, v45, v46

    mul-float v46, v10, v20

    mul-float v46, v46, v14

    add-float v45, v45, v46

    mul-float v46, v30, v27

    mul-float v46, v46, v14

    sub-float v45, v45, v46

    mul-float v46, v28, v20

    mul-float v46, v46, v35

    sub-float v45, v45, v46

    mul-float v46, v30, v16

    mul-float v46, v46, v35

    add-float v45, v45, v46

    mul-float v35, v10, v16

    mul-float v35, v35, v12

    mul-float v46, v28, v27

    mul-float v46, v46, v12

    sub-float v35, v35, v46

    mul-float v10, v10, v20

    mul-float v10, v10, v5

    sub-float v35, v35, v10

    mul-float v27, v27, v30

    mul-float v27, v27, v5

    add-float v35, v35, v27

    mul-float v10, v28, v20

    mul-float v10, v10, v33

    add-float v35, v35, v10

    mul-float v10, v30, v16

    mul-float v10, v10, v33

    sub-float v35, v35, v10

    mul-float v10, v8, v5

    mul-float v10, v10, v3

    mul-float v27, v16, v19

    mul-float v27, v27, v3

    sub-float v10, v10, v27

    mul-float v27, v8, v12

    mul-float v27, v27, v14

    sub-float v10, v10, v27

    mul-float v27, v20, v19

    mul-float v27, v27, v14

    add-float v10, v10, v27

    mul-float v27, v16, v12

    mul-float v27, v27, v23

    add-float v10, v10, v27

    mul-float v27, v20, v5

    mul-float v27, v27, v23

    sub-float v10, v10, v27

    mul-float v27, v28, v19

    mul-float v27, v27, v3

    mul-float v33, v25, v5

    mul-float v33, v33, v3

    sub-float v27, v27, v33

    mul-float v33, v25, v12

    mul-float v33, v33, v14

    add-float v27, v27, v33

    mul-float v33, v30, v19

    mul-float v33, v33, v14

    sub-float v27, v27, v33

    mul-float v33, v28, v12

    mul-float v33, v33, v23

    sub-float v27, v27, v33

    mul-float v33, v30, v5

    mul-float v33, v33, v23

    add-float v27, v27, v33

    mul-float v33, v25, v16

    mul-float v33, v33, v3

    mul-float v46, v28, v8

    mul-float v46, v46, v3

    sub-float v33, v33, v46

    mul-float v3, v25, v20

    mul-float v3, v3, v14

    sub-float v33, v33, v3

    mul-float v3, v30, v8

    mul-float v3, v3, v14

    add-float v33, v33, v3

    mul-float v3, v28, v20

    mul-float v3, v3, v23

    add-float v33, v33, v3

    mul-float v3, v30, v16

    mul-float v3, v3, v23

    sub-float v33, v33, v3

    mul-float v3, v28, v8

    mul-float v3, v3, v12

    mul-float v14, v25, v16

    mul-float v14, v14, v12

    sub-float/2addr v3, v14

    mul-float v25, v25, v20

    mul-float v25, v25, v5

    add-float v3, v3, v25

    mul-float v8, v8, v30

    mul-float v8, v8, v5

    sub-float/2addr v3, v8

    mul-float v28, v28, v20

    mul-float v28, v28, v19

    sub-float v3, v3, v28

    mul-float v30, v30, v16

    mul-float v30, v30, v19

    add-float v3, v3, v30

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v6

    mul-float v31, v31, v5

    aput v31, v1, v29

    mul-float v39, v39, v5

    aput v39, v1, v17

    mul-float v43, v43, v5

    aput v43, v1, v11

    mul-float v10, v10, v5

    aput v10, v1, v2

    mul-float v36, v36, v5

    aput v36, v1, v21

    mul-float v40, v40, v5

    aput v40, v1, v15

    mul-float v44, v44, v5

    aput v44, v1, v4

    mul-float v27, v27, v5

    aput v27, v1, v13

    mul-float v37, v37, v5

    aput v37, v1, v24

    mul-float v41, v41, v5

    aput v41, v1, v7

    mul-float v45, v45, v5

    aput v45, v1, v18

    mul-float v33, v33, v5

    aput v33, v1, v22

    mul-float v38, v38, v5

    aput v38, v1, v9

    mul-float v42, v42, v5

    aput v42, v1, v26

    mul-float v35, v35, v5

    aput v35, v1, v32

    mul-float v3, v3, v5

    aput v3, v1, v34

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "non-invertible matrix"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public lerp(Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float v2, v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->r:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object p1, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p1, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, v1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v1, v1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v5, v2, v2

    mul-float v6, v2, v3

    mul-float v7, v2, v4

    mul-float v2, v2, v1

    mul-float v8, v3, v3

    mul-float v9, v3, v4

    mul-float v3, v3, v1

    mul-float v10, v4, v4

    mul-float v4, v4, v1

    add-float v1, v8, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v1, v1, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v1, v12, v1

    sub-float v13, v6, v4

    mul-float v13, v13, v11

    add-float v14, v7, v3

    mul-float v14, v14, v11

    add-float/2addr v6, v4

    mul-float v6, v6, v11

    add-float/2addr v10, v5

    mul-float v10, v10, v11

    sub-float v4, v12, v10

    sub-float v10, v9, v2

    mul-float v10, v10, v11

    sub-float/2addr v7, v3

    mul-float v7, v7, v11

    add-float/2addr v9, v2

    mul-float v9, v9, v11

    add-float/2addr v5, v8

    mul-float v5, v5, v11

    sub-float/2addr v12, v5

    iget-object v2, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x0

    aget v5, v2, v3

    mul-float v8, v5, v1

    const/4 v11, 0x4

    aget v15, v2, v11

    mul-float v16, v15, v6

    add-float v8, v8, v16

    const/16 v16, 0x8

    aget v17, v2, v16

    mul-float v18, v17, v7

    add-float v8, v8, v18

    mul-float v18, v5, v13

    mul-float v19, v15, v4

    add-float v18, v18, v19

    mul-float v19, v17, v9

    add-float v18, v18, v19

    mul-float v5, v5, v14

    mul-float v15, v15, v10

    add-float/2addr v5, v15

    mul-float v17, v17, v12

    add-float v5, v5, v17

    const/4 v15, 0x1

    aget v17, v2, v15

    mul-float v19, v17, v1

    const/16 v20, 0x5

    aget v21, v2, v20

    mul-float v22, v21, v6

    add-float v19, v19, v22

    const/16 v22, 0x9

    aget v23, v2, v22

    mul-float v24, v23, v7

    add-float v19, v19, v24

    mul-float v24, v17, v13

    mul-float v25, v21, v4

    add-float v24, v24, v25

    mul-float v25, v23, v9

    add-float v24, v24, v25

    mul-float v17, v17, v14

    mul-float v21, v21, v10

    add-float v17, v17, v21

    mul-float v23, v23, v12

    add-float v17, v17, v23

    const/16 v21, 0x2

    aget v23, v2, v21

    mul-float v25, v23, v1

    const/16 v26, 0x6

    aget v27, v2, v26

    mul-float v28, v27, v6

    add-float v25, v25, v28

    const/16 v28, 0xa

    aget v29, v2, v28

    mul-float v30, v29, v7

    add-float v25, v25, v30

    mul-float v30, v23, v13

    mul-float v31, v27, v4

    add-float v30, v30, v31

    mul-float v31, v29, v9

    add-float v30, v30, v31

    mul-float v23, v23, v14

    mul-float v27, v27, v10

    add-float v23, v23, v27

    mul-float v29, v29, v12

    add-float v23, v23, v29

    const/16 v27, 0x3

    aget v29, v2, v27

    mul-float v1, v1, v29

    const/16 v31, 0x7

    aget v32, v2, v31

    mul-float v6, v6, v32

    add-float/2addr v1, v6

    const/16 v6, 0xb

    aget v33, v2, v6

    mul-float v7, v7, v33

    add-float/2addr v1, v7

    mul-float v13, v13, v29

    mul-float v4, v4, v32

    add-float/2addr v13, v4

    mul-float v9, v9, v33

    add-float/2addr v13, v9

    mul-float v29, v29, v14

    mul-float v32, v32, v10

    add-float v29, v29, v32

    mul-float v33, v33, v12

    add-float v29, v29, v33

    aput v8, v2, v3

    aput v19, v2, v15

    aput v25, v2, v21

    aput v1, v2, v27

    aput v18, v2, v11

    aput v24, v2, v20

    aput v30, v2, v26

    aput v13, v2, v31

    aput v5, v2, v16

    aput v17, v2, v22

    aput v23, v2, v28

    aput v29, v2, v6

    return-object v0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public rotateTowardDirection(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/badlogic/gdx/math/Matrix4;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Matrix4;->k:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v5, 0x0

    aget v6, v4, v5

    iget v7, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v8, v6, v7

    const/4 v9, 0x4

    aget v10, v4, v9

    iget v11, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v12, v10, v11

    add-float/2addr v8, v12

    const/16 v12, 0x8

    aget v13, v4, v12

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v14, v13, v3

    add-float/2addr v8, v14

    iget v14, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v15, v6, v14

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v16, v10, v12

    add-float v15, v15, v16

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v16, v13, v1

    add-float v15, v15, v16

    iget v9, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v5, v9

    mul-float v6, v6, v5

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v0, v5

    mul-float v10, v10, v0

    add-float/2addr v6, v10

    iget v0, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v0

    mul-float v13, v13, v2

    add-float/2addr v6, v13

    const/4 v2, 0x1

    aget v10, v4, v2

    mul-float v13, v10, v7

    const/16 v17, 0x5

    aget v18, v4, v17

    mul-float v19, v18, v11

    add-float v13, v13, v19

    const/16 v19, 0x9

    aget v20, v4, v19

    mul-float v21, v20, v3

    add-float v13, v13, v21

    mul-float v21, v10, v14

    mul-float v22, v18, v12

    add-float v21, v21, v22

    mul-float v22, v20, v1

    add-float v21, v21, v22

    neg-float v2, v9

    mul-float v10, v10, v2

    neg-float v2, v5

    mul-float v18, v18, v2

    add-float v10, v10, v18

    neg-float v2, v0

    mul-float v20, v20, v2

    add-float v10, v10, v20

    const/4 v2, 0x2

    aget v18, v4, v2

    mul-float v20, v18, v7

    const/16 v23, 0x6

    aget v24, v4, v23

    mul-float v25, v24, v11

    add-float v20, v20, v25

    const/16 v25, 0xa

    aget v26, v4, v25

    mul-float v27, v26, v3

    add-float v20, v20, v27

    mul-float v27, v18, v14

    mul-float v28, v24, v12

    add-float v27, v27, v28

    mul-float v28, v26, v1

    add-float v27, v27, v28

    neg-float v2, v9

    mul-float v18, v18, v2

    neg-float v2, v5

    mul-float v24, v24, v2

    add-float v18, v18, v24

    neg-float v2, v0

    mul-float v26, v26, v2

    add-float v18, v18, v26

    const/4 v2, 0x3

    aget v24, v4, v2

    mul-float v7, v7, v24

    const/16 v26, 0x7

    aget v29, v4, v26

    mul-float v11, v11, v29

    add-float/2addr v7, v11

    const/16 v11, 0xb

    aget v30, v4, v11

    mul-float v3, v3, v30

    add-float/2addr v7, v3

    mul-float v14, v14, v24

    mul-float v12, v12, v29

    add-float/2addr v14, v12

    mul-float v1, v1, v30

    add-float/2addr v14, v1

    neg-float v1, v9

    mul-float v24, v24, v1

    neg-float v1, v5

    mul-float v29, v29, v1

    add-float v24, v24, v29

    neg-float v0, v0

    mul-float v30, v30, v0

    add-float v24, v24, v30

    const/4 v0, 0x0

    aput v8, v4, v0

    const/4 v0, 0x1

    aput v13, v4, v0

    const/4 v0, 0x2

    aput v20, v4, v0

    aput v7, v4, v2

    const/4 v0, 0x4

    aput v15, v4, v0

    aput v21, v4, v17

    aput v27, v4, v23

    aput v14, v4, v26

    const/16 v0, 0x8

    aput v6, v4, v0

    aput v10, v4, v19

    aput v18, v4, v25

    aput v24, v4, v11

    return-object p0
.end method

.method public rotateTowardTarget(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v3, v2, v3

    sub-float/2addr v1, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v4, 0xd

    aget v4, v2, v4

    sub-float/2addr v3, v4

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0xe

    aget v2, v2, v4

    sub-float/2addr p1, v2

    invoke-virtual {v0, v1, v3, p1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->rotateTowardDirection(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public scale(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float v2, v2, p2

    aput v2, v0, v1

    const/16 v1, 0x8

    aget v2, v0, v1

    mul-float v2, v2, p3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float v2, v2, p2

    aput v2, v0, v1

    const/16 v1, 0x9

    aget v2, v0, v1

    mul-float v2, v2, p3

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x6

    aget v2, v0, v1

    mul-float v2, v2, p2

    aput v2, v0, v1

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float v2, v2, p3

    aput v2, v0, v1

    const/4 v1, 0x3

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 p1, 0x7

    aget v1, v0, p1

    mul-float v1, v1, p2

    aput v1, v0, p1

    const/16 p1, 0xb

    aget p2, v0, p1

    mul-float p2, p2, p3

    aput p2, v0, p1

    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public scl(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    const/4 p1, 0x5

    aget v1, v0, p1

    mul-float v1, v1, p2

    aput v1, v0, p1

    const/16 p1, 0xa

    aget p2, v0, p1

    mul-float p2, p2, p3

    aput p2, v0, p1

    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v2, v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v2, v2, v3

    aput v2, v0, v1

    const/16 v1, 0xa

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 14

    move-object v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p4, v1

    mul-float v3, p5, v1

    mul-float v1, v1, p6

    mul-float v4, p7, v2

    mul-float v5, p7, v3

    mul-float v6, p7, v1

    mul-float v2, v2, p4

    mul-float v7, p4, v3

    mul-float v8, p4, v1

    mul-float v3, v3, p5

    mul-float v9, p5, v1

    mul-float v1, v1, p6

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v11, v3, v1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    const/4 v13, 0x0

    aput v11, v10, v13

    sub-float v11, v7, v6

    const/4 v13, 0x4

    aput v11, v10, v13

    add-float v11, v8, v5

    const/16 v13, 0x8

    aput v11, v10, v13

    const/16 v11, 0xc

    aput p1, v10, v11

    add-float/2addr v7, v6

    const/4 v6, 0x1

    aput v7, v10, v6

    add-float/2addr v1, v2

    sub-float v1, v12, v1

    const/4 v6, 0x5

    aput v1, v10, v6

    sub-float v1, v9, v4

    const/16 v6, 0x9

    aput v1, v10, v6

    const/16 v1, 0xd

    aput p2, v10, v1

    sub-float/2addr v8, v5

    const/4 v1, 0x2

    aput v8, v10, v1

    add-float/2addr v9, v4

    const/4 v1, 0x6

    aput v9, v10, v1

    add-float/2addr v2, v3

    sub-float v1, v12, v2

    const/16 v2, 0xa

    aput v1, v10, v2

    const/16 v1, 0xe

    aput p3, v10, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v10, v1

    const/4 v1, 0x7

    aput v2, v10, v1

    const/16 v1, 0xb

    aput v2, v10, v1

    const/16 v1, 0xf

    aput v12, v10, v1

    return-object v0
.end method

.method public set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 14

    move-object v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p4, v1

    mul-float v3, p5, v1

    mul-float v1, v1, p6

    mul-float v4, p7, v2

    mul-float v5, p7, v3

    mul-float v6, p7, v1

    mul-float v2, v2, p4

    mul-float v7, p4, v3

    mul-float v8, p4, v1

    mul-float v3, v3, p5

    mul-float v9, p5, v1

    mul-float v1, v1, p6

    iget-object v10, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    add-float v11, v3, v1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    mul-float v11, v11, p8

    const/4 v13, 0x0

    aput v11, v10, v13

    sub-float v11, v7, v6

    mul-float v11, v11, p9

    const/4 v13, 0x4

    aput v11, v10, v13

    add-float v11, v8, v5

    mul-float v11, v11, p10

    const/16 v13, 0x8

    aput v11, v10, v13

    const/16 v11, 0xc

    aput p1, v10, v11

    add-float/2addr v7, v6

    mul-float v6, p8, v7

    const/4 v7, 0x1

    aput v6, v10, v7

    add-float/2addr v1, v2

    sub-float v1, v12, v1

    mul-float v1, v1, p9

    const/4 v6, 0x5

    aput v1, v10, v6

    sub-float v1, v9, v4

    mul-float v1, v1, p10

    const/16 v6, 0x9

    aput v1, v10, v6

    const/16 v1, 0xd

    aput p2, v10, v1

    sub-float/2addr v8, v5

    mul-float v1, p8, v8

    const/4 v5, 0x2

    aput v1, v10, v5

    add-float/2addr v9, v4

    mul-float v1, p9, v9

    const/4 v4, 0x6

    aput v1, v10, v4

    add-float/2addr v2, v3

    sub-float v1, v12, v2

    mul-float v1, v1, p10

    const/16 v2, 0xa

    aput v1, v10, v2

    const/16 v1, 0xe

    aput p3, v10, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v10, v1

    const/4 v1, 0x7

    aput v2, v10, v1

    const/16 v1, 0xb

    aput v2, v10, v1

    const/16 v1, 0xf

    aput v12, v10, v1

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    const/4 v3, 0x4

    aput v1, v0, v3

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    const/4 v3, 0x5

    aput v1, v0, v3

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    const/16 v4, 0xc

    aput v1, v0, v4

    iget p1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    const/16 v1, 0xd

    aput p1, v0, v1

    const/16 p1, 0xe

    aput v2, v0, p1

    const/16 p1, 0xf

    aput v3, v0, p1

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    aget v1, p1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    aget v1, p1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    aget v1, p1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v4, 0x8

    aput v2, v0, v4

    const/16 v5, 0x9

    aput v2, v0, v5

    const/16 v5, 0xa

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v0, v5

    const/16 v5, 0xb

    aput v2, v0, v5

    aget v3, p1, v3

    const/16 v5, 0xc

    aput v3, v0, v5

    aget v1, p1, v1

    const/16 v3, 0xd

    aput v1, v0, v3

    const/16 v1, 0xe

    aput v2, v0, v1

    aget p1, p1, v4

    const/16 v1, 0xf

    aput p1, v0, v1

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 0

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set([F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 8

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 11

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v7, p2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v8, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Matrix4;->set(FFFFFFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0x8

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v1, 0x5

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 p2, 0x9

    aput p1, v0, p2

    iget p1, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 p2, 0x2

    aput p1, v0, p2

    iget p1, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 p2, 0x6

    aput p1, v0, p2

    iget p1, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 p2, 0xa

    aput p1, v0, p2

    iget p1, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 p2, 0xc

    aput p1, v0, p2

    iget p1, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 p2, 0xd

    aput p1, v0, p2

    iget p1, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 p2, 0xe

    aput p1, v0, p2

    const/4 p1, 0x3

    const/4 p2, 0x0

    aput p2, v0, p1

    const/4 p1, 0x7

    aput p2, v0, p1

    const/16 p1, 0xb

    aput p2, v0, p1

    const/16 p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v0, p1

    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    const/16 v2, 0xc

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    const/16 v1, 0xd

    aput p1, v0, v1

    return-object p0
.end method

.method public setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x4

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x5

    aget v2, p1, v1

    aput v2, v0, v1

    const/16 v1, 0xc

    aget v2, p1, v1

    aput v2, v0, v1

    const/16 v1, 0xd

    aget p1, p1, v1

    aput p1, v0, v1

    return-object p0
.end method

.method public setFromEulerAngles(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setFromEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Matrix4;->k:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object p1, Lcom/badlogic/gdx/math/Matrix4;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object p2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x0

    aput v2, p2, v3

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aput v2, p2, v3

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v2, 0x8

    aput v1, p2, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x1

    aput v1, p2, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x5

    aput v1, p2, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0x9

    aput p1, p2, v1

    iget p1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float p1, p1

    const/4 v1, 0x2

    aput p1, p2, v1

    iget p1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float p1, p1

    const/4 v1, 0x6

    aput p1, p2, v1

    iget p1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float p1, p1

    const/16 v0, 0xa

    aput p1, p2, v0

    return-object p0
.end method

.method public setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->q:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToLookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    sget-object p2, Lcom/badlogic/gdx/math/Matrix4;->r:Lcom/badlogic/gdx/math/Matrix4;

    iget p3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float p3, p3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v0, v0

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float p1, p1

    invoke-virtual {p2, p3, v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 6

    sub-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v1, v0

    sub-float v3, p4, p3

    div-float/2addr v1, v3

    sub-float v4, p6, p5

    const/high16 v5, -0x40000000    # -2.0f

    div-float/2addr v5, v4

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v0

    add-float/2addr p4, p3

    neg-float p2, p4

    div-float/2addr p2, v3

    add-float/2addr p6, p5

    neg-float p3, p6

    div-float/2addr p3, v4

    iget-object p4, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 p5, 0x0

    aput v2, p4, p5

    const/4 p5, 0x1

    const/4 p6, 0x0

    aput p6, p4, p5

    const/4 p5, 0x2

    aput p6, p4, p5

    const/4 p5, 0x3

    aput p6, p4, p5

    const/4 p5, 0x4

    aput p6, p4, p5

    const/4 p5, 0x5

    aput v1, p4, p5

    const/4 p5, 0x6

    aput p6, p4, p5

    const/4 p5, 0x7

    aput p6, p4, p5

    const/16 p5, 0x8

    aput p6, p4, p5

    const/16 p5, 0x9

    aput p6, p4, p5

    const/16 p5, 0xa

    aput v5, p4, p5

    const/16 p5, 0xb

    aput p6, p4, p5

    const/16 p5, 0xc

    aput p1, p4, p5

    const/16 p1, 0xd

    aput p2, p4, p1

    const/16 p1, 0xe

    aput p3, p4, p1

    const/16 p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p4, p1

    return-object p0
.end method

.method public setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    add-float v2, p1, p3

    add-float v4, p2, p4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setToOrtho2D(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    add-float v2, p1, p3

    add-float v4, p2, p4

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setToProjection(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    float-to-double v0, p3

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float p3, v2

    add-float v0, p2, p1

    sub-float v1, p1, p2

    div-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p2, p2, v2

    mul-float p2, p2, p1

    div-float/2addr p2, v1

    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    div-float p4, p3, p4

    const/4 v1, 0x0

    aput p4, p1, v1

    const/4 p4, 0x1

    const/4 v1, 0x0

    aput v1, p1, p4

    const/4 p4, 0x2

    aput v1, p1, p4

    const/4 p4, 0x3

    aput v1, p1, p4

    const/4 p4, 0x4

    aput v1, p1, p4

    const/4 p4, 0x5

    aput p3, p1, p4

    const/4 p3, 0x6

    aput v1, p1, p3

    const/4 p3, 0x7

    aput v1, p1, p3

    const/16 p3, 0x8

    aput v1, p1, p3

    const/16 p3, 0x9

    aput v1, p1, p3

    const/16 p3, 0xa

    aput v0, p1, p3

    const/16 p3, 0xb

    const/high16 p4, -0x40800000    # -1.0f

    aput p4, p1, p3

    const/16 p3, 0xc

    aput v1, p1, p3

    const/16 p3, 0xd

    aput v1, p1, p3

    const/16 p3, 0xe

    aput p2, p1, p3

    const/16 p2, 0xf

    aput v1, p1, p2

    return-object p0
.end method

.method public setToProjection(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p5, v0

    sub-float v2, p2, p1

    div-float v3, v1, v2

    sub-float v4, p4, p3

    div-float/2addr v1, v4

    add-float/2addr p2, p1

    div-float/2addr p2, v2

    add-float/2addr p4, p3

    div-float/2addr p4, v4

    add-float p1, p6, p5

    sub-float p3, p5, p6

    div-float/2addr p1, p3

    mul-float p6, p6, v0

    mul-float p6, p6, p5

    div-float/2addr p6, p3

    iget-object p3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 p5, 0x0

    aput v3, p3, p5

    const/4 p5, 0x1

    const/4 v0, 0x0

    aput v0, p3, p5

    const/4 p5, 0x2

    aput v0, p3, p5

    const/4 p5, 0x3

    aput v0, p3, p5

    const/4 p5, 0x4

    aput v0, p3, p5

    const/4 p5, 0x5

    aput v1, p3, p5

    const/4 p5, 0x6

    aput v0, p3, p5

    const/4 p5, 0x7

    aput v0, p3, p5

    const/16 p5, 0x8

    aput p2, p3, p5

    const/16 p2, 0x9

    aput p4, p3, p2

    const/16 p2, 0xa

    aput p1, p3, p2

    const/16 p1, 0xb

    const/high16 p2, -0x40800000    # -1.0f

    aput p2, p3, p1

    const/16 p1, 0xc

    aput v0, p3, p1

    const/16 p1, 0xd

    aput v0, p3, p1

    const/16 p1, 0xe

    aput p6, p3, p1

    const/16 p1, 0xf

    aput v0, p3, p1

    return-object p0
.end method

.method public setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(FFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotationRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToRotationRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    return-object p0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->a:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setToScaling(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x5

    aput p2, v0, p1

    const/16 p1, 0xa

    aput p3, v0, p1

    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xa

    aput p1, v0, v1

    return-object p0
.end method

.method public setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 p1, 0xd

    aput p2, v0, p1

    const/16 p1, 0xe

    aput p3, v0, p1

    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v2, 0xc

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v2, 0xd

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xe

    aput p1, v0, v1

    return-object p0
.end method

.method public setToTranslationAndScaling(FFFFFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 p1, 0xd

    aput p2, v0, p1

    const/16 p1, 0xe

    aput p3, v0, p1

    const/4 p1, 0x0

    aput p4, v0, p1

    const/4 p1, 0x5

    aput p5, v0, p1

    const/16 p1, 0xa

    aput p6, v0, p1

    return-object p0
.end method

.method public setToTranslationAndScaling(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v2, 0xc

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v2, 0xd

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xe

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v1, 0x5

    aput p1, v0, v1

    iget p1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 p2, 0xa

    aput p1, v0, p2

    return-object p0
.end method

.method public setToWorld(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/Matrix4;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/math/Matrix4;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object p3, Lcom/badlogic/gdx/math/Matrix4;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    return-object p0
.end method

.method public setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 p1, 0xd

    aput p2, v0, p1

    const/16 p1, 0xe

    aput p3, v0, p1

    return-object p0
.end method

.method public setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v2, 0xc

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v2, 0xd

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v1, 0xe

    aput p1, v0, v1

    return-object p0
.end method

.method public toNormalMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->tra()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x9

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xd

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xe

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tra()Lcom/badlogic/gdx/math/Matrix4;
    .locals 15

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    const/16 v3, 0x8

    aget v4, v0, v3

    const/16 v5, 0xc

    aget v6, v0, v5

    const/16 v7, 0x9

    aget v8, v0, v7

    const/16 v9, 0xd

    aget v10, v0, v9

    const/16 v11, 0xe

    aget v12, v0, v11

    const/4 v13, 0x1

    aget v14, v0, v13

    aput v14, v0, v1

    const/4 v1, 0x2

    aget v14, v0, v1

    aput v14, v0, v3

    const/4 v3, 0x3

    aget v14, v0, v3

    aput v14, v0, v5

    aput v2, v0, v13

    const/4 v2, 0x6

    aget v5, v0, v2

    aput v5, v0, v7

    const/4 v5, 0x7

    aget v7, v0, v5

    aput v7, v0, v9

    aput v4, v0, v1

    aput v8, v0, v2

    const/16 v1, 0xb

    aget v2, v0, v1

    aput v2, v0, v11

    aput v6, v0, v3

    aput v10, v0, v5

    aput v12, v0, v1

    return-object p0
.end method

.method public translate(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0xa

    aget v4, v0, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float v3, v3, p1

    const/4 p1, 0x7

    aget p1, v0, p1

    mul-float p1, p1, p2

    add-float/2addr v3, p1

    const/16 p1, 0xb

    aget p1, v0, p1

    mul-float p1, p1, p3

    add-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public trn(FFF)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/16 p1, 0xd

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    const/16 p1, 0xe

    aget p2, v0, p1

    add-float/2addr p2, p3

    aput p2, v0, p1

    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method
