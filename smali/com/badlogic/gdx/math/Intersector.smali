.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;,
        Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    }
.end annotation


# static fields
.field public static final a:Lcom/badlogic/gdx/math/Vector3;

.field public static final b:Lcom/badlogic/gdx/math/Vector3;

.field public static final c:Lcom/badlogic/gdx/math/Vector3;

.field public static final d:Lcom/badlogic/gdx/utils/FloatArray;

.field public static final e:Lcom/badlogic/gdx/utils/FloatArray;

.field public static final f:Lcom/badlogic/gdx/math/Vector2;

.field public static final g:Lcom/badlogic/gdx/math/Vector2;

.field public static final h:Lcom/badlogic/gdx/math/Vector2;

.field public static final i:Lcom/badlogic/gdx/math/Vector2;

.field public static final j:Lcom/badlogic/gdx/math/Vector2;

.field public static k:Lcom/badlogic/gdx/math/Vector2;

.field public static l:Lcom/badlogic/gdx/math/Vector2;

.field public static m:Lcom/badlogic/gdx/math/Vector2;

.field public static n:Lcom/badlogic/gdx/math/Vector2;

.field public static final o:Lcom/badlogic/gdx/math/Plane;

.field public static final p:Lcom/badlogic/gdx/math/Vector3;

.field public static final q:Lcom/badlogic/gdx/math/Vector3;

.field public static final r:Lcom/badlogic/gdx/math/Vector3;

.field public static s:Lcom/badlogic/gdx/math/Vector3;

.field public static t:Lcom/badlogic/gdx/math/Vector3;

.field public static u:Lcom/badlogic/gdx/math/Vector3;

.field public static v:Lcom/badlogic/gdx/math/Vector3;

.field public static w:Lcom/badlogic/gdx/math/Vector3;

.field public static x:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->a:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->b:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->d:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/utils/FloatArray;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->f:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->g:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->h:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->j:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->l:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->m:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->n:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->o:Lcom/badlogic/gdx/math/Plane;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->q:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->r:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->x:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z
    .locals 16

    move-object/from16 v0, p6

    add-int v1, p1, p2

    add-int v2, p4, p5

    move/from16 v3, p1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_14

    aget v5, p0, v3

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    add-int/lit8 v7, v3, 0x2

    rem-int v8, v7, p2

    aget v8, p0, v8

    add-int/lit8 v3, v3, 0x3

    rem-int v3, v3, p2

    aget v3, p0, v3

    sub-float/2addr v6, v3

    sub-float/2addr v5, v8

    neg-float v3, v5

    mul-float v5, v6, v6

    mul-float v8, v3, v3

    add-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    div-float/2addr v6, v5

    div-float/2addr v3, v5

    const v5, -0x800001

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v9, p1

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    const v11, -0x800001

    :goto_1
    if-ge v9, v1, :cond_0

    aget v12, p0, v9

    mul-float v12, v12, v6

    add-int/lit8 v13, v9, 0x1

    aget v13, p0, v13

    mul-float v13, v13, v3

    add-float/2addr v12, v13

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_0
    move/from16 v9, p4

    :goto_2
    if-ge v9, v2, :cond_1

    aget v12, p3, v9

    mul-float v12, v12, v6

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    mul-float v13, v13, v3

    add-float/2addr v12, v13

    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    cmpg-float v12, v11, v8

    if-ltz v12, :cond_13

    cmpg-float v12, v5, v10

    if-gez v12, :cond_2

    goto/16 :goto_f

    :cond_2
    if-eqz v0, :cond_12

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v13

    sub-float/2addr v12, v13

    cmpg-float v13, v10, v8

    if-gez v13, :cond_3

    cmpl-float v13, v11, v5

    if-lez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    cmpg-float v14, v8, v10

    if-gez v14, :cond_4

    cmpl-float v14, v5, v11

    if-lez v14, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    const/4 v15, 0x0

    if-nez v13, :cond_6

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    sub-float v15, v10, v8

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v11

    add-float/2addr v12, v11

    :goto_6
    iget v11, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_12

    iput v12, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    if-eqz p7, :cond_a

    cmpg-float v8, v10, v8

    if-gez v8, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_8

    goto :goto_8

    :cond_8
    neg-float v6, v6

    :goto_8
    if-eqz v8, :cond_9

    goto :goto_b

    :cond_9
    neg-float v3, v3

    goto :goto_b

    :cond_a
    cmpl-float v8, v10, v8

    if-lez v8, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_c

    goto :goto_a

    :cond_c
    neg-float v6, v6

    :goto_a
    if-eqz v8, :cond_9

    :goto_b
    if-nez v13, :cond_d

    if-eqz v14, :cond_11

    :cond_d
    cmpl-float v5, v15, v5

    if-lez v5, :cond_e

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_f

    goto :goto_d

    :cond_f
    neg-float v6, v6

    :goto_d
    if-eqz v4, :cond_10

    goto :goto_e

    :cond_10
    neg-float v3, v3

    :cond_11
    :goto_e
    iget-object v4, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v6, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_12
    move v3, v7

    goto/16 :goto_0

    :cond_13
    :goto_f
    return v9

    :cond_14
    return v4
