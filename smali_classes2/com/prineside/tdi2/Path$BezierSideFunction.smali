.class public Lcom/prineside/tdi2/Path$BezierSideFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Path$SideFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BezierSideFunction"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(FFFFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43000000    # 128.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->a:F

    mul-float p2, p2, v0

    iput p2, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->d:F

    mul-float p3, p3, v0

    iput p3, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->b:F

    mul-float p4, p4, v0

    iput p4, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->e:F

    mul-float p5, p5, v0

    iput p5, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->c:F

    mul-float p6, p6, v0

    iput p6, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->f:F

    mul-float p7, p7, v0

    const/high16 p1, 0x42800000    # 64.0f

    add-float/2addr p7, p1

    div-float/2addr p7, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p7, p7, p1

    div-float/2addr p1, p7

    iput p1, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->g:F

    return-void
.end method


# virtual methods
.method public position(FLcom/badlogic/gdx/math/Vector2;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->a:F

    mul-float v1, v1, v0

    mul-float v1, v1, v0

    iget v2, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    mul-float v2, v2, v0

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->c:F

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->d:F

    mul-float v1, v1, v0

    mul-float v1, v1, v0

    iget v2, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->e:F

    mul-float v2, v2, v3

    mul-float v2, v2, v0

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iget v0, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->f:F

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    iput v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public rotation(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    iget v2, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->a:F

    mul-float v2, v2, v1

    iget v3, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->b:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, p1, v4

    sub-float/2addr v5, v0

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    iget v0, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->c:F

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    mul-float v2, v2, v4

    iget v0, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->d:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->e:F

    mul-float v1, v1, v5

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->f:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    mul-float v0, v0, v4

    invoke-static {v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result p1

    const v0, 0x42652ee0

    mul-float p1, p1, v0

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p1, v0

    return p1
.end method

.method public speedMultiplier()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Path$BezierSideFunction;->g:F

    return v0
.end method
