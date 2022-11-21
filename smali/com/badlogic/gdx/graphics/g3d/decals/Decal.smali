.class public Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C1:I = 0x3

.field public static final C2:I = 0x9

.field public static final C3:I = 0xf

.field public static final C4:I = 0x15

.field public static final SIZE:I = 0x18

.field public static final U1:I = 0x4

.field public static final U2:I = 0xa

.field public static final U3:I = 0x10

.field public static final U4:I = 0x16

.field public static final V1:I = 0x5

.field public static final V2:I = 0xb

.field public static final V3:I = 0x11

.field public static final V4:I = 0x17

.field public static final X1:I = 0x0

.field public static final X2:I = 0x6

.field public static final X3:I = 0xc

.field public static final X4:I = 0x12

.field public static final Y1:I = 0x1

.field public static final Y2:I = 0x7

.field public static final Y3:I = 0xd

.field public static final Y4:I = 0x13

.field public static final Z1:I = 0x2

.field public static final Z2:I = 0x8

.field public static final Z3:I = 0xe

.field public static final Z4:I = 0x14

.field public static i:Lcom/badlogic/gdx/math/Vector3;

.field public static j:Lcom/badlogic/gdx/math/Vector3;

.field public static final k:Lcom/badlogic/gdx/math/Vector3;

.field public static l:Lcom/badlogic/gdx/math/Quaternion;


