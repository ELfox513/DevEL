.class public Lcom/prineside/tdi2/shapes/TrailMultiLine;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ProjectileTrail;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;
    }
.end annotation


# static fields
.field public static A:I


# instance fields
.field public final a:Lcom/prineside/tdi2/shapes/MultiLine;

.field public b:I

.field public d:F

.field public k:F

.field public final p:Lcom/badlogic/gdx/graphics/Color;

.field public final q:Lcom/badlogic/gdx/graphics/Color;

.field public r:F

.field public s:F

.field public t:[F

.field public u:[F

.field public v:[F

.field public w:F

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->b:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->q:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->r:F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v1, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/TrailMultiLine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/TrailMultiLine;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_0
    return-void
.end method

.method public free()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->TRAIL_MULTI_LINE:Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    return-void
.end method

.method public getUsageId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->z:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->y:Z

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->r:F

    return-void
.end method

.method public setStartPoint(FF)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->u:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->b:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->t:[F

    mul-int/lit8 v4, v0, 0x2

    aput p1, v3, v4

    add-int/2addr v4, v2

    aput p2, v3, v4

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    iget v4, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->w:F

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    const/4 p2, 0x0

    aput p2, p1, v1

    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    return-void
.end method

.method public setup(Lcom/badlogic/gdx/graphics/Color;IFF)V
    .locals 2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->b:I

    if-ge v1, p2, :cond_0

    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->t:[F

    mul-int/lit8 v1, p2, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->u:[F

    new-array v1, p2, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    iput p4, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->k:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->b:I

    iput p3, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->d:F

    iget-object p4, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p4, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->q:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    sub-int/2addr p2, v0

    int-to-float p1, p2

    mul-float p1, p1, p3

    iput p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->w:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->r:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->x:Z

    iget-object p2, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    const/4 p3, 0x0

    aput p3, p2, p1

    sget p1, Lcom/prineside/tdi2/shapes/TrailMultiLine;->A:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/prineside/tdi2/shapes/TrailMultiLine;->A:I

    iput p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->z:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trail can\'t be shorter than 2 nodes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(F)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->b:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    aget v4, v3, v2

    add-float/2addr v4, p1

    aput v4, v3, v2

    iget v3, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->w:F

    cmpg-float v3, v4, v3

    if-gez v3, :cond_0

    iput-boolean v1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->y:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->y:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :goto_1
    iget p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->b:I

    if-ge v1, p1, :cond_4

    mul-int/lit8 p1, v1, 0x4

    mul-int/lit8 v2, v1, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    aget v4, v4, v1

    iget v5, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->w:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_3

    const/4 v3, 0x0

    :cond_3
    iget-object v4, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->q:Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v5, v5, v3

    iget v6, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->r:F

    mul-float v5, v5, v6

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v5, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->u:[F

    iget-object v6, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->t:[F

    aget v7, v6, v2

    aput v7, v5, p1

    add-int/lit8 v7, p1, 0x1

    add-int/2addr v2, v0

    aget v2, v6, v2

    aput v2, v5, v7

    add-int/lit8 v2, p1, 0x2

    iget v6, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->k:F

    mul-float v6, v6, v3

    aput v6, v5, v2

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    aput v2, v5, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->a:Lcom/prineside/tdi2/shapes/MultiLine;

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->u:[F

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/shapes/MultiLine;->setNodes([F)V

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->x:Z

    return-void
.end method

.method public updateStartPos(FFF)V
    .locals 7

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->s:F

    iget p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->d:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    iput v1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->s:F

    iget p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->b:I

    sub-int/2addr p1, v3

    :goto_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->t:[F

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v5, p1, -0x1

    mul-int/lit8 v5, v5, 0x2

    aget v6, v0, v5

    aput v6, v0, v4

    add-int/2addr v4, v3

    add-int/2addr v5, v3

    aget v5, v0, v5

    aput v5, v0, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    array-length v0, p1

    sub-int/2addr v0, v3

    invoke-static {p1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->t:[F

    aput p2, p1, v2

    aput p3, p1, v3

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->v:[F

    aput v1, p1, v2

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->q:Lcom/badlogic/gdx/graphics/Color;

    iget-object p2, p0, Lcom/prineside/tdi2/shapes/TrailMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
