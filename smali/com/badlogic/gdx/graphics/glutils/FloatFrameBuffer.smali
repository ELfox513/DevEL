.class public Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;
.super Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;-><init>(II)V

    const p1, 0x8814

    const/16 p2, 0x1908

    const/16 v1, 0x1406

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->addFloatAttachment(IIIZ)Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->addBasicDepthRenderBuffer()Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    :cond_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->c()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FloatFrameBuffer;->i(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->a:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->b:I

    iget v3, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->a:I

    iget v4, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->b:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->c:I

    iget-boolean v6, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->e:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FloatTextureData;-><init>(IIIIIZ)V

    new-instance p1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {p1, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :goto_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-object p1
.end method
