.class public Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->a:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    div-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->a:F

    return-void
.end method


# virtual methods
.method public calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->a:F

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v3, v1, v2

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0

    :cond_0
    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;-><init>(II)V

    return-object v0
.end method