.end method

.method public static b([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .locals 8

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->x:Lcom/badlogic/gdx/math/Vector3;

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result p4

    add-int/lit8 v0, p6, 0x0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->x:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, p5, v0

    add-int/lit8 v0, p6, 0x1

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, p5, v0

    add-int/lit8 v0, p6, 0x2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p5, v0

    const/4 v0, 0x3

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    aget v1, p0, v1

    add-int v2, p2, v0

    aget v2, p0, v2

    add-int v3, p6, v0

    sub-float/2addr v2, v1

    mul-float v2, v2, p4

    add-float/2addr v1, v2

    aput v1, p5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static distanceLinePoint(FFFFFF)F
    .locals 2

    sub-float/2addr p2, p0

    mul-float v0, p2, p2

    sub-float/2addr p3, p1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p4, p0

    mul-float p4, p4, p3

    sub-float/2addr p5, p1

    mul-float p5, p5, p2

    sub-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static distanceSegmentPoint(FFFFFF)F
    .locals 7

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result p0

    return p0
.end method

.method public static distanceSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p0

    return p0
.end method

.method public static intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v0, v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p0

    sub-float/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Plane;)Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-static {v0, p0, v1, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectBoundsPlaneFast(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p0

    return p0
.end method

.method public static intersectFrustumBounds(Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/badlogic/gdx/math/Frustum;->planePoints:[Lcom/badlogic/gdx/math/Vector3;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    sget-object p4, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p4, p1, p2

    if-eqz p4, :cond_1

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p4

    add-float/2addr p2, p4

    neg-float p2, p2

    div-float/2addr p2, p1

    if-eqz p7, :cond_0

    invoke-virtual {p7, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return p2

    :cond_1
    invoke-virtual {p6, p0}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object p1

    sget-object p3, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne p1, p3, :cond_3

    if-eqz p7, :cond_2

    invoke-virtual {p7, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    return p2

    :cond_3
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static intersectLinePolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    array-length v5, v2

    add-int/lit8 v6, v5, -0x2

    aget v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    aget v10, v2, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    sub-float v12, v11, v7

    sub-float v13, v4, v3

    mul-float v13, v13, v12

    sub-float v14, v10, v6

    sub-float v15, v1, v0

    mul-float v15, v15, v14

    sub-float/2addr v13, v15

    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_0

    sub-float v7, v0, v7

    sub-float v6, v3, v6

    mul-float v14, v14, v7

    mul-float v12, v12, v6

    sub-float/2addr v14, v12

    div-float/2addr v14, v13

    cmpl-float v6, v14, v15

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v14, v6

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v9, v9, 0x2

    move v6, v10

    move v7, v11

    goto :goto_0

    :cond_1
    return v8
.end method

.method public static intersectLines(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 2

    sub-float/2addr p7, p5

    sub-float/2addr p2, p0

    mul-float v0, p7, p2

    sub-float/2addr p6, p4

    sub-float/2addr p3, p1

    mul-float v1, p6, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p8, :cond_1

    sub-float p5, p1, p5

    mul-float p6, p6, p5

    sub-float p4, p0, p4

    mul-float p7, p7, p4

    sub-float/2addr p6, p7

    div-float/2addr p6, v0

    mul-float p2, p2, p6

    add-float/2addr p0, p2

    mul-float p3, p3, p6

    add-float/2addr p1, p3

    invoke-virtual {p8, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, p2

    sub-float/2addr v1, v0

    mul-float v4, p3, v1

    sub-float/2addr v3, v2

    sub-float/2addr p1, p0

    mul-float v5, v3, p1

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    sub-float p2, p0, p2

    mul-float v3, v3, p2

    sub-float p2, v0, v2

    mul-float p3, p3, p2

    sub-float/2addr v3, p3

    div-float/2addr v3, v4

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    mul-float p1, p1, v3

    add-float/2addr p0, p1

    invoke-virtual {p4, v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectPlanes(Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p2, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    iget p0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr p1, v1

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr p1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    iget v3, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p0, p2

    iget p2, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p0, p2

    invoke-virtual {p3, p1, v2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    const/4 p0, 0x1

    return p0
.end method

.method public static intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v2, -0x2

    iget v3, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, -0x2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v4, v0, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_0
    if-gt v15, v2, :cond_2

    aget v16, v0, v15

    add-int/lit8 v7, v15, 0x1

    aget v17, v0, v7

    aget v7, v1, v3

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    move v11, v7

    move v12, v8

    const/4 v14, 0x0

    :goto_1
    if-gt v14, v3, :cond_1

    aget v18, v1, v14

    add-int/lit8 v7, v14, 0x1

    aget v19, v1, v7

    const/16 v20, 0x0

    move v7, v4

    move v8, v5

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v13, v18

    move/from16 v21, v14

    move/from16 v14, v19

    move/from16 v22, v15

    move-object/from16 v15, v20

    invoke-static/range {v7 .. v15}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v14, v21, 0x2

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v15, v22

    goto :goto_1

    :cond_1
    move/from16 v22, v15

    add-int/lit8 v15, v22, 0x2

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_0

    :cond_2
    return v6
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 16

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->f:Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->g:Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->h:Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->j:Lcom/badlogic/gdx/math/Vector2;

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->d:Lcom/badlogic/gdx/utils/FloatArray;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([F)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x1

    if-gt v12, v10, :cond_9

    aget v14, v9, v12

    add-int/lit8 v15, v12, 0x1

    aget v15, v9, v15

    invoke-virtual {v3, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-ge v12, v10, :cond_1

    add-int/lit8 v14, v12, 0x2

    aget v14, v9, v14

    add-int/lit8 v15, v12, 0x3

    aget v15, v9, v15

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    :cond_1
    aget v14, v9, v2

    aget v15, v9, v13

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_1
    iget v14, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v14, :cond_2

    return v2

    :cond_2
    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v15, v13

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    invoke-virtual {v5, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 v14, 0x0

    :goto_2
    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v14, v15, :cond_8

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v6, v15, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v4, v3, v5}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v4, v3, v6}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v15

    if-lez v15, :cond_6

    if-nez v2, :cond_5

    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    iget v2, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v2, v11, :cond_4

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_4

    iget v2, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v2, v13

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_5

    :cond_4
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :cond_5
    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :cond_7
    :goto_4
    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v2, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v14, v14, 0x2

    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    add-int/lit8 v12, v12, 0x2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    iget v1, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    iget v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ne v1, v2, :cond_a

    iget-object v1, v8, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v0

    iget v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->toArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    :cond_b
    :goto_5
    return v13

    :cond_c
    const/4 v3, 0x0

    return v3

    :cond_d
    :goto_6
    const/4 v3, 0x0

    return v3
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-static {v0, v3, v1, v4, v2}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v4, v2, v3

    aget v2, v2, v5

    invoke-static {v0, v3, v1, v4, v2}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    :cond_1
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z

    move-result p0

    return p0
.end method

.method public static intersectRayBounds(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x0

    cmpg-float v5, v2, v3

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v7, v6, v4

    if-lez v7, :cond_2

    sub-float/2addr v3, v2

    div-float/2addr v3, v6

    cmpl-float v2, v3, v4

    if-ltz v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_2

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v5, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    iget v5, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v6, v2, v5

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v8, v7, v4

    if-gez v8, :cond_4

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    cmpl-float v2, v5, v4

    if-ltz v2, :cond_4

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_4

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_4

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_4

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_4

    if-eqz v0, :cond_3

    cmpg-float v2, v5, v3

    if-gez v2, :cond_4

    :cond_3
    move v3, v5

    const/4 v0, 0x1

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v6, v2, v5

    if-gtz v6, :cond_6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v8, v7, v4

    if-lez v8, :cond_6

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    cmpl-float v2, v5, v4

    if-ltz v2, :cond_6

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_6

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_6

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_6

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_6

    if-eqz v0, :cond_5

    cmpg-float v2, v5, v3

    if-gez v2, :cond_6

    :cond_5
    move v3, v5

    const/4 v0, 0x1

    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v6, v2, v5

    if-ltz v6, :cond_8

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v8, v7, v4

    if-gez v8, :cond_8

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    cmpl-float v2, v5, v4

    if-ltz v2, :cond_8

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_8

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_8

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_8

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_8

    if-eqz v0, :cond_7

    cmpg-float v2, v5, v3

    if-gez v2, :cond_8

    :cond_7
    move v3, v5

    const/4 v0, 0x1

    :cond_8
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v6, v2, v5

    if-gtz v6, :cond_a

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v8, v7, v4

    if-lez v8, :cond_a

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    cmpl-float v2, v5, v4

    if-ltz v2, :cond_a

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_a

    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_a

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_a

    iget v6, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_a

    if-eqz v0, :cond_9

    cmpg-float v2, v5, v3

    if-gez v2, :cond_a

    :cond_9
    move v3, v5

    const/4 v0, 0x1

    :cond_a
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v6, v2, v5

    if-ltz v6, :cond_c

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v8, v7, v4

    if-gez v8, :cond_c

    sub-float/2addr v5, v2

    div-float/2addr v5, v7

    cmpl-float v2, v5, v4

    if-ltz v2, :cond_c

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v6, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_c

    iget-object v7, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_c

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_c

    iget v4, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_c

    if-eqz v0, :cond_b

    cmpg-float v2, v5, v3

    if-gez v2, :cond_c

    :cond_b
    move v3, v5

    goto :goto_1

    :cond_c
    move v1, v0

    :goto_1
    if-eqz v1, :cond_12

    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, p0, v2

    if-gez v3, :cond_d

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_2

    :cond_d
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float p0, p0, v2

    if-lez p0, :cond_e

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    :cond_e
    :goto_2
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, p0, v2

    if-gez v3, :cond_f

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_3

    :cond_f
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float p0, p0, v2

    if-lez p0, :cond_10

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    :cond_10
    :goto_3
    iget p0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, p0, v0

    if-gez v2, :cond_11

    iput v0, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_4

    :cond_11
    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_12

    iput p1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    :cond_12
    :goto_4
    return v1
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v3, v2, v3

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v2, v0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v4, v5

    sub-float v6, v0, v6

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v1

    mul-float v4, v4, v5

    add-float/2addr v0, v4

    sub-float/2addr v0, v7

    mul-float v0, v0, v1

    cmpl-float v1, v6, v0

    if-lez v1, :cond_0

    move v9, v6

    move v6, v0

    move v0, v9

    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v7, v4, v5

    sub-float v7, v1, v7

    iget v8, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v7, v8

    mul-float v7, v7, v3

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    sub-float/2addr v1, v8

    mul-float v1, v1, v3

    cmpl-float v3, v7, v1

    if-lez v3, :cond_1

    move v9, v7

    move v7, v1

    move v1, v9

    :cond_1
    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v3, p2, v5

    sub-float v3, p1, v3

    iget p0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, p0

    mul-float v3, v3, v2

    mul-float p2, p2, v5

    add-float/2addr p1, p2

    sub-float/2addr p1, p0

    mul-float p1, p1, v2

    cmpl-float p0, v3, p1

    if-lez p0, :cond_2

    move v9, v3

    move v3, p1

    move p1, v9

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_3

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p0

    return p0
.end method

.method public static intersectRayOrientedBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 13

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Matrix4;->getTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v2, v2, v7

    invoke-virtual {v1, v4, v6, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x358637bd    # 1.0E-6f

    const/4 v7, 0x0

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v4, v2

    div-float/2addr v4, v1

    iget-object v9, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v9

    div-float/2addr v2, v1

    cmpl-float v1, v4, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v12, v4

    move v4, v2

    move v2, v12

    :goto_0
    cmpg-float v1, v4, v8

    if-gez v1, :cond_1

    move v8, v4

    :cond_1
    cmpl-float v1, v2, v7

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    cmpg-float v1, v8, v2

    if-gez v1, :cond_5

    return v3

    :cond_3
    neg-float v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v1

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_10

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const/4 v2, 0x0

    :cond_5
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v9, 0x4

    aget v9, v4, v9

    const/4 v10, 0x5

    aget v10, v4, v10

    const/4 v11, 0x6

    aget v4, v4, v11

    invoke-virtual {v1, v9, v10, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v6

    if-lez v9, :cond_9

    iget-object v9, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v9, v4

    div-float/2addr v9, v1

    iget-object v10, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v4, v10

    div-float/2addr v4, v1

    cmpl-float v1, v9, v4

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    move v12, v9

    move v9, v4

    move v4, v12

    :goto_2
    cmpg-float v1, v9, v8

    if-gez v1, :cond_7

    move v8, v9

    :cond_7
    cmpl-float v1, v4, v2

    if-lez v1, :cond_8

    move v2, v4

    :cond_8
    cmpl-float v1, v2, v8

    if-lez v1, :cond_a

    return v3

    :cond_9
    neg-float v1, v4

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v4, v1

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_10

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, v4

    cmpg-float v1, v1, v7

    if-gez v1, :cond_a

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    iget-object p2, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0x8

    aget v4, p2, v4

    const/16 v9, 0x9

    aget v9, p2, v9

    const/16 v10, 0xa

    aget p2, p2, v10

    invoke-virtual {v1, v4, v9, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_e

    iget-object v0, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, p2

    div-float/2addr v0, p0

    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p2, p1

    div-float/2addr p2, p0

    cmpl-float p0, v0, p2

    if-lez p0, :cond_b

    goto :goto_3

    :cond_b
    move v12, v0

    move v0, p2

    move p2, v12

    :goto_3
    cmpg-float p0, v0, v8

    if-gez p0, :cond_c

    move v8, v0

    :cond_c
    cmpl-float p0, p2, v2

    if-lez p0, :cond_d

    move v2, p2

    :cond_d
    cmpl-float p0, v2, v8

    if-lez p0, :cond_f

    return v3

    :cond_e
    neg-float p0, p2

    iget-object p2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p2, p0

    cmpl-float p2, p2, v7

    if-gtz p2, :cond_10

    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p0, p1

    cmpg-float p0, p0, v7

    if-gez p0, :cond_f

    goto :goto_4

    :cond_f
    return v5

    :cond_10
    :goto_4
    return v3
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p1

    add-float/2addr v4, p1

    neg-float p1, v4

    div-float/2addr p1, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->a:Lcom/badlogic/gdx/math/Vector3;

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public static intersectRayRay(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 2

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, p0

    iget p0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float p0, p0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float p1, p1, p3

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_0

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    :cond_0
    div-float/2addr p3, p0

    div-float/2addr v1, p0

    mul-float v0, v0, v1

    mul-float p2, p2, p3

    sub-float/2addr v0, p2

    return v0
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v4, v2

    invoke-virtual {v0, v1, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v5, v5, v0

    add-float/2addr v3, v5

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v4, v4, v0

    add-float/2addr v2, v4

    invoke-virtual {p1, v3, v5, v2}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result p1

    mul-float p2, p2, p2

    cmpl-float v2, p1, p2

    if-lez v2, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->o:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Intersector;->isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return v5

    :cond_1
    return v6

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    div-float p3, p2, v3

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    mul-float v2, v2, p3

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_8

    cmpl-float v4, v2, p2

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    mul-float v0, v0, p3

    cmpg-float v4, v0, v3

    if-ltz v4, :cond_8

    add-float/2addr v2, v0

    cmpl-float p2, v2, p2

    if-lez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    mul-float p1, p1, p3

    cmpg-float p2, p1, v3

    if-gez p2, :cond_5

    return v6

    :cond_5
    if-eqz p4, :cond_7

    const p2, 0x358637bd    # 1.0E-6f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_6

    iget-object p0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p4, p1}, Lcom/badlogic/gdx/math/collision/Ray;->getEndPoint(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    :cond_7
    :goto_0
    return v5

    :cond_8
    :goto_1
    return v6
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/math/Vector3;

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangle list size is not a multiple of 3"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 11

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x9

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    aget v6, p1, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x2

    aget v8, p1, v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v7, v2, 0x3

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x4

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x5

    aget v9, p1, v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v8, v2, 0x6

    aget v8, p1, v8

    add-int/lit8 v9, v2, 0x7

    aget v9, p1, v9

    add-int/lit8 v10, v2, 0x8

    aget v10, p1, v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangles array size is not a multiple of 9"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 11

    array-length v0, p2

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    aget-short v4, p2, v2

    mul-int v4, v4, p3

    add-int/lit8 v6, v2, 0x1

    aget-short v6, p2, v6

    mul-int v6, v6, p3

    add-int/lit8 v7, v2, 0x2

    aget-short v7, p2, v7

    mul-int v7, v7, p3

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v4

    add-int/lit8 v10, v4, 0x1

    aget v10, p1, v10

    add-int/lit8 v4, v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v8, v9, v10, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p1, v10

    add-int/lit8 v6, v6, 0x2

    aget v6, p1, v6

    invoke-virtual {v8, v9, v10, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    aget v9, p1, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p1, v10

    add-int/lit8 v7, v7, 0x2

    aget v7, p1, v7

    invoke-virtual {v8, v9, v10, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v4, v6, v7, v8}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move v1, v4

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v0

    :cond_2
    if-eqz p4, :cond_3

    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p4, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    :cond_3
    return v5

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "triangle list size is not a multiple of 3"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, p0

    iget p0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p1, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p0, p1

    iput p0, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->l:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p2, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->l:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->m:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->m:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->n:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->m:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->n:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->m:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v2, v3

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    if-eqz p3, :cond_3

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->n:Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p0, p1

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->n:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iget p0, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    goto :goto_1

    :cond_2
    iget-object p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iget p0, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result p1

    sub-float/2addr p0, p1

    iput p0, p3, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    :cond_3
    :goto_1
    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->k:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result p0

    iget p1, p2, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float p1, p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->u:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_0

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, p0, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    sget-object p0, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->w:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p0

    invoke-virtual {p1, v1, v0, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    :goto_0
    iget p0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->v:Lcom/badlogic/gdx/math/Vector3;

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr p0, v0

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p2, p1

    mul-float p0, p0, p0

    mul-float p2, p2, p2

    add-float/2addr p0, p2

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result p2

    add-float/2addr v3, p2

    neg-float p2, v3

    div-float/2addr p2, v0

    cmpg-float v0, p2, v2

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static intersectSegmentPolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    array-length v5, v2

    add-int/lit8 v6, v5, -0x2

    aget v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    aget v10, v2, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    sub-float v12, v11, v7

    sub-float v13, v4, v3

    mul-float v14, v12, v13

    sub-float v15, v10, v6

    sub-float v16, v1, v0

    mul-float v17, v15, v16

    sub-float v14, v14, v17

    const/16 v17, 0x0

    cmpl-float v18, v14, v17

    if-eqz v18, :cond_0

    sub-float v7, v0, v7

    sub-float v6, v3, v6

    mul-float v15, v15, v7

    mul-float v12, v12, v6

    sub-float/2addr v15, v12

    div-float/2addr v15, v14

    cmpl-float v12, v15, v17

    if-ltz v12, :cond_0

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v12

    if-gtz v15, :cond_0

    mul-float v13, v13, v7

    mul-float v16, v16, v6

    sub-float v13, v13, v16

    div-float/2addr v13, v14

    cmpl-float v6, v13, v17

    if-ltz v6, :cond_0

    cmpg-float v6, v13, v12

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v9, v9, 0x2

    move v6, v10

    move v7, v11

    goto :goto_0

    :cond_1
    return v8
.end method

.method public static intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z
    .locals 19

    move-object/from16 v0, p4

    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v17, v7, v1

    iget v6, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v18, v6, v1

    const/4 v9, 0x0

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v5, v7

    move/from16 v8, v18

    invoke-static/range {v1 .. v9}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v12, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v15, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/16 v16, 0x0

    move/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move v13, v15

    move/from16 v14, v17

    invoke-static/range {v8 .. v16}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget v13, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/16 v16, 0x0

    move/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, v17

    move/from16 v14, v17

    move/from16 v15, v18

    invoke-static/range {v8 .. v16}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v12, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/16 v16, 0x0

    move/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v13, v18

    move/from16 v14, v17

    move/from16 v15, v18

    invoke-static/range {v8 .. v16}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    move/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public static intersectSegmentRectangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, p0, v1, p1, p2}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z

    move-result p0

    return p0
.end method

.method public static intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 4

    sub-float/2addr p7, p5

    sub-float/2addr p2, p0

    mul-float v0, p7, p2

    sub-float/2addr p6, p4

    sub-float/2addr p3, p1

    mul-float v1, p6, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    sub-float p5, p1, p5

    sub-float p4, p0, p4

    mul-float p6, p6, p5

    mul-float p7, p7, p4

    sub-float/2addr p6, p7

    div-float/2addr p6, v0

    cmpg-float p7, p6, v2

    if-ltz p7, :cond_4

    const/high16 p7, 0x3f800000    # 1.0f

    cmpl-float v3, p6, p7

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    mul-float p5, p5, p2

    mul-float p4, p4, p3

    sub-float/2addr p5, p4

    div-float/2addr p5, v0

    cmpg-float p4, p5, v2

    if-ltz p4, :cond_4

    cmpl-float p4, p5, p7

    if-lez p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p8, :cond_3

    mul-float p2, p2, p6

    add-float/2addr p0, p2

    mul-float p3, p3, p6

    add-float/2addr p1, p3

    invoke-virtual {p8, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p3, p2

    sub-float/2addr v1, v0

    mul-float v4, p3, v1

    sub-float/2addr v3, v2

    sub-float/2addr p1, p0

    mul-float v5, v3, p1

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_0

    return v5

    :cond_0
    sub-float p2, p0, p2

    sub-float v2, v0, v2

    mul-float v3, v3, p2

    mul-float p3, p3, v2

    sub-float/2addr v3, p3

    div-float/2addr v3, v4

    cmpg-float p3, v3, v6

    if-ltz p3, :cond_4

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v7, v3, p3

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    mul-float p2, p2, v1

    mul-float v2, v2, p1

    sub-float/2addr p2, v2

    div-float/2addr p2, v4

    cmpg-float v2, p2, v6

    if-ltz v2, :cond_4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    mul-float p1, p1, v3

    add-float/2addr p0, p1

    invoke-virtual {p4, v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v5
.end method

.method public static isPointInPolygon(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v6, v5, p1

    if-gez v6, :cond_0

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, p1

    if-gez v6, :cond_1

    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v6, v6, p1

    if-gez v6, :cond_2

    cmpl-float v6, v5, p1

    if-ltz v6, :cond_2

    :cond_1
    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v7, p1, v5

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v8, v5

    div-float/2addr v7, v8

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v6

    mul-float v7, v7, v0

    add-float/2addr v6, v7

    cmpg-float v0, v6, v1

    if-gez v0, :cond_2

    xor-int/lit8 v0, v3, 0x1

    move v3, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static isPointInPolygon([FIIFF)Z
    .locals 7

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x3

    add-int/2addr p1, p2

    const/4 p2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, p1, :cond_3

    aget v4, p0, v2

    cmpg-float v5, v4, p4

    if-gez v5, :cond_0

    cmpl-float v5, v3, p4

    if-gez v5, :cond_1

    :cond_0
    cmpg-float v5, v3, p4

    if-gez v5, :cond_2

    cmpl-float v5, v4, p4

    if-ltz v5, :cond_2

    :cond_1
    add-int/lit8 v5, v2, -0x1

    aget v5, p0, v5

    sub-float v6, p4, v4

    sub-float/2addr v3, v4

    div-float/2addr v6, v3

    add-int/lit8 v3, v2, -0x3

    aget v3, p0, v3

    sub-float/2addr v3, v5

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    cmpg-float v3, v5, p3

    if-gez v3, :cond_2

    xor-int/lit8 p2, p2, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    move v3, v4

    goto :goto_0

    :cond_3
    cmpg-float p1, v1, p4

    if-gez p1, :cond_4

    cmpl-float p1, v3, p4

    if-gez p1, :cond_5

    :cond_4
    cmpg-float p1, v3, p4

    if-gez p1, :cond_6

    cmpl-float p1, v1, p4

    if-ltz p1, :cond_6

    :cond_5
    sub-float/2addr p4, v1

    sub-float/2addr v3, v1

    div-float/2addr p4, v3

    add-int/lit8 v2, v2, -0x3

    aget p0, p0, v2

    sub-float/2addr p0, v0

    mul-float p4, p4, p0

    add-float/2addr v0, p4

    cmpg-float p0, v0, p3

    if-gez p0, :cond_6

    xor-int/lit8 p2, p2, 0x1

    :cond_6
    return p2
.end method

.method public static isPointInTriangle(FFFFFFFF)Z
    .locals 6

    sub-float v0, p0, p2

    sub-float v1, p1, p3

    sub-float v2, p4, p2

    mul-float v2, v2, v1

    sub-float v3, p5, p3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-float p2, p6, p2

    mul-float p2, p2, v1

    sub-float p3, p7, p3

    mul-float p3, p3, v0

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne p2, v2, :cond_2

    return v5

    :cond_2
    sub-float/2addr p6, p4

    sub-float/2addr p1, p5

    mul-float p6, p6, p1

    sub-float/2addr p7, p5

    sub-float/2addr p0, p4

    mul-float p7, p7, p0

    sub-float/2addr p6, p7

    cmpl-float p0, p6, v3

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-eq p0, v2, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 10

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v2, v0, v1

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, p0, p1

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v5, v4, v1

    mul-float v5, v5, v3

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v6, p2, p1

    mul-float v6, v6, v2

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget v9, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, v9, v1

    mul-float v1, v1, v3

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float p1, p3, p1

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    cmpl-float p1, v1, v6

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p1, v5, :cond_2

    return v8

    :cond_2
    sub-float/2addr v9, v4

    sub-float/2addr p0, p2

    mul-float v9, v9, p0

    sub-float/2addr p3, p2

    sub-float/2addr v0, v4

    mul-float p3, p3, v0

    sub-float/2addr v9, p3

    cmpl-float p0, v9, v6

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-eq p0, v5, :cond_4

    return v8

    :cond_4
    return v7
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->a:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object p1, Lcom/badlogic/gdx/math/Intersector;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/math/Intersector;->c:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    invoke-virtual {p2, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p2

    mul-float v1, v0, p3

    mul-float p2, p2, p0

    sub-float/2addr v1, p2

    const/4 p2, 0x0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    mul-float p0, p0, v0

    mul-float p3, p3, p1

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_0
    sub-float/2addr p4, p0

    mul-float p4, p4, v0

    sub-float/2addr p5, p1

    mul-float p5, p5, v1

    add-float/2addr p4, p5

    div-float/2addr p4, v2

    cmpg-float p5, p4, v3

    if-gtz p5, :cond_1

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    cmpl-float p5, p4, p5

    if-ltz p5, :cond_2

    invoke-virtual {p6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_2
    mul-float v0, v0, p4

    add-float/2addr p0, v0

    mul-float p4, p4, v1

    add-float/2addr p1, p4

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_0
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v5, v4, v3

    mul-float v2, v2, v5

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v5

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v6, v5

    mul-float p2, p2, v7

    add-float/2addr v2, p2

    div-float/2addr v2, v0

    cmpg-float p2, v2, v1

    if-gtz p2, :cond_1

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v2, p0

    if-ltz p0, :cond_2

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0

    :cond_2
    sub-float/2addr v4, v3

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v6, v5

    mul-float v2, v2, v6

    add-float/2addr v5, v2

    invoke-virtual {p3, v3, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    return-object p0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 9

    if-eqz p6, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    iget-object v0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    :cond_0
    const/4 v8, 0x1

    move-object v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/math/Intersector;->a([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/badlogic/gdx/math/Intersector;->a([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;Z)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_3

    if-eqz p6, :cond_2

    const/4 p0, 0x0

    iput p0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    iget-object p0, p6, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 7

    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result p0

    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result p0

    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v4, v2, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    add-float/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v4, v3, p1

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    add-float/2addr v3, p1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    sub-float/2addr v2, v0

    mul-float v2, v2, v2

    sub-float/2addr v3, v1

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    iget p0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float p0, p0, p0

    cmpg-float p0, v2, p0

    if-gez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result p0

    return p0
.end method

.method public static pointLineSide(FFFFFF)I
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p5, p1

    mul-float p2, p2, p5

    sub-float/2addr p3, p1

    sub-float/2addr p4, p0

    mul-float p3, p3, p4

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, p0

    mul-float v0, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, p0

    iget p0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr p0, v1

    mul-float p1, p1, p0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    array-length v0, v7

    const/4 v1, 0x3

    div-int/lit8 v10, v0, 0x3

    const/4 v11, 0x0

    aget v0, v7, v11

    const/4 v12, 0x1

    aget v2, v7, v12

    const/4 v13, 0x2

    aget v3, v7, v13

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    add-int/lit8 v0, v10, 0x0

    aget v0, v7, v0

    add-int/lit8 v3, v10, 0x1

    aget v3, v7, v3

    add-int/lit8 v4, v10, 0x2

    aget v4, v7, v4

    invoke-virtual {v8, v0, v3, v4}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    if-ne v0, v2, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    mul-int/lit8 v6, v10, 0x2

    add-int/lit8 v0, v6, 0x0

    aget v0, v7, v0

    add-int/lit8 v3, v6, 0x1

    aget v3, v7, v3

    add-int/lit8 v4, v6, 0x2

    aget v4, v7, v4

    invoke-virtual {v8, v0, v3, v4}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    if-ne v0, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->c()V

    if-ne v14, v15, :cond_4

    if-ne v15, v5, :cond_4

    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    if-eqz v14, :cond_3

    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_3
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-void

    :cond_4
    iput v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    xor-int/lit8 v0, v14, 0x1

    xor-int/lit8 v2, v15, 0x1

    add-int/2addr v0, v2

    xor-int/lit8 v2, v5, 0x1

    add-int/2addr v0, v2

    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v1, v0

    iput v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    xor-int/lit8 v0, v14, 0x1

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->d(Z)V

    if-eq v14, v15, :cond_5

    iget-object v4, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    const/16 v16, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move v3, v10

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    move v13, v5

    move-object/from16 v5, v17

    move/from16 v18, v6

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->b([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    invoke-virtual {v9, v7, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->b()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->d(Z)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    goto :goto_4

    :cond_5
    move v13, v5

    move/from16 v18, v6

    invoke-virtual {v9, v7, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    :goto_4
    add-int v6, v10, v10

    if-eq v15, v13, :cond_6

    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v6

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v16, v6

    move v6, v15

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->b([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    invoke-virtual {v9, v7, v10, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->b()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->d(Z)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    goto :goto_5

    :cond_6
    move/from16 v16, v6

    invoke-virtual {v9, v7, v10, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    :goto_5
    const/4 v2, 0x0

    if-eq v13, v14, :cond_7

    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v3, v10

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->b([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    move/from16 v0, v16

    invoke-virtual {v9, v7, v0, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->b()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->d(Z)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    goto :goto_6

    :cond_7
    move/from16 v0, v16

    invoke-virtual {v9, v7, v0, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->a([FII)V

    :goto_6
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v1, v10, 0x3

    move/from16 v2, v18

    invoke-static {v0, v2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v1, v10, 0x5

    invoke-static {v0, v11, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_8
    move/from16 v2, v18

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v1, v10, 0x3

    invoke-static {v0, v2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v1, v10, 0x5

    invoke-static {v0, v11, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    return-void
.end method
