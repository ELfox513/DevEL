.class public Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;
.super Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
        "Lcom/badlogic/gdx/graphics/Cubemap;",
        ">;"
    }
.end annotation


# static fields
.field public static final x:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;


# instance fields
.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->values()[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->x:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    return-void
.end method

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

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;

    invoke-direct {v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;-><init>(II)V

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
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->h(Lcom/badlogic/gdx/graphics/Cubemap;)V

    return-void
.end method

.method public bind()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->w:I

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bind()V

    return-void
.end method

.method public bridge synthetic e(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->j(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Cubemap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->k(Lcom/badlogic/gdx/graphics/Cubemap;)V

    return-void
.end method

.method public getSide()Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->w:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->x:[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public h(Lcom/badlogic/gdx/graphics/Cubemap;)V
    .locals 10

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result p1

    invoke-static {}, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->values()[Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v0, v7, v9

    const v1, 0x8d40

    const v2, 0x8ce0

    iget v3, v0, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->glEnum:I

    const/4 v5, 0x0

    move-object v0, v6

    move v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;)V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->glEnum:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v4

    const v1, 0x8d40

    const v2, 0x8ce0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method public j(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/Cubemap;
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

    new-instance p1, Lcom/badlogic/gdx/graphics/Cubemap;

    move-object v0, p1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-object p1
.end method

.method public k(Lcom/badlogic/gdx/graphics/Cubemap;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Cubemap;->dispose()V

    return-void
.end method

.method public nextSide()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->w:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->w:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->getSide()Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBufferCubemap;->i(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;)V

    return v1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No remaining sides."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
