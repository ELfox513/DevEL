.class public Lcom/prineside/tdi2/shapes/Circle;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/Circle$CircleFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/math/Vector2;

.field public static final w:Lcom/badlogic/gdx/math/Vector2;

.field public static final x:Lcom/badlogic/gdx/math/Vector2;

.field public static final y:Lcom/badlogic/gdx/math/Vector2;

.field public static final z:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:[F

.field public b:I

.field public d:F

.field public k:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public final t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final u:F

.field public final v:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/Circle;->w:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/Circle;->x:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/Circle;->y:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/Circle;->z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/Circle;->A:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/Circle;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v1, v4

    add-float/2addr v3, v1

    iput v3, p0, Lcom/prineside/tdi2/shapes/Circle;->u:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/shapes/Circle;->v:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/Circle$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/Circle;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    mul-int/lit8 p1, p1, 0x14

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    new-array p1, p1, [F

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 12

    iget v0, p0, Lcom/prineside/tdi2/shapes/Circle;->b:I

    int-to-float v0, v0

    const v1, 0x40c90fdb

    div-float/2addr v1, v0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/shapes/Circle;->b:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/shapes/Circle;->A:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    int-to-float v4, v0

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/prineside/tdi2/shapes/Circle;->w:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v5, p0, Lcom/prineside/tdi2/shapes/Circle;->p:F

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v5, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    iget v6, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/prineside/tdi2/shapes/Circle;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v6, p0, Lcom/prineside/tdi2/shapes/Circle;->q:F

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v6, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    iget v7, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v5, Lcom/prineside/tdi2/shapes/Circle;->x:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v7, p0, Lcom/prineside/tdi2/shapes/Circle;->p:F

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v7, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    iget v8, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lcom/prineside/tdi2/shapes/Circle;->z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v7, p0, Lcom/prineside/tdi2/shapes/Circle;->q:F

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v7, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    iget v8, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    mul-int/lit8 v2, v0, 0x14

    iget-object v7, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    iget v8, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v7, v2

    add-int/lit8 v8, v2, 0x1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v7, v8

    add-int/lit8 v3, v2, 0x2

    iget v8, p0, Lcom/prineside/tdi2/shapes/Circle;->r:F

    aput v8, v7, v3

    add-int/lit8 v3, v2, 0x3

    iget v9, p0, Lcom/prineside/tdi2/shapes/Circle;->u:F

    aput v9, v7, v3

    add-int/lit8 v3, v2, 0x4

    iget v10, p0, Lcom/prineside/tdi2/shapes/Circle;->v:F

    aput v10, v7, v3

    add-int/lit8 v3, v2, 0x5

    iget v11, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v11, v7, v3

    add-int/lit8 v3, v2, 0x6

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v5, v7, v3

    add-int/lit8 v3, v2, 0x7

    aput v8, v7, v3

    add-int/lit8 v3, v2, 0x8

    aput v9, v7, v3

    add-int/lit8 v3, v2, 0x9

    aput v10, v7, v3

    add-int/lit8 v3, v2, 0xa

    iget v5, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v5, v7, v3

    add-int/lit8 v3, v2, 0xb

    iget v5, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v5, v7, v3

    add-int/lit8 v3, v2, 0xc

    iget v5, p0, Lcom/prineside/tdi2/shapes/Circle;->s:F

    aput v5, v7, v3

    add-int/lit8 v3, v2, 0xd

    aput v9, v7, v3

    add-int/lit8 v3, v2, 0xe

    aput v10, v7, v3

    add-int/lit8 v3, v2, 0xf

    iget v6, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v6, v7, v3

    add-int/lit8 v3, v2, 0x10

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v7, v3

    add-int/lit8 v3, v2, 0x11

    aput v5, v7, v3

    add-int/lit8 v3, v2, 0x12

    aput v9, v7, v3

    add-int/lit8 v2, v2, 0x13

    aput v10, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/Circle;->t:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    iget v2, p0, Lcom/prineside/tdi2/shapes/Circle;->b:I

    mul-int/lit8 v2, v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public free()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->CIRCLE:Lcom/prineside/tdi2/shapes/Circle$CircleFactory;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    return-void
.end method

.method public getInnerColor()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/Circle;->r:F

    return v0
.end method

.method public getOuterColor()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/Circle;->s:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setColor(FF)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/shapes/Circle;->b:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x14

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    add-int/lit8 v3, v1, 0x2

    aput p1, v2, v3

    add-int/lit8 v3, v1, 0x7

    aput p1, v2, v3

    add-int/lit8 v3, v1, 0xc

    aput p2, v2, v3

    add-int/lit8 v1, v1, 0x11

    aput p2, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/shapes/Circle;->r:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/Circle;->s:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    sub-float v1, p2, v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/shapes/Circle;->b:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x14

    iget-object v4, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    aget v5, v4, v3

    add-float/2addr v5, v0

    aput v5, v4, v3

    add-int/lit8 v5, v3, 0x1

    aget v6, v4, v5

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x5

    aget v6, v4, v5

    add-float/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x6

    aget v6, v4, v5

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0xa

    aget v6, v4, v5

    add-float/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0xb

    aget v6, v4, v5

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0xf

    aget v6, v4, v5

    add-float/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x10

    aget v5, v4, v3

    add-float/2addr v5, v1

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    return-void
.end method

.method public setPositionAndColor(FFFF)V
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    sub-float v1, p2, v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/shapes/Circle;->b:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x14

    iget-object v4, p0, Lcom/prineside/tdi2/shapes/Circle;->a:[F

    aget v5, v4, v3

    add-float/2addr v5, v0

    aput v5, v4, v3

    add-int/lit8 v5, v3, 0x1

    aget v6, v4, v5

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x2

    aput p3, v4, v5

    add-int/lit8 v5, v3, 0x5

    aget v6, v4, v5

    add-float/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x6

    aget v6, v4, v5

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x7

    aput p3, v4, v5

    add-int/lit8 v5, v3, 0xa

    aget v6, v4, v5

    add-float/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0xb

    aget v6, v4, v5

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0xc

    aput p4, v4, v5

    add-int/lit8 v5, v3, 0xf

    aget v6, v4, v5

    add-float/2addr v6, v0

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x10

    aget v6, v4, v5

    add-float/2addr v6, v1

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x11

    aput p4, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    iput p3, p0, Lcom/prineside/tdi2/shapes/Circle;->r:F

    iput p4, p0, Lcom/prineside/tdi2/shapes/Circle;->s:F

    return-void
.end method

.method public setup(FFFFIFF)V
    .locals 1

    const/4 v0, 0x3

    if-lt p5, v0, :cond_0

    invoke-virtual {p0, p5}, Lcom/prineside/tdi2/shapes/Circle;->a(I)V

    iput p5, p0, Lcom/prineside/tdi2/shapes/Circle;->b:I

    iput p1, p0, Lcom/prineside/tdi2/shapes/Circle;->d:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/Circle;->k:F

    iput p3, p0, Lcom/prineside/tdi2/shapes/Circle;->p:F

    iput p4, p0, Lcom/prineside/tdi2/shapes/Circle;->q:F

    iput p6, p0, Lcom/prineside/tdi2/shapes/Circle;->r:F

    iput p7, p0, Lcom/prineside/tdi2/shapes/Circle;->s:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/Circle;->b()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Min segment count is 3, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " given"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
