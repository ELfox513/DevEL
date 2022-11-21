.class public Lcom/badlogic/gdx/graphics/glutils/IndexArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/IndexData;


# instance fields
.field public final a:Ljava/nio/ShortBuffer;

.field public final b:Ljava/nio/ByteBuffer;

.field public final d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->d:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getNumIndices()I
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getNumMaxIndices()I
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    :goto_0
    return v0
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public setIndices(Ljava/nio/ShortBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setIndices([SII)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->a:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    shl-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method

.method public updateIndices(I[SII)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p1, p4}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([SILjava/nio/Buffer;I)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/IndexArray;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
