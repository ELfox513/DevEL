.class public Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# instance fields
.field public final a:Ljava/nio/ShortBuffer;

.field public final b:Ljava/nio/ByteBuffer;

.field public d:I

.field public final k:Z

.field public p:Z

.field public q:Z

.field public final r:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->q:Z

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->k:Z

    const v0, 0x88e4

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->r:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a()I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->d:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->q:Z

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->k:Z

    if-eqz p1, :cond_0

    const p1, 0x88e4

    goto :goto_0

    :cond_0
    const p1, 0x88e8

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->r:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a()I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8893

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->r:I

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    return v0
.end method

.method public bind()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->d:I

    if-eqz v0, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8893

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->q:Z

    return-void

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "IndexBufferObject cannot be used after it has been disposed."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->d:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->d:I

    return-void
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    return-void
.end method

.method public setIndices(Ljava/nio/ShortBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    shl-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->q:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    :cond_0
    return-void
.end method

.method public setIndices([SII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    shl-int/2addr p3, v0

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->q:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const p3, 0x8893

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-interface {p1, p3, p2, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8893

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->q:Z

    return-void
.end method

.method public updateIndices(I[SII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([SILjava/nio/Buffer;I)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->a:Ljava/nio/ShortBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->q:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const p3, 0x8893

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    move-result p4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->b:Ljava/nio/ByteBuffer;

    invoke-interface {p1, p3, p2, p4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObjectSubData;->p:Z

    :cond_0
    return-void
.end method
