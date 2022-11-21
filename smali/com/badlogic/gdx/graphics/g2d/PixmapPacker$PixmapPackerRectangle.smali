.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;
.super Lcom/badlogic/gdx/math/Rectangle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PixmapPackerRectangle"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public d:I

.field public k:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float v0, p3

    int-to-float v1, p4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->d:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->k:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->p:I

    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->q:I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    iput p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->d:I

    iput p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->k:I

    iput p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->p:I

    iput p8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->q:I

    return-void
.end method
