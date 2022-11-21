.class public abstract Lcom/badlogic/gdx/graphics/GLTexture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static r:F


# instance fields
.field public a:I

.field public b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public final glTarget:I

.field public k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public q:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    return-void
.end method

.method public static b(ILcom/badlogic/gdx/graphics/TextureData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;I)V

    return-void
.end method

.method public static getMaxAnisotropicFilterLevel()F
    .locals 4

    sget v0, Lcom/badlogic/gdx/graphics/GLTexture;->r:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_EXT_texture_filter_anisotropic"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v3, 0x84ff

    invoke-interface {v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/GLTexture;->r:F

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/badlogic/gdx/graphics/GLTexture;->r:F

    return v0
.end method

.method public static uploadImageData(ILcom/badlogic/gdx/graphics/TextureData;I)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    :cond_1
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v0, v1, :cond_2

    invoke-interface {p1, p0}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    const/4 v10, 0x1

    if-eq v2, v3, :cond_4

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v2, v1

    move-object v3, v0

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_3
    move-object v0, v1

    const/4 v1, 0x1

    :cond_4
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xcf5

    invoke-interface {v2, v3, v10}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result p2

    invoke-static {p0, v0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

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

    move v3, p0

    move v4, p2

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    :cond_0
    return-void
.end method

.method public bind()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    return-void
.end method

.method public bind(I)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->a()V

    return-void
.end method

.method public getAnisotropicFilter()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    return v0
.end method

.method public abstract getDepth()I
.end method

.method public abstract getHeight()I
.end method

.method public getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getTextureObjectHandle()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    return v0
.end method

.method public getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract isManaged()Z
.end method

.method public setAnisotropicFilter(F)F
    .locals 3

    invoke-static {}, Lcom/badlogic/gdx/graphics/GLTexture;->getMaxAnisotropicFilterLevel()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xde1

    const v2, 0x84fe

    invoke-interface {v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    iput p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    return p1
.end method

.method public setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 3

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result p1

    const/16 v2, 0x2801

    invoke-interface {v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result p2

    const/16 v1, 0x2800

    invoke-interface {p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    return-void
.end method

.method public setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 3

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result p1

    const/16 v2, 0x2802

    invoke-interface {v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result p2

    const/16 v1, 0x2803

    invoke-interface {p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    return-void
.end method

.method public unsafeSetAnisotropicFilter(F)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetAnisotropicFilter(FZ)F

    move-result p1

    return p1
.end method

.method public unsafeSetAnisotropicFilter(FZ)F
    .locals 3

    invoke-static {}, Lcom/badlogic/gdx/graphics/GLTexture;->getMaxAnisotropicFilterLevel()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    if-nez p2, :cond_1

    iget p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, p2, v0}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    return p1

    :cond_1
    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v0, 0xde1

    const v1, 0x84fe

    invoke-interface {p2, v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    iput p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    return p1
.end method

.method public unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    return-void
.end method

.method public unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v0, p1, :cond_1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2801

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    :cond_1
    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq p1, p2, :cond_3

    :cond_2
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget p3, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v0, 0x2800

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v1

    invoke-interface {p1, p3, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    :cond_3
    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V
    .locals 4

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq v0, p1, :cond_1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v2, 0x2802

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    :cond_1
    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq p1, p2, :cond_3

    :cond_2
    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget p3, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/16 v0, 0x2803

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v1

    invoke-interface {p1, p3, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/GLTexture;->p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    :cond_3
    return-void
.end method
