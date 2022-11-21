.class public abstract Lcom/badlogic/gdx/AbstractGraphics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Graphics;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackBufferScale()F
    .locals 2

    invoke-interface {p0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDensity()F
    .locals 2

    invoke-interface {p0}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getRawDeltaTime()F
    .locals 1

    invoke-interface {p0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    return v0
.end method
