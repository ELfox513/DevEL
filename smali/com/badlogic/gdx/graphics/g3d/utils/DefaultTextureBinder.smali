.class public final Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# static fields
.field public static final LRU:I = 0x1

.field public static final MAX_GLES_UNITS:I = 0x20

.field public static final ROUNDROBIN:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Lcom/badlogic/gdx/graphics/GLTexture;

.field public d:[I

.field public final e:I

.field public f:Z

.field public g:I

.field public h:I

.field public final i:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

.field public j:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->g:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->h:I

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->i:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->j:I

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->d()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gez p3, :cond_0

    sub-int p3, v0, p2

    :cond_0
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-gt v1, v0, :cond_2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->e:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->a:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->b:I

    new-array p2, p3, [Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->c:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    new-array p1, p3, [I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->d:[I

    return-void

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Illegal arguments"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d()I
    .locals 3

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8872

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I
    .locals 4

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->f:Z

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->a:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->b(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->a:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->c(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->f:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->g:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->g:I

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    add-int/2addr v2, v1

    invoke-interface {p2, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->h:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->h:I

    :goto_1
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, p2, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return v1
.end method

.method public final b(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->b:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->d:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->c:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v4, v5, v4

    if-ne v4, p1, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->f:Z

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v2, -0x1

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->d:[I

    aget v2, v2, v1

    :goto_2
    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->d:[I

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->d:[I

    aput v2, v1, v0

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->c:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v0, v2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->a:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    :cond_5
    return v2
.end method

.method public begin()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->c:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->d:[I

    if-eqz v1, :cond_0

    aput v0, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->i:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->i:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->a(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->a(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->b:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->j:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->c:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v1, v1, v3

    if-ne v1, p1, :cond_0

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->f:Z

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->j:I

    add-int/2addr v0, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->j:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->c:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->a:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->j:I

    return p1
.end method

.method public end()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    return-void
.end method

.method public final getBindCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->h:I

    return v0
.end method

.method public final getReuseCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->g:I

    return v0
.end method

.method public final resetCounts()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->g:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->h:I

    return-void
.end method
