.class public Lcom/prineside/tdi2/shapes/CountdownPolygon;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/CountdownPolygon$CountdownPolygonFactory;
    }
.end annotation


# static fields
.field public static final t:Lcom/badlogic/gdx/math/Vector2;

.field public static final u:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:[F

.field public b:[F

.field public d:I

.field public k:F

.field public p:F

.field public final q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public r:F

.field public s:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->t:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->u:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->b:[F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

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

    iput v3, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->r:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->s:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/CountdownPolygon$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/CountdownPolygon;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->a:[F

    iget v2, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->d:I

    mul-int/lit8 v2, v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setup([F)V
    .locals 9

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    array-length v0, p1

    const/4 v2, 0x6

    if-lt v0, v2, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    const/4 v6, 0x4

    if-ge v0, v6, :cond_4

    mul-int/lit8 v6, v0, 0x2

    aget v7, p1, v6

    add-int/2addr v6, v1

    aget v6, p1, v6

    cmpg-float v8, v7, v4

    if-gez v8, :cond_0

    move v4, v7

    :cond_0
    cmpg-float v8, v6, v5

    if-gez v8, :cond_1

    move v5, v6

    :cond_1
    cmpl-float v8, v7, v2

    if-lez v8, :cond_2

    move v2, v7

    :cond_2
    cmpl-float v7, v6, v3

    if-lez v7, :cond_3

    move v3, v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sub-float/2addr v2, v4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v4, v2

    iput v4, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->k:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v0

    add-float/2addr v5, v3

    iput v5, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->p:F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, p1, 0x1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->a:[F

    array-length v1, v1

    mul-int/lit8 v0, v0, 0x14

    if-ge v1, v0, :cond_5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->a:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/prineside/tdi2/shapes/CountdownPolygon;->b:[F

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "points min length is 6"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "points must be %2 == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
