.class Lcom/badlogic/gdx/math/Interpolation$7;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
