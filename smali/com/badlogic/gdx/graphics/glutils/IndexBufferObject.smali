.class public Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# instance fields
.field public final a:Ljava/nio/ShortBuffer;

.field public final b:Ljava/nio/ByteBuffer;

.field public final d:Z

.field public k:I

.field public final p:Z

.field public q:Z

.field public r:Z

.field public final s:I

.field public final t:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->r:Z

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->t:Z

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->p:Z

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->d:Z

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->k:I

    if-eqz p1, :cond_2

    const p1, 0x88e4

    goto :goto_0

    :cond_2
    const p1, 0x88e8

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->s:I

    return-void
.end method

.method public constructor <init>(ZLjava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->r:Z

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->t:Z

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->p:Z

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->d:Z

    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->k:I

    if-eqz p1, :cond_1

    const p1, 0x88e4

    goto :goto_1

    :cond_1
    const p1, 0x88e8

    :goto_1
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->s:I

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->k:I

    if-eqz v0, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8893

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->s:I

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->r:Z

    return-void

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No buffer allocated!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->k:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->k:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    :goto_0
    return v0
.end method

.method public invalidate()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    return-void
.end method

.method public setIndices(Ljava/nio/ShortBuffer;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->r:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v0, 0x8893

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->s:I

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    :cond_0
    return-void
.end method

.method public setIndices([SII)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    shl-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->r:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const p3, 0x8893

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->s:I

    invoke-interface {p1, p3, v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->r:Z

    return-void
.end method

.method public updateIndices(I[SII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([SILjava/nio/Buffer;I)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->a:Ljava/nio/ShortBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->r:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const p3, 0x8893

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result p4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->s:I

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->q:Z

    :cond_0
    return-void
.end method
