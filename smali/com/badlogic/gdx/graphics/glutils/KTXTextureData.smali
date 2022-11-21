.class public Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;
.implements Lcom/badlogic/gdx/graphics/CubemapData;


# instance fields
.field public a:Lcom/badlogic/gdx/files/FileHandle;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Ljava/nio/ByteBuffer;

.field public o:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->g:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->h:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->i:I

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->o:Z

    return-void
.end method


# virtual methods
.method public consumeCubemapData()V
    .locals 1

    const v0, 0x8513

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->consumeCustomData(I)V

    return-void
.end method

.method public consumeCustomData(I)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1d

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->d:I

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->d:I

    add-int/2addr v3, v6

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    :goto_1
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->h:I

    const/16 v7, 0xde1

    const/4 v8, 0x2

    const/16 v9, 0x1234

    if-lez v6, :cond_2

    const/4 v6, 0x2

    const/16 v10, 0xde1

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    const/16 v10, 0x1234

    :goto_2
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->i:I

    if-lez v11, :cond_3

    const/4 v6, 0x3

    const/16 v10, 0x1234

    :cond_3
    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->k:I

    const v13, 0x8513

    const/4 v14, 0x6

    if-ne v11, v14, :cond_5

    if-ne v6, v8, :cond_4

    const v10, 0x8513

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "cube map needs 2D faces"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-ne v11, v5, :cond_1b

    :goto_3
    iget v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->j:I

    if-lez v15, :cond_8

    if-ne v10, v9, :cond_6

    goto :goto_4

    :cond_6
    if-ne v10, v7, :cond_7

    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0x1234

    goto :goto_5

    :cond_7
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "No API for 3D and cube arrays yet"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    if-eq v10, v9, :cond_1a

    const v9, 0x851a

    const v12, 0x8515

    if-ne v11, v14, :cond_a

    if-eq v1, v13, :cond_a

    if-gt v12, v1, :cond_9

    if-gt v1, v9, :cond_9

    sub-int/2addr v1, v12

    goto :goto_8

    :cond_9
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "You must specify either GL_TEXTURE_CUBE_MAP to bind all 6 faces of the cube or the requested face GL_TEXTURE_CUBE_MAP_POSITIVE_X and followings."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-ne v11, v14, :cond_b

    if-ne v1, v13, :cond_b

    goto :goto_7

    :cond_b
    if-eq v1, v10, :cond_d

    if-gt v12, v1, :cond_c

    if-gt v1, v9, :cond_c

    if-ne v1, v7, :cond_c

    goto :goto_6

    :cond_c
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid target requested : 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expecting : 0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_6
    move v12, v1

    :goto_7
    const/4 v1, -0x1

    :goto_8
    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v9, 0xcf5

    invoke-interface {v7, v9, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v7, 0x4

    if-eq v2, v7, :cond_e

    sget-object v10, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v10, v9, v7}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    :cond_e
    iget v10, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->e:I

    iget v11, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->d:I

    iget v13, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->m:I

    const/4 v14, 0x0

    :goto_9
    iget v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->l:I

    if-ge v14, v9, :cond_17

    iget v9, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->g:I

    shr-int/2addr v9, v14

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->h:I

    shr-int/2addr v4, v14

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->i:I

    shr-int/2addr v8, v14

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    add-int/lit8 v16, v8, 0x3

    and-int/lit8 v5, v16, -0x4

    add-int/2addr v13, v7

    const/4 v7, 0x0

    :goto_a
    iget v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->k:I

    if-ge v7, v15, :cond_16

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v15, v13}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v13, v5

    const/4 v15, -0x1

    if-eq v1, v15, :cond_f

    if-eq v1, v7, :cond_f

    move/from16 v26, v1

    goto/16 :goto_c

    :cond_f
    iget-object v15, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move/from16 v26, v1

    const/4 v1, 0x1

    if-ne v6, v1, :cond_10

    goto/16 :goto_c

    :cond_10
    const/4 v1, 0x2

    if-ne v6, v1, :cond_15

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->j:I

    if-lez v1, :cond_11

    move v4, v1

    :cond_11
    if-eqz v3, :cond_14

    sget v1, Lcom/badlogic/gdx/graphics/glutils/ETC1;->ETC1_RGB8_OES:I

    if-ne v10, v1, :cond_13

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    move/from16 v27, v3

    const-string v3, "GL_OES_compressed_ETC1_RGB8_texture"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v4, v15, v3}, Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;-><init>(IILjava/nio/ByteBuffer;I)V

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v15}, Lcom/badlogic/gdx/graphics/glutils/ETC1;->decodeImage(Lcom/badlogic/gdx/graphics/glutils/ETC1$ETC1Data;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v1

    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v7

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v19

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v20

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v23

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v24

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v25

    move/from16 v18, v14

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v7

    const/16 v22, 0x0

    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v4

    move/from16 v23, v8

    move-object/from16 v24, v15

    invoke-interface/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_b

    :cond_13
    move/from16 v27, v3

    const/4 v3, 0x0

    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v7

    const/16 v22, 0x0

    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v4

    move/from16 v23, v8

    move-object/from16 v24, v15

    invoke-interface/range {v16 .. v24}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    goto :goto_b

    :cond_14
    move/from16 v27, v3

    const/4 v3, 0x0

    sget-object v16, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v17, v12, v7

    const/16 v22, 0x0

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->b:I

    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v20, v9

    move/from16 v21, v4

    move/from16 v23, v11

    move/from16 v24, v1

    move-object/from16 v25, v15

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_b
    const/4 v1, 0x3

    goto :goto_d

    :cond_15
    :goto_c
    move/from16 v27, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    :goto_d
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v26

    move/from16 v3, v27

    goto/16 :goto_a

    :cond_16
    move/from16 v26, v1

    move/from16 v27, v3

    const/4 v1, 0x3

    const/4 v3, 0x0

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v26

    move/from16 v3, v27

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    goto/16 :goto_9

    :cond_17
    const/4 v4, 0x4

    if-eq v2, v4, :cond_18

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xcf5

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->useMipMaps()Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v12}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->disposePreparedData()V

    return-void

    :cond_1a
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unsupported texture format (only 2D texture are supported in LibGdx for the time being)"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "numberOfFaces must be either 1 or 6"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "either both or none of glType, glFormat must be zero"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Call prepare() before calling consumeCompressedData()"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :goto_e
    throw v1

    :goto_f
    goto :goto_e
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

