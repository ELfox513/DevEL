.class public Lcom/badlogic/gdx/math/Interpolation$Exp;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exp"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->a:F

    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->b:F

    float-to-double v0, p1

    neg-float p1, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->c:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->d:F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->a:F

    float-to-double v2, v2

    iget v4, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->b:F

    mul-float p1, p1, v1

    sub-float/2addr p1, v0

    mul-float v4, v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->c:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->d:F

    mul-float p1, p1, v0

    :goto_0
    div-float/2addr p1, v1

    return p1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->a:F

    float-to-double v2, v2

    iget v4, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->b:F

    neg-float v4, v4

    mul-float p1, p1, v1

    sub-float/2addr p1, v0

    mul-float v4, v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->c:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->d:F

    mul-float p1, p1, v0

    sub-float p1, v1, p1

    goto :goto_0
.end method
