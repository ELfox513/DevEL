.class public Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

.field public b:Z

.field public final d:Lcom/badlogic/gdx/math/Matrix4;

.field public final k:Lcom/badlogic/gdx/math/Matrix4;

.field public final p:Lcom/badlogic/gdx/math/Matrix4;

.field public final q:Lcom/badlogic/gdx/math/Vector2;

.field public final r:Lcom/badlogic/gdx/graphics/Color;

.field public s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field public t:Z

.field public u:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->d:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->p:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->q:Lcom/badlogic/gdx/math/Vector2;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000    # 0.75f

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->u:F

    const/4 v2, 0x1

    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    invoke-direct {p2, p1, v0, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZI)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v4, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    :goto_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_2

    if-eq v0, p2, :cond_2

    iget-boolean p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->t:Z

    if-nez p3, :cond_1

    const-string p3, ")."

    const-string v0, "Must call begin(ShapeType."

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") or begin(ShapeType."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getMaxVertices()I

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getNumVertices()I

    move-result p2

    sub-int/2addr p1, p2

    if-ge p1, p3, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "begin must be called first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arc(FFFFF)V
    .locals 9

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float v1, p5, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->arc(FFFFFI)V

    return-void
.end method

.method public arc(FFFFFI)V
    .locals 7

    if-lez p6, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    const v1, 0x40c90fdb

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p5, v2

    mul-float p5, p5, v1

    int-to-float v1, p6

    div-float/2addr p5, v1

    invoke-static {p5}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v1

    invoke-static {p5}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p5

    const v2, 0x3c8efa35

    mul-float p4, p4, v2

    invoke-static {p4}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v2

    mul-float v2, v2, p3

    invoke-static {p4}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result p4

    mul-float p3, p3, p4

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne p4, v3, :cond_1

    sget-object p4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v6, p6, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p0, v3, p4, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v3, p1, v2

    add-float v6, p2, p3

    invoke-interface {p4, v3, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    if-ge v4, p6, :cond_0

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v3, p1, v2

    add-float v6, p2, p3

    invoke-interface {p4, v3, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    mul-float p4, v1, v2

    mul-float v3, p5, p3

    sub-float/2addr p4, v3

    mul-float v2, v2, p5

    mul-float p3, p3, v1

    add-float/2addr p3, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v3, p1, p4

    add-float v6, p2, p3

    invoke-interface {v2, v3, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v4, v4, 0x1

    move v2, p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr v2, p1

    add-float/2addr p3, p2

    invoke-interface {p4, v2, p3, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_2

    :cond_1
    sget-object p4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v6, p6, 0x3

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p0, v3, p4, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    :goto_1
    if-ge v4, p6, :cond_2

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v3, p1, v2

    add-float v6, p2, p3

    invoke-interface {p4, v3, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    mul-float p4, v1, v2

    mul-float v3, p5, p3

    sub-float/2addr p4, v3

    mul-float v2, v2, p5

    mul-float p3, p3, v1

    add-float/2addr p3, v2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v3, p1, p4

    add-float v6, p2, p3

    invoke-interface {v2, v3, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v4, v4, 0x1

    move v2, p4

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr v2, p1

    add-float/2addr p3, p2

    invoke-interface {p4, v2, p3, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_2
    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p1, v5

    add-float/2addr p2, v5

    invoke-interface {p3, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "segments must be > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public begin()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->t:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "autoShapeType must be true to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->p:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->p:Lcom/badlogic/gdx/math/Matrix4;

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->p:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->getGlType()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call end() before beginning a new shape batch."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public box(FFFFFF)V
    .locals 4

    neg-float p6, p6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x18

    invoke-virtual {p0, v2, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p4, p1

    invoke-interface {v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p6, p3

    invoke-interface {v1, p4, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p5, p2

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p4, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p2, p1, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x24

    invoke-virtual {p0, v2, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p4, p1

    invoke-interface {v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p5, p2

    invoke-interface {v1, p4, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p6, p3

    invoke-interface {v1, p4, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p4, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p1, p2, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p4, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public circle(FFF)V
    .locals 2

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    return-void
.end method

.method public circle(FFFI)V
    .locals 10

    if-lez p4, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    const v1, 0x40c90fdb

    int-to-float v2, p4

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v7, p4, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v4, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    move v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v5, p4, :cond_0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p1, v3

    add-float v9, p2, v4

    invoke-interface {v7, v8, v9, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    mul-float v7, v2, v3

    mul-float v8, v1, v4

    sub-float/2addr v7, v8

    mul-float v3, v3, v1

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p1, v7

    add-float v9, p2, v4

    invoke-interface {v3, v8, v9, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr v3, p1

    add-float/2addr v4, p2

    invoke-interface {p4, v3, v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v7, p4, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {p0, v4, v3, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    add-int/lit8 p4, p4, -0x1

    move v3, p3

    const/4 v4, 0x0

    :goto_1
    if-ge v5, p4, :cond_2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, p1, p2, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p1, v3

    add-float v9, p2, v4

    invoke-interface {v7, v8, v9, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    mul-float v7, v2, v3

    mul-float v8, v1, v4

    sub-float/2addr v7, v8

    mul-float v3, v3, v1

    mul-float v4, v4, v2

    add-float/2addr v4, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v8, p1, v7

    add-float v9, p2, v4

    invoke-interface {v3, v8, v9, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, p1, p2, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr v3, p1

    add-float/2addr v4, p2

    invoke-interface {p4, v3, v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_2
    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p1, p3

    add-float/2addr p2, v6

    invoke-interface {p4, p1, p2, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "segments must be > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public cone(FFFFF)V
    .locals 9

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->cone(FFFFFI)V

    return-void
.end method

.method public cone(FFFFFI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    if-lez v4, :cond_4

    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v6, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v7, v4, 0x4

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    const v7, 0x40c90fdb

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v8

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v10, 0x0

    if-ne v9, v5, :cond_1

    move/from16 v5, p4

    const/4 v9, 0x0

    :goto_0
    if-ge v10, v4, :cond_0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v5

    add-float v14, v2, v9

    invoke-interface {v12, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v15, v3, p5

    invoke-interface {v12, v1, v2, v15}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    mul-float v12, v8, v5

    mul-float v13, v7, v9

    sub-float/2addr v12, v13

    mul-float v5, v5, v7

    mul-float v9, v9, v8

    add-float/2addr v9, v5

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v12

    add-float v14, v2, v9

    invoke-interface {v5, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v10, v10, 0x1

    move v5, v12

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v7, v1, v5

    add-float v8, v2, v9

    invoke-interface {v4, v7, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    move/from16 v5, p4

    const/4 v9, 0x0

    :goto_1
    if-ge v10, v4, :cond_2

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v12, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v13, v1, v5

    add-float v14, v2, v9

    invoke-interface {v12, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    mul-float v12, v8, v5

    mul-float v15, v7, v9

    sub-float/2addr v12, v15

    mul-float v5, v5, v7

    mul-float v9, v9, v8

    add-float/2addr v9, v5

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v15, v1, v12

    add-float v11, v2, v9

    invoke-interface {v5, v15, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v13, v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v15, v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, v3, p5

    invoke-interface {v5, v1, v2, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v10, v10, 0x1

    move v5, v12

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v7, v1, v5

    add-float v8, v2, v9

    invoke-interface {v4, v7, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_2
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v7, v1, p4

    const/4 v8, 0x0

    add-float/2addr v8, v2

    invoke-interface {v4, v7, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v4, v10, :cond_3

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr v5, v1

    add-float/2addr v9, v2

    invoke-interface {v4, v5, v9, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v7, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v3, v3, p5

    invoke-interface {v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :cond_3
    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "segments must be > 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public curve(FFFFFFFFI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    mul-float v5, v6, v6

    mul-float v7, v5, v6

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v6, v6, v8

    mul-float v9, v5, v8

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float v5, v5, v10

    mul-float v10, v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v12, p3, v11

    sub-float v12, p1, v12

    add-float v12, v12, p5

    mul-float v11, v11, p4

    sub-float v11, p2, v11

    add-float v11, v11, p6

    sub-float v13, p3, p5

    mul-float v13, v13, v8

    sub-float v13, v13, p1

    add-float/2addr v13, v1

    sub-float v14, p4, p6

    mul-float v14, v14, v8

    sub-float v14, v14, p2

    add-float/2addr v14, v2

    sub-float v8, p3, p1

    mul-float v8, v8, v6

    mul-float v15, v12, v9

    add-float/2addr v8, v15

    mul-float v15, v13, v7

    add-float/2addr v8, v15

    sub-float v15, p4, p2

    mul-float v15, v15, v6

    mul-float v9, v9, v11

    add-float/2addr v15, v9

    mul-float v7, v7, v14

    add-float/2addr v15, v7

    mul-float v12, v12, v5

    mul-float v13, v13, v10

    add-float/2addr v12, v13

    mul-float v11, v11, v5

    mul-float v14, v14, v10

    add-float/2addr v11, v14

    move/from16 v5, p2

    move v6, v3

    move/from16 v3, p1

    :goto_0
    add-int/lit8 v7, v6, -0x1

    const/4 v9, 0x0

    if-lez v6, :cond_0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v6, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v6, v3, v5, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-float/2addr v3, v8

    add-float/2addr v5, v15

    add-float/2addr v8, v12

    add-float/2addr v15, v11

    add-float/2addr v12, v13

    add-float/2addr v11, v14

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v6, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v6, v3, v5, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move v6, v7

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v6, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v6, v3, v5, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v3, v1, v2, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->dispose()V

    return-void
.end method

.method public ellipse(FFFF)V
    .locals 8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p3, v0

    mul-float v0, v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->ellipse(FFFFI)V

    return-void
.end method

.method public ellipse(FFFFF)V
    .locals 9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p3, v0

    mul-float v0, v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->ellipse(FFFFFI)V

    return-void
.end method

.method public ellipse(FFFFFI)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p6

    if-lez v1, :cond_2

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v4, v1, 0x3

    invoke-virtual {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    const v4, 0x40c90fdb

    int-to-float v5, v1

    div-float/2addr v4, v5

    const v5, 0x40490fdb    # (float)Math.PI

    mul-float v5, v5, p5

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v6

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, p3, v7

    add-float v8, p1, v8

    div-float v7, p4, v7

    add-float v7, p2, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v10, p3, v9

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-ne v11, v2, :cond_0

    move v2, v10

    const/4 v11, 0x0

    :goto_0
    if-ge v12, v1, :cond_1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v15, v5, v2

    add-float/2addr v15, v8

    mul-float v16, v6, v11

    sub-float v15, v15, v16

    mul-float v2, v2, v6

    add-float/2addr v2, v7

    mul-float v11, v11, v5

    add-float/2addr v2, v11

    invoke-interface {v14, v15, v2, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v12, v12, 0x1

    int-to-float v2, v12

    mul-float v2, v2, v4

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v11

    mul-float v11, v11, v10

    mul-float v14, p4, v9

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    mul-float v2, v2, v14

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v15, v5, v11

    add-float/2addr v15, v8

    mul-float v16, v6, v2

    sub-float v15, v15, v16

    mul-float v16, v6, v11

    add-float v16, v7, v16

    mul-float v17, v5, v2

    add-float v9, v16, v17

    invoke-interface {v14, v15, v9, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    const/high16 v9, 0x3f000000    # 0.5f

    move/from16 v18, v11

    move v11, v2

    move/from16 v2, v18

    goto :goto_0

    :cond_0
    move v2, v10

    const/4 v9, 0x0

    :goto_1
    if-ge v12, v1, :cond_1

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v11, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v14, v5, v2

    add-float/2addr v14, v8

    mul-float v15, v6, v9

    sub-float/2addr v14, v15

    mul-float v2, v2, v6

    add-float/2addr v2, v7

    mul-float v9, v9, v5

    add-float/2addr v2, v9

    invoke-interface {v11, v14, v2, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v8, v7, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    add-int/lit8 v12, v12, 0x1

    int-to-float v2, v12

    mul-float v2, v2, v4

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v9

    mul-float v9, v9, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v14, p4, v11

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    mul-float v2, v2, v14

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v14, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v15, v5, v9

    add-float/2addr v15, v8

    mul-float v16, v6, v2

    sub-float v15, v15, v16

    mul-float v16, v6, v9

    add-float v16, v7, v16

    mul-float v17, v5, v2

    add-float v11, v16, v17

    invoke-interface {v14, v15, v11, v13}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move/from16 v18, v9

    move v9, v2

    move/from16 v2, v18

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "segments must be > 0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public ellipse(FFFFI)V
    .locals 10

    if-lez p5, :cond_2

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v2, p5, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    const v2, 0x40c90fdb

    int-to-float v3, p5

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p3, v3

    add-float/2addr p1, v4

    div-float v3, p4, v3

    add-float/2addr p2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    if-ne v3, v0, :cond_0

    :goto_0
    if-ge v4, p5, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v3, p3, v5

    int-to-float v7, v4

    mul-float v7, v7, v2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v8

    mul-float v8, v8, v3

    add-float/2addr v8, p1

    mul-float v9, p4, v5

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    mul-float v7, v7, v9

    add-float/2addr v7, p2

    invoke-interface {v0, v8, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-int/lit8 v4, v4, 0x1

    int-to-float v7, v4

    mul-float v7, v7, v2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v8

    mul-float v3, v3, v8

    add-float/2addr v3, p1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    mul-float v9, v9, v7

    add-float/2addr v9, p2

    invoke-interface {v0, v3, v9, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, p5, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    mul-float v3, p3, v5

    int-to-float v7, v4

    mul-float v7, v7, v2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v8

    mul-float v8, v8, v3

    add-float/2addr v8, p1

    mul-float v9, p4, v5

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    mul-float v7, v7, v9

    add-float/2addr v7, p2

    invoke-interface {v0, v8, v7, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-int/lit8 v4, v4, 0x1

    int-to-float v7, v4

    mul-float v7, v7, v2

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v8

    mul-float v3, v3, v8

    add-float/2addr v3, p1

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    mul-float v9, v9, v7

    add-float/2addr v9, p2

    invoke-interface {v0, v3, v9, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "segments must be > 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrentType()Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    return-object v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->d:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getRenderer()Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public identity()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method

.method public isDrawing()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final line(FFFF)V
    .locals 9

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final line(FFFFFF)V
    .locals 9

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    move-object v8, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_0

    iget v5, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->u:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move v1, p4

    move v2, p5

    move v3, p6

    invoke-interface {v0, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    return-void
.end method

.method public final line(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 9

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public point(FFF)V
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->u:F

    mul-float v0, v0, v2

    sub-float v2, p1, v0

    sub-float v3, p2, v0

    add-float v5, p1, v0

    add-float v6, p2, v0

    move-object v1, p0

    move v4, p3

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFF)V

    return-void

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_1

    iget v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->u:F

    mul-float v2, v2, v9

    sub-float v4, p1, v2

    sub-float v5, p2, v2

    sub-float v6, p3, v2

    move-object v3, p0

    move v7, v9

    move v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->box(FFFFFF)V

    return-void

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    return-void
.end method

.method public polygon([F)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->polygon([FII)V

    return-void
.end method

.method public polygon([FII)V
    .locals 10

    const/4 v0, 0x6

    if-lt p3, v0, :cond_3

    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int v3, p2, p3

    :goto_0
    if-ge p2, v3, :cond_1

    aget v4, p1, p2

    add-int/lit8 v5, p2, 0x1

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0x2

    if-lt v6, p3, :cond_0

    move v7, v1

    move p2, v2

    goto :goto_1

    :cond_0
    aget v7, p1, v6

    add-int/lit8 p2, p2, 0x3

    aget p2, p1, p2

    :goto_1
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v8, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v5, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v7, p2, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move p2, v6

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Polygons must have an even number of vertices."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Polygons must contain at least 3 points."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public polyline([F)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->polyline([FII)V

    return-void
.end method

.method public polyline([FII)V
    .locals 7

    const/4 v0, 0x4

    if-lt p3, v0, :cond_2

    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x2

    :goto_0
    if-ge p2, p3, :cond_0

    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x2

    aget v4, p1, v3

    add-int/lit8 p2, p2, 0x3

    aget p2, p1, p2

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v2, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v4, p2, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move p2, v3

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Polylines must have an even number of vertices."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Polylines must contain at least 2 points."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public rect(FFFF)V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p3, p1

    invoke-interface {v0, p3, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p4, p2

    invoke-interface {v0, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p3, p1

    invoke-interface {v0, p3, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p4, p2

    invoke-interface {v0, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public rect(FFFFFFFFF)V
    .locals 15

    move-object v14, p0

    iget-object v13, v14, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v13

    move-object v11, v13

    move-object v12, v13

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public rect(FFFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    sget-object v7, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v8, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v9, 0x8

    invoke-virtual {v0, v7, v8, v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    invoke-static/range {p9 .. p9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v8

    invoke-static/range {p9 .. p9}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    neg-float v10, v1

    neg-float v11, v2

    sub-float v12, p5, v1

    sub-float v13, p6, v2

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v15, p7, v14

    if-nez v15, :cond_0

    cmpl-float v14, p8, v14

    if-eqz v14, :cond_1

    :cond_0
    mul-float v10, v10, p7

    mul-float v11, v11, p8

    mul-float v12, v12, p7

    mul-float v13, v13, p8

    :cond_1
    add-float v1, p1, v1

    add-float v2, p2, v2

    mul-float v14, v8, v10

    mul-float v15, v9, v11

    sub-float/2addr v14, v15

    add-float/2addr v14, v1

    mul-float v10, v10, v9

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    add-float/2addr v10, v2

    mul-float v16, v8, v12

    sub-float v15, v16, v15

    add-float/2addr v15, v1

    mul-float v12, v12, v9

    add-float/2addr v11, v12

    add-float/2addr v11, v2

    mul-float v9, v9, v13

    sub-float v16, v16, v9

    add-float v1, v16, v1

    mul-float v8, v8, v13

    add-float/2addr v12, v8

    add-float/2addr v12, v2

    sub-float v2, v1, v15

    add-float/2addr v2, v14

    sub-float v8, v11, v10

    sub-float v8, v12, v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v9, v7, :cond_2

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v9, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v13, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 p2, v2

    iget v2, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 p3, v8

    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v7, v9, v13, v2, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v7, 0x0

    invoke-interface {v2, v14, v10, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v8, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v9, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v13, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v8, v9, v13, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v7, 0x0

    invoke-interface {v2, v15, v11, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v8, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v9, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v13, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v8, v9, v13, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v15, v11, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v4, v8, v9, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v1, v12, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v4, v8, v9, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v1, v12, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v4, v5, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move/from16 v2, p2

    move/from16 v8, p3

    invoke-interface {v1, v2, v8, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v4, v5, v9, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v2, v8, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v2, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v14, v10, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v13, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v7, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 p2, v2

    iget v2, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 p3, v8

    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v9, v13, v7, v2, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v7, 0x0

    invoke-interface {v2, v14, v10, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v8, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v9, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v13, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v8, v9, v13, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v15, v11, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v11, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v4, v8, v9, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v1, v12, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v2, v4, v8, v9, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2, v1, v12, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move/from16 v2, p2

    move/from16 v12, p3

    invoke-interface {v1, v2, v12, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v2, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v14, v10, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public rect(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p3, p1

    invoke-interface {v0, p3, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p6, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p6, p3, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v0, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p6, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p4, p2

    invoke-interface {p6, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v0, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p7, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p6, v0, v1, v3, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p6, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p6, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p7, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p6, p7, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p6, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p7, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p8, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p6, p7, v0, p8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p4, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p6, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget p7, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p4, p6, p7, p5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p6, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p3, p1

    invoke-interface {p6, p3, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v0, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p6, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float/2addr p4, p2

    invoke-interface {p6, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v0, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p7, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p6, v0, v1, v3, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p6, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p6, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p7, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p8, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p6, p7, v0, p8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p4, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p6, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget p7, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p4, p6, p7, p5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public rectLine(FFFFF)V
    .locals 8

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->q:Lcom/badlogic/gdx/math/Vector2;

    sub-float v3, p4, p2

    sub-float v4, p1, p3

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float p5, p5, v3

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v3, p5

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, p5

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v4, 0x0

    if-ne p5, v0, :cond_0

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v0, p1, v3

    add-float v5, p2, v2

    invoke-interface {p5, v0, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p1, v3

    sub-float/2addr p2, v2

    invoke-interface {p5, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v6, p3, v3

    add-float v7, p4, v2

    invoke-interface {p5, v6, v7, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p3, v3

    sub-float/2addr p4, v2

    invoke-interface {p5, p3, p4, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v6, v7, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v0, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p3, p4, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v0, p1, v3

    add-float v5, p2, v2

    invoke-interface {p5, v0, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p1, v3

    sub-float/2addr p2, v2

    invoke-interface {p5, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v0, p3, v3

    add-float v5, p4, v2

    invoke-interface {p5, v0, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p3, v3

    sub-float/2addr p4, v2

    invoke-interface {p5, p3, p4, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v0, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public rectLine(FFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    invoke-virtual {p6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p6

    invoke-virtual {p7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p7

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->q:Lcom/badlogic/gdx/math/Vector2;

    sub-float v2, p4, p2

    sub-float v3, p1, p3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float p5, p5, v2

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v2, v2, p5

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v1, v1, p5

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v3, 0x0

    if-ne p5, v0, :cond_0

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v0, p1, v2

    add-float v4, p2, v1

    invoke-interface {p5, v0, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p1, v2

    sub-float/2addr p2, v1

    invoke-interface {p5, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v6, p4, v1

    invoke-interface {p5, v5, v6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p3, v2

    sub-float/2addr p4, v1

    invoke-interface {p5, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v5, v6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, v0, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v0, p1, v2

    add-float v4, p2, v1

    invoke-interface {p5, v0, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p1, v2

    sub-float/2addr p2, v1

    invoke-interface {p5, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v0, p3, v2

    add-float v4, p4, v1

    invoke-interface {p5, v0, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p5, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float/2addr p3, v2

    sub-float/2addr p4, v1

    invoke-interface {p5, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v0, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public rectLine(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "autoShapeType must be enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "begin must be called first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoShapeType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->t:Z

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method

.method public translate(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->k:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method

.method public triangle(FFFFFF)V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p5, p6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p5, p6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p1, p3, p4, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p1, p5, p6, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public triangle(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->s:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p8, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, p8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p8, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p4, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p8, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p4, p8, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p5, p6, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p4, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p8, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p9, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p4, p8, v0, p9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p5, p6, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p4, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p5, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget p6, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p7, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p3, p4, p5, p6, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p3, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p7, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v3, v4, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p7, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p2, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p7, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p8, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p1, p2, p7, v0, p8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p1, p3, p4, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget p2, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p3, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget p4, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p7, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {p1, p2, p3, p4, p7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->a:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {p1, p5, p6, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    :goto_0
    return-void
.end method

.method public updateMatrices()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->b:Z

    return-void
.end method

.method public x(FFF)V
    .locals 2

    sub-float v0, p1, p3

    sub-float v1, p2, p3

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    invoke-virtual {p0, v0, p2, p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    return-void
.end method

.method public x(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->x(FFF)V

    return-void
.end method
