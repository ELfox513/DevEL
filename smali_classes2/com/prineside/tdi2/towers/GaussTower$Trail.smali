.class public Lcom/prineside/tdi2/towers/GaussTower$Trail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/towers/GaussTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trail"
.end annotation


# static fields
.field public static m:F = 0.6f

.field public static n:F = 8000.0f

.field public static o:F = 18.0f

.field public static p:F = 4.0f


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Lcom/badlogic/gdx/math/Vector2;

.field public e:Lcom/badlogic/gdx/math/Vector2;

.field public f:Lcom/badlogic/gdx/math/Vector2;

.field public g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public h:[F

.field public i:I

.field public j:I

.field public k:[F

.field public l:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->d:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->e:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->f:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->h:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->k:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->l:[F

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/towers/GaussTower$Trail;FFFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/towers/GaussTower$Trail;->f(FFFF)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/towers/GaussTower$Trail;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/towers/GaussTower$Trail;->d(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/towers/GaussTower$Trail;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/towers/GaussTower$Trail;->e()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final d(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    iget v0, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->c:F

    sget v1, Lcom/prineside/tdi2/towers/GaussTower$Trail;->m:F

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3d2aaaab

    sub-float/2addr v0, v2

    sub-float v0, v1, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->j:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v4, v4, p2

    iget-object v5, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->k:[F

    aget v5, v5, v2

    mul-float v4, v4, v5

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v3, p2

    mul-float v3, v3, v5

    iget-object v6, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->l:[F

    aget v7, v6, v2

    mul-float v5, v5, p2

    add-float/2addr v7, v5

    aput v7, v6, v2

    const/4 v5, 0x0

    iget v6, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->b:F

    cmpg-float v6, v7, v6

    if-gez v6, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/towers/GaussTower;->f()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget-object v6, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->h:[F

    mul-int/lit8 v7, v2, 0x14

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Lcom/prineside/tdi2/towers/GaussTower;->f()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iput v0, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {}, Lcom/prineside/tdi2/towers/GaussTower;->f()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    :cond_1
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    mul-int/lit8 v7, v2, 0x14

    mul-int/lit8 v8, v6, 0x5

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->h:[F

    aget v9, v8, v7

    add-float/2addr v9, v4

    aput v9, v8, v7

    add-int/lit8 v9, v7, 0x1

    aget v10, v8, v9

    add-float/2addr v10, v3

    aput v10, v8, v9

    add-int/lit8 v7, v7, 0x2

    aput v5, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->h:[F

    iget v3, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->i:I

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    iget p1, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->c:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->c:F

    return-void
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->c:F

    sget v1, Lcom/prineside/tdi2/towers/GaussTower$Trail;->m:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(FFFF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->e:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->f:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->rotate90(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    sget v6, Lcom/prineside/tdi2/towers/GaussTower$Trail;->p:F

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-static/range {p1 .. p4}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->a:F

    const/4 v5, 0x0

    iput v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->c:F

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "particle-default-long"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v5

    iput-object v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->a:F

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v5

    iget v6, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->a:F

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v6

    const v7, -0x3f666666    # -4.8f

    mul-float v8, v5, v7

    const v9, -0x3e666666    # -19.2f

    mul-float v10, v6, v9

    sub-float v10, v8, v10

    mul-float v7, v7, v6

    mul-float v9, v9, v5

    add-float/2addr v9, v7

    const v11, 0x4199999a    # 19.2f

    mul-float v12, v6, v11

    sub-float/2addr v8, v12

    mul-float v11, v11, v5

    add-float/2addr v7, v11

    const v13, 0x4099999a    # 4.8f

    mul-float v5, v5, v13

    sub-float/2addr v5, v12

    mul-float v6, v6, v13

    add-float/2addr v6, v11

    sub-float v11, v5, v8

    add-float/2addr v11, v10

    sub-float v12, v7, v9

    sub-float v12, v6, v12

    add-float/2addr v10, v13

    add-float/2addr v8, v13

    add-float/2addr v5, v13

    add-float/2addr v11, v13

    iget-object v13, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v13

    iget-object v14, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v14

    iget-object v15, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v15

    iget-object v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sget-object v16, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v16

    const/16 v4, 0x14

    new-array v2, v4, [F

    const/16 v17, 0x0

    aput v10, v2, v17

    const/4 v10, 0x1

    aput v9, v2, v10

    const/4 v9, 0x2

    aput v16, v2, v9

    const/4 v9, 0x3

    aput v13, v2, v9

    const/4 v9, 0x4

    aput v14, v2, v9

    const/16 v18, 0x5

    aput v8, v2, v18

    const/4 v8, 0x6

    aput v7, v2, v8

    const/4 v7, 0x7

    aput v16, v2, v7

    const/16 v7, 0x8

    aput v13, v2, v7

    const/16 v7, 0x9

    aput v3, v2, v7

    const/16 v7, 0xa

    aput v5, v2, v7

    const/16 v5, 0xb

    aput v6, v2, v5

    const/16 v5, 0xc

    aput v16, v2, v5

    const/16 v5, 0xd

    aput v15, v2, v5

    const/16 v5, 0xe

    aput v3, v2, v5

    const/16 v3, 0xf

    aput v11, v2, v3

    const/16 v3, 0x10

    aput v12, v2, v3

    const/16 v3, 0x11

    aput v16, v2, v3

    const/16 v3, 0x12

    aput v15, v2, v3

    const/16 v3, 0x13

    aput v14, v2, v3

    invoke-static/range {p1 .. p4}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v3

    iput v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->b:F

    const/high16 v5, 0x43000000    # 128.0f

    div-float/2addr v3, v5

    sget v5, Lcom/prineside/tdi2/towers/GaussTower$Trail;->o:F

    mul-float v3, v3, v5

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v3

    iput v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->j:I

    mul-int/lit8 v3, v3, 0x14

    iput v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->i:I

    iget-object v4, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->h:[F

    array-length v4, v4

    if-ge v4, v3, :cond_0

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->h:[F

    :cond_0
    iget-object v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->k:[F

    array-length v3, v3

    iget v4, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->j:I

    if-ge v3, v4, :cond_1

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->k:[F

    iget v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->j:I

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->l:[F

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->j:I

    if-ge v3, v5, :cond_3

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v5

    invoke-static {}, Lcom/prineside/tdi2/towers/GaussTower;->f()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const v7, -0xbfff01

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    const v12, 0x3e4ccccd    # 0.2f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lcom/badlogic/gdx/graphics/Color;->lerp(FFFFF)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Lcom/prineside/tdi2/towers/GaussTower;->f()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    iget-object v8, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->f:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v11, v11, v7

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v7

    iget-object v7, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->e:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v12, v12, v5

    add-float/2addr v12, v1

    add-float/2addr v12, v11

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v7, v7, v5

    add-float v7, p2, v7

    add-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v8, v9, :cond_2

    iget-object v13, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->h:[F

    add-int/lit8 v14, v4, 0x1

    add-int/lit8 v15, v11, 0x1

    aget v11, v2, v11

    add-float/2addr v11, v12

    aput v11, v13, v4

    add-int/lit8 v4, v14, 0x1

    add-int/lit8 v11, v15, 0x1

    aget v15, v2, v15

    add-float/2addr v15, v7

    aput v15, v13, v14

    add-int/lit8 v14, v4, 0x1

    aput v6, v13, v4

    add-int/2addr v11, v10

    add-int/lit8 v4, v14, 0x1

    add-int/lit8 v15, v11, 0x1

    aget v11, v2, v11

    aput v11, v13, v14

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v14, v15, 0x1

    aget v15, v2, v15

    aput v15, v13, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v11

    move v11, v14

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->k:[F

    sget v7, Lcom/prineside/tdi2/towers/GaussTower$Trail;->n:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v8

    const v11, 0x3f666666    # 0.9f

    mul-float v8, v8, v11

    const v11, 0x3dcccccd    # 0.1f

    add-float/2addr v8, v11

    mul-float v7, v7, v8

    aput v7, v6, v3

    iget-object v6, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->l:[F

    iget v7, v0, Lcom/prineside/tdi2/towers/GaussTower$Trail;->b:F

    mul-float v5, v5, v7

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
