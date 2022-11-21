.class Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShatterPolygon"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/math/Polygon;

.field public b:[F

.field public d:Lcom/badlogic/gdx/math/Vector2;

.field public k:[F

.field public p:F

.field public q:F

.field public r:F

.field public s:Lcom/badlogic/gdx/graphics/Texture;

.field public t:Lcom/badlogic/gdx/graphics/Color;

.field public u:F

.field public v:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Polygon;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->a:Lcom/badlogic/gdx/math/Polygon;

    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->b:[F

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->d:Lcom/badlogic/gdx/math/Vector2;

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k:[F

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->t:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/ParticleSystem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->p:F

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->p:F

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->q:F

    return p1
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->r:F

    return p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->r:F

    return p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->d:Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->s:Lcom/badlogic/gdx/graphics/Texture;

    return-object p1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->t:Lcom/badlogic/gdx/graphics/Color;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;Lcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Interpolation;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->v:Lcom/badlogic/gdx/math/Interpolation;

    return-object p1
.end method

.method public static synthetic j(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->k:[F

    return-object p0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)Lcom/badlogic/gdx/math/Polygon;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->a:Lcom/badlogic/gdx/math/Polygon;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;)[F
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->b:[F

    return-object p0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;[FF)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->v:Lcom/badlogic/gdx/math/Interpolation;

    iget v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->r:F

    iget v2, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->p:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->u:F

    sub-float v1, v0, v1

    iput v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->u:F

    iget v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->r:F

    iget v2, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->p:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-static {}, Lcom/prineside/tdi2/systems/ParticleSystem;->a()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->t:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-static {}, Lcom/prineside/tdi2/systems/ParticleSystem;->a()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->pow5Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v4

    mul-float v3, v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {}, Lcom/prineside/tdi2/systems/ParticleSystem;->a()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->a:Lcom/badlogic/gdx/math/Polygon;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v5, v1

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v4, v1

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/math/Polygon;->translate(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->a:Lcom/badlogic/gdx/math/Polygon;

    iget v4, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->q:F

    const/high16 v5, 0x43870000    # 270.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    sub-float/2addr v5, v2

    mul-float v4, v4, v5

    mul-float v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Polygon;->rotate(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->a:Lcom/badlogic/gdx/math/Polygon;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    mul-int/lit8 v5, v3, 0x5

    mul-int/lit8 v6, v3, 0x2

    aget v7, v1, v6

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v6, 0x1

    aget v9, v1, v8

    aput v9, p2, v7

    add-int/lit8 v7, v5, 0x2

    aput v0, p2, v7

    add-int/lit8 v7, v5, 0x3

    iget-object v9, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->b:[F

    aget v6, v9, v6

    aput v6, p2, v7

    add-int/2addr v5, v4

    aget v4, v9, v8

    aput v4, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->r:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->r:F

    iget-object p3, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->s:Lcom/badlogic/gdx/graphics/Texture;

    const/16 v0, 0x14

    invoke-virtual {p1, p3, p2, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->u:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$ShatterPolygon;->s:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method