.method public disposePreparedData()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getData(II)Ljava/nio/ByteBuffer;
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->l:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, -0x4

    add-int/lit8 v0, v0, 0x4

    if-ne v2, p1, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->k:I

    if-ge v4, v5, :cond_2

    if-ne v4, p2, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :cond_0
    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->k:I

    mul-int v3, v3, v4

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "This TextureData implementation directly handles texture formats."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGlInternalFormat()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->e:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->h:I

    return v0
.end method

.method public getNumberOfFaces()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->k:I

    return v0
.end method

.method public getNumberOfMipMapLevels()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->l:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->g:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare()V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zktx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x2800

    new-array v0, v0, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load zktx file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    :goto_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x55

    const-string v3, "Invalid KTX Header"

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x4b

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x58

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, -0x45

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v4, 0x1a

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v2, 0x4030201

    if-eq v0, v2, :cond_3

    const v4, 0x1020304

    if-ne v0, v4, :cond_2

    goto :goto_4

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_4
    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_4

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_4
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->b:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->c:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->d:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->e:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->f:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->g:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->h:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->i:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->j:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->k:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->l:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->l:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->o:Z

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->m:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->m:I

    const/4 v2, 0x0

    :goto_5
    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->l:I

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, -0x4

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->k:I

    mul-int v3, v3, v4

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->n:Ljava/nio/ByteBuffer;

    :cond_8
    return-void

    :cond_9
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Need a file to load from"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public useMipMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/KTXTextureData;->o:Z

    return v0
.end method
