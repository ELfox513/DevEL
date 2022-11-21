.class public Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/CubemapData;


# instance fields
.field public final a:[Lcom/badlogic/gdx/graphics/TextureData;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 9

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance p3, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {p3, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v8, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v0, p0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, p3

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-static {p2, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-static {p3, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    invoke-static {p4, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v5

    invoke-static {p5, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v6

    invoke-static {p6, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 5

    invoke-static {p1, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-static {p2, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-static {p3, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-static {p4, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-static {p5, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    invoke-static {p6, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object p7

    move-object p1, p0

    move-object p2, v0

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    invoke-direct/range {p1 .. p7}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v2, p1, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    :goto_0
    if-nez p2, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p2, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v3, p1

    :goto_1
    if-nez p3, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p3, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v4, p1

    :goto_2
    if-nez p4, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p4, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v5, p1

    :goto_3
    if-nez p5, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p5, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v6, p1

    :goto_4
    if-nez p6, :cond_5

    move-object p7, v1

    goto :goto_5

    :cond_5
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p6, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object p7, p1

    :goto_5
    move-object p1, p0

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    invoke-direct/range {p1 .. p7}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const/4 p1, 0x5

    aput-object p6, v0, p1

    return-void
.end method


# virtual methods
.method public consumeCubemapData()V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const v4, 0x8515

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    add-int/2addr v4, v1

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v3

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    const/4 v13, 0x1

    if-eq v5, v6, :cond_2

    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v7, v7, v1

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    move-object v5, v3

    move-object v6, v2

    invoke-virtual/range {v5 .. v12}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_1
    move-object v2, v3

    const/4 v3, 0x1

    :cond_2
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v6, 0xcf5

    invoke-interface {v5, v6, v13}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    sget-object v14, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v15, v1, v4

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v17

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v18

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v19

    const/16 v20, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v21

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v22

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v23

    invoke-interface/range {v14 .. v23}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public getHeight()I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public getTextureData(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getWidth()I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public isComplete()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isManaged()Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object p2

    aput-object p2, v0, p1

    return-void
.end method

.method public load(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v1, v3, v3}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v1, v2

    :goto_0
    aput-object v1, v0, p1

    return-void
.end method

.method public prepare()V
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "You need to complete your cubemap data before using it"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
