.class public Lcom/prineside/tdi2/Path$SharpCornerSideFunction;
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
    name = "SharpCornerSideFunction"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43000000    # 128.0f

    mul-float v1, p1, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->a:F

    mul-float v1, p2, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->d:F

    mul-float v1, p3, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->b:F

    mul-float v1, p4, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->e:F

    mul-float v1, p5, v0

    iput v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->c:F

    mul-float v0, v0, p6

    iput v0, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->f:F

    invoke-static {p3, p4, p1, p2}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->g:F

    invoke-static {p5, p6, p3, p4}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->h:F

    return-void
.end method


# virtual methods
.method public position(FLcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    mul-float p1, p1, v0

    iget v0, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->a:F

    iget v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->b:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->d:F

    iget v2, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->e:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    mul-float p1, p1, v0

    iget v0, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->b:F

    iget v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->c:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->e:F

    iget v2, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->f:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    return-void
.end method

.method public rotation(F)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->g:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/prineside/tdi2/Path$SharpCornerSideFunction;->h:F

    :goto_0
    return p1
.end method

.method public speedMultiplier()F
    .locals 1

    const v0, 0x3f3504f3

    return v0
.end method
