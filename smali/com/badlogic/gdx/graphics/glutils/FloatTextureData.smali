.class public Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->g:Z

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->a:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->b:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->c:I

    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->d:I

    iput p5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->e:I

    iput-boolean p6, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->f:Z

    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 11

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL30Available()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_ARB_texture_float"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Extension GL_ARB_texture_float not supported!"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->c:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->a:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->b:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->d:I

    const/16 v9, 0x1406

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->h:Ljava/nio/FloatBuffer;

    move v2, p1

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "OES_texture_float"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    const/16 v4, 0x1908

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->a:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->b:I

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1406

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->h:Ljava/nio/FloatBuffer;

    move v2, p1

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_2
    return-void

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Extension OES_texture_float not supported!"

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

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->h:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->b:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->a:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->g:Z

    return v0
.end method

.method public prepare()V
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->g:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGLVersion()Lcom/badlogic/gdx/graphics/glutils/GLVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->getType()Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->c:I

    const v3, 0x881a

    if-eq v0, v3, :cond_0

    const v3, 0x8814

    :cond_0
    const v3, 0x881b

    if-eq v0, v3, :cond_1

    const v3, 0x8815

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v2, 0x3

    :cond_2
    const v3, 0x822f

    if-eq v0, v3, :cond_3

    const v3, 0x8230

    if-ne v0, v3, :cond_4

    :cond_3
    const/4 v2, 0x2

    :cond_4
    const v3, 0x822d

    if-eq v0, v3, :cond_5

    const v3, 0x822e

    if-ne v0, v3, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->a:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->b:I

    mul-int v0, v0, v3

    mul-int v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->h:Ljava/nio/FloatBuffer;

    :cond_7
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;->g:Z

    return-void

    :cond_8
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
