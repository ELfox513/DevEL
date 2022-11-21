.class public Lcom/badlogic/gdx/ai/DefaultTimepiece;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/Timepiece;


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/DefaultTimepiece;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->a:F

    iput v0, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->b:F

    iput p1, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->c:F

    return-void
.end method


# virtual methods
.method public getDeltaTime()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->b:F

    return v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->a:F

    return v0
.end method

.method public update(F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->c:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->b:F

    iget v0, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/ai/DefaultTimepiece;->a:F

    return-void
.end method