# instance fields
.field public a:[F

.field public b:Lcom/badlogic/gdx/math/Vector3;

.field public c:Lcom/badlogic/gdx/math/Quaternion;

.field public d:Lcom/badlogic/gdx/math/Vector2;

.field public e:Lcom/badlogic/gdx/graphics/Color;

.field public f:Lcom/badlogic/gdx/math/Vector2;

.field public g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

.field public h:Z

.field public transformationOffset:Lcom/badlogic/gdx/math/Vector2;

.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->i:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->j:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->k:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->l:Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->e:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->e:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    return-void
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object p0

    return-object p0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;-><init>()V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setBlending(II)V

    iget-object p2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    iput p0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p0, p0, p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setColor(FFFF)V

    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;IILcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-direct {v0, p5}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;-><init>(Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setBlending(II)V

    iget-object p2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    iput p0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p0, p0, p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setColor(FFFF)V

    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 2

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    const/16 v1, 0x302

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x303

    :cond_1
    invoke-static {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object p0

    return-object p0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p0, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object p0

    return-object p0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const/16 v3, 0x302

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0x303

    :cond_1
    invoke-static {v0, v1, p0, v3, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v3, v0, v3

    sub-float v0, v3, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v6, 0x1

    aput v3, v4, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v4, v6

    const/4 v6, 0x6

    aput v1, v4, v6

    const/4 v6, 0x7

    aput v3, v4, v6

    const/16 v3, 0x8

    aput v7, v4, v3

    const/16 v3, 0xc

    aput v2, v4, v3

    const/16 v2, 0xd

    aput v0, v4, v2

    const/16 v2, 0xe

    aput v7, v4, v2

    const/16 v2, 0x12

    aput v1, v4, v2

    const/16 v1, 0x13

    aput v0, v4, v1

    const/16 v0, 0x14

    aput v7, v4, v0

    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public b()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    add-float/2addr v5, v2

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v5, v7

    const/4 v7, 0x1

    aget v8, v3, v7

    add-float/2addr v8, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v6

    const/4 v6, 0x2

    aget v9, v3, v6

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v11, v10, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v12, v11, v5

    iget v13, v10, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v14, v13, v9

    add-float/2addr v12, v14

    iget v14, v10, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v15, v14, v8

    sub-float/2addr v12, v15

    aput v12, v3, v4

    mul-float v12, v11, v8

    mul-float v15, v14, v5

    add-float/2addr v12, v15

    iget v15, v10, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v16, v15, v9

    sub-float v12, v12, v16

    aput v12, v3, v7

    mul-float v11, v11, v9

    mul-float v12, v15, v8

    add-float/2addr v11, v12

    mul-float v12, v13, v5

    sub-float/2addr v11, v12

    aput v11, v3, v6

    neg-float v3, v15

    mul-float v3, v3, v5

    mul-float v13, v13, v8

    sub-float/2addr v3, v13

    mul-float v14, v14, v9

    sub-float/2addr v3, v14

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v8, v5, v4

    aget v9, v5, v7

    aget v10, v5, v6

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v12, v11, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v13, v3, v12

    iget v14, v11, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v15, v8, v14

    add-float/2addr v13, v15

    iget v15, v11, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v16, v9, v15

    add-float v13, v13, v16

    iget v6, v11, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v17, v10, v6

    sub-float v13, v13, v17

    aput v13, v5, v4

    mul-float v13, v3, v6

    mul-float v17, v9, v14

    add-float v13, v13, v17

    mul-float v17, v10, v12

    add-float v13, v13, v17

    mul-float v17, v8, v15

    sub-float v13, v13, v17

    aput v13, v5, v7

    mul-float v3, v3, v15

    mul-float v10, v10, v14

    add-float/2addr v3, v10

    mul-float v8, v8, v6

    add-float/2addr v3, v8

    mul-float v9, v9, v12

    sub-float/2addr v3, v9

    const/4 v6, 0x2

    aput v3, v5, v6

    invoke-virtual {v11}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v5, v3, v4

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v2

    add-float/2addr v5, v8

    aput v5, v3, v4

    aget v4, v3, v7

    iget v5, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v7

    const/4 v4, 0x2

    aget v5, v3, v4

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x6

    aget v5, v3, v4

    add-float/2addr v5, v2

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v5, v8

    const/4 v8, 0x7

    aget v9, v3, v8

    add-float/2addr v9, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v9, v9, v6

    const/16 v6, 0x8

    aget v10, v3, v6

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v12, v11, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v13, v12, v5

    iget v14, v11, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v15, v14, v10

    add-float/2addr v13, v15

    iget v15, v11, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v16, v15, v9

    sub-float v13, v13, v16

    aput v13, v3, v4

    mul-float v13, v12, v9

    mul-float v16, v15, v5

    add-float v13, v13, v16

    iget v7, v11, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v17, v7, v10

    sub-float v13, v13, v17

    aput v13, v3, v8

    mul-float v12, v12, v10

    mul-float v13, v7, v9

    add-float/2addr v12, v13

    mul-float v13, v14, v5

    sub-float/2addr v12, v13

    aput v12, v3, v6

    neg-float v3, v7

    mul-float v3, v3, v5

    mul-float v14, v14, v9

    sub-float/2addr v3, v14

    mul-float v15, v15, v10

    sub-float/2addr v3, v15

    invoke-virtual {v11}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v7, v5, v4

    aget v9, v5, v8

    aget v10, v5, v6

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v12, v11, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v13, v3, v12

    iget v14, v11, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v15, v7, v14

    add-float/2addr v13, v15

    iget v15, v11, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v17, v9, v15

    add-float v13, v13, v17

    iget v6, v11, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v18, v10, v6

    sub-float v13, v13, v18

    aput v13, v5, v4

    mul-float v13, v3, v6

    mul-float v18, v9, v14

    add-float v13, v13, v18

    mul-float v18, v10, v12

    add-float v13, v13, v18

    mul-float v18, v7, v15

    sub-float v13, v13, v18

    aput v13, v5, v8

    mul-float v3, v3, v15

    mul-float v10, v10, v14

    add-float/2addr v3, v10

    mul-float v7, v7, v6

    add-float/2addr v3, v7

    mul-float v9, v9, v12

    sub-float/2addr v3, v9

    const/16 v6, 0x8

    aput v3, v5, v6

    invoke-virtual {v11}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v5, v3, v4

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v7, v2

    add-float/2addr v5, v7

    aput v5, v3, v4

    aget v4, v3, v8

    iget v5, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v8

    const/16 v4, 0x8

    aget v5, v3, v4

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/16 v4, 0xc

    aget v5, v3, v4

    add-float/2addr v5, v2

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v5, v7

    const/16 v7, 0xd

    aget v8, v3, v7

    add-float/2addr v8, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v6

    const/16 v6, 0xe

    aget v9, v3, v6

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v11, v10, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v12, v11, v5

    iget v13, v10, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v14, v13, v9

    add-float/2addr v12, v14

    iget v14, v10, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v15, v14, v8

    sub-float/2addr v12, v15

    aput v12, v3, v4

    mul-float v12, v11, v8

    mul-float v15, v14, v5

    add-float/2addr v12, v15

    iget v15, v10, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v17, v15, v9

    sub-float v12, v12, v17

    aput v12, v3, v7

    mul-float v11, v11, v9

    mul-float v12, v15, v8

    add-float/2addr v11, v12

    mul-float v12, v13, v5

    sub-float/2addr v11, v12

    aput v11, v3, v6

    neg-float v3, v15

    mul-float v3, v3, v5

    mul-float v13, v13, v8

    sub-float/2addr v3, v13

    mul-float v14, v14, v9

    sub-float/2addr v3, v14

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v8, v5, v4

    aget v9, v5, v7

    aget v10, v5, v6

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v12, v11, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v13, v3, v12

    iget v14, v11, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v15, v8, v14

    add-float/2addr v13, v15

    iget v15, v11, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v17, v9, v15

    add-float v13, v13, v17

    iget v6, v11, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v18, v10, v6

    sub-float v13, v13, v18

    aput v13, v5, v4

    mul-float v13, v3, v6

    mul-float v18, v9, v14

    add-float v13, v13, v18

    mul-float v18, v10, v12

    add-float v13, v13, v18

    mul-float v18, v8, v15

    sub-float v13, v13, v18

    aput v13, v5, v7

    mul-float v3, v3, v15

    mul-float v10, v10, v14

    add-float/2addr v3, v10

    mul-float v8, v8, v6

    add-float/2addr v3, v8

    mul-float v9, v9, v12

    sub-float/2addr v3, v9

    const/16 v6, 0xe

    aput v3, v5, v6

    invoke-virtual {v11}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v5, v3, v4

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v2

    add-float/2addr v5, v8

    aput v5, v3, v4

    aget v4, v3, v7

    iget v5, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v7

    const/16 v4, 0xe

    aget v5, v3, v4

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/16 v4, 0x12

    aget v5, v3, v4

    add-float/2addr v5, v2

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v5, v7

    const/16 v7, 0x13

    aget v8, v3, v7

    add-float/2addr v8, v1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v6

    const/16 v6, 0x14

    aget v9, v3, v6

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v11, v10, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v12, v11, v5

    iget v13, v10, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v14, v13, v9

    add-float/2addr v12, v14

    iget v14, v10, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v15, v14, v8

    sub-float/2addr v12, v15

    aput v12, v3, v4

    mul-float v12, v11, v8

    mul-float v15, v14, v5

    add-float/2addr v12, v15

    iget v15, v10, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v17, v15, v9

    sub-float v12, v12, v17

    aput v12, v3, v7

    mul-float v11, v11, v9

    mul-float v12, v15, v8

    add-float/2addr v11, v12

    mul-float v12, v13, v5

    sub-float/2addr v11, v12

    aput v11, v3, v6

    neg-float v3, v15

    mul-float v3, v3, v5

    mul-float v13, v13, v8

    sub-float/2addr v3, v13

    mul-float v14, v14, v9

    sub-float/2addr v3, v14

    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v8, v5, v4

    aget v9, v5, v7

    aget v10, v5, v6

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    iget v12, v11, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v13, v3, v12

    iget v14, v11, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v15, v8, v14

    add-float/2addr v13, v15

    iget v15, v11, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v17, v9, v15

    add-float v13, v13, v17

    iget v6, v11, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v18, v10, v6

    sub-float v13, v13, v18

    aput v13, v5, v4

    mul-float v13, v3, v6

    mul-float v18, v9, v14

    add-float v13, v13, v18

    mul-float v18, v10, v12

    add-float v13, v13, v18

    mul-float v18, v8, v15

    sub-float v13, v13, v18

    aput v13, v5, v7

    mul-float v3, v3, v15

    mul-float v10, v10, v14

    add-float/2addr v3, v10

    mul-float v8, v8, v6

    add-float/2addr v3, v8

    mul-float v9, v9, v12

    sub-float/2addr v3, v9

    const/16 v6, 0x14

    aput v3, v5, v6

    invoke-virtual {v11}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    aget v5, v3, v4

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v2

    add-float/2addr v5, v8

    aput v5, v3, v4

    aget v2, v3, v7

    iget v4, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v4, v1

    add-float/2addr v2, v4

    aput v2, v3, v7

    const/16 v1, 0x14

    aget v2, v3, v1

    iget v4, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, v4

    aput v2, v3, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v2

    const/4 v3, 0x5

    aput v2, v1, v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    const/16 v3, 0xa

    aput v2, v1, v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v2

    const/16 v3, 0xb

    aput v2, v1, v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v2

    const/16 v3, 0x10

    aput v2, v1, v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    const/16 v3, 0x11

    aput v2, v1, v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v2

    const/16 v3, 0x16

    aput v2, v1, v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v0

    const/16 v2, 0x17

    aput v0, v1, v2

    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->e:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getRotation()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getVertices()[F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return v0
.end method

.method public lookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->k:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    return-void
.end method

.method public rotateX(F)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->l:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->l:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public rotateY(F)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->l:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->l:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public rotateZ(F)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->l:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->l:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setBlending(II)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->b:I

    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->c:I

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->e:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    shl-int/lit8 p4, p4, 0x18

    mul-float p3, p3, v0

    float-to-int p3, p3

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, p4

    mul-float p2, p2, v0

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    mul-float p1, p1, v0

    float-to-int p1, p1

    or-int/2addr p1, p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    const/4 p3, 0x3

    aput p1, p2, p3

    const/16 p3, 0x9

    aput p1, p2, p3

    const/16 p3, 0xf

    aput p1, p2, p3

    const/16 p3, 0x15

    aput p1, p2, p3

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->e:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    const/16 v1, 0x9

    aput p1, v0, v1

    const/16 v1, 0xf

    aput p1, v0, v1

    const/16 v1, 0x15

    aput p1, v0, v1

    return-void
.end method

.method public setDimensions(FF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setHeight(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setMaterial(Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    return-void
.end method

.method public setPackedColor(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->e:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->a:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    const/16 v1, 0x9

    aput p1, v0, v1

    const/16 v1, 0xf

    aput p1, v0, v1

    const/16 v1, 0x15

    aput p1, v0, v1

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setRotation(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setRotation(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 10

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->j:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    sget-object p2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->i:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->j:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setRotationX(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setRotationY(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->c:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->g:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->d()V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->f:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setX(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setY(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public setZ(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public translate(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public translateX(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public translateY(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method

.method public translateZ(F)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->b:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->h:Z

    return-void
.end method
