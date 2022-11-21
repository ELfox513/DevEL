.class public Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
.super Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferBuilder;

    invoke-direct {v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferBuilder;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->addBasicColorTextureAttachment(Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->addBasicDepthRenderBuffer()Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->addBasicStencilRenderBuffer()Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    :cond_1
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

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V

    return-void
.end method

.method public static unbind()V
    .locals 0

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->unbind()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->h(Lcom/badlogic/gdx/graphics/Texture;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->i(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->j(Lcom/badlogic/gdx/graphics/Texture;)V

    return-void
.end method

.method public h(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v4

    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method public i(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/GLOnlyTextureData;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->a:I

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->b:I

    iget v4, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->a:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->b:I

    iget v6, p1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->c:I

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/GLOnlyTextureData;-><init>(IIIIII)V

    new-instance p1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {p1, v7}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-object p1
.end method

.method public j(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    return-void
.end method
