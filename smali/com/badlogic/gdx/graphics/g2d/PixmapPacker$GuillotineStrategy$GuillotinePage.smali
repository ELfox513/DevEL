.class Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;
.super Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuillotinePage"
.end annotation


# instance fields
.field public f:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;->f:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->q:I

    int-to-float v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    int-to-float v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->d:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->k:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-void
.end method
