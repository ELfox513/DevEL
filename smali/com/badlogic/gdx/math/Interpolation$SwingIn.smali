.class public Lcom/badlogic/gdx/math/Interpolation$SwingIn;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwingIn"
.end annotation


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->a:F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 3

    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingIn;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    mul-float v2, v2, p1

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    return v0
.end method
