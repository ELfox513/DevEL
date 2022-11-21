.class public Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureArrayData;


# instance fields
.field public a:[Lcom/badlogic/gdx/graphics/TextureData;

.field public b:Z

.field public c:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;Z[Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->c:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->e:Z

    array-length v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->d:I

    array-length v0, p3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, p3, v0

    invoke-static {v2, p1, p2}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public consumeTextureArrayData()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v3, v2

    const v4, 0x8c1a

    if-ge v1, v3, :cond_4

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v4

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v7

    if-eq v6, v7, :cond_2

    new-instance v4, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v13

    move-object v6, v4

    move-object v7, v3

    invoke-virtual/range {v6 .. v13}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_1
    move-object v15, v4

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    move-object v15, v3

    move/from16 v16, v4

    :goto_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const v3, 0x8c1a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v11

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v12

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v13

    move v7, v1

    invoke-interface/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    if-eqz v16, :cond_3

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->e:Z

    if-eqz v1, :cond_5

    if-nez v14, :cond_5

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    :cond_5
    return-void
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->d:I

    return v0
.end method

.method public getGLType()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->c:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlType(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInternalFormat()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->c:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

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

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->b:Z

    return v0
.end method

.method public prepare()V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->a:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    if-ne v4, v2, :cond_0

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v4

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v7

    if-ne v4, v7, :cond_1

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Error whilst preparing TextureArray: TextureArray Textures must have equal dimensions."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->b:Z

    return-void
.end method
