.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/OrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/graphics/Pixmap;

.field public c:Lcom/badlogic/gdx/graphics/Texture;

.field public final d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->a:Lcom/badlogic/gdx/utils/OrderedMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->d:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->k:I

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->p:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->b:Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->b:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getTransparentColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->b:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    return-void
.end method


# virtual methods
.method public getPixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->b:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public getRects()Lcom/badlogic/gdx/utils/OrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/OrderedMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->a:Lcom/badlogic/gdx/utils/OrderedMap;

    return-object v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->c:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public updateTexture(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Z
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->c:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->e:Z

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page$1;

    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->b:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZZ)V

    invoke-direct {v0, p0, v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;Lcom/badlogic/gdx/graphics/TextureData;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->c:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->e:Z

    const/4 p1, 0x1

    return p1
.end method
