.class public Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field public a:Lcom/badlogic/gdx/files/FileHandle;

.field public b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->d:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->e:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->f:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->d:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->e:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->f:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->c:Z

    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 13

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_OES_compressed_ETC1_RGB8_texture"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v9

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v10

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v11

    move v3, p1

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->c:Z

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v6, 0x0

    sget v7, Lcom/badlogic/gdx/graphics/glutils/ETC1;->ETC1_RGB8_OES:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->d:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->e:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget v3, v2, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dataOffset:I

    sub-int v11, v0, v3

    iget-object v12, v2, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->compressedData:Ljava/nio/ByteBuffer;

    move v5, p1

    invoke-interface/range {v4 .. v12}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->useMipMaps()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->dispose()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->f:Z

    return-void

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation does not return a Pixmap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->e:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->d:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->f:Z

    return v0
.end method

.method public prepare()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can only load once from ETC1Data"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->b:Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->width:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->d:I

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;->height:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->f:Z

    return-void

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;->c:Z

    return v0
.end method
