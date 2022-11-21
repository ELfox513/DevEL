.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public final b:Ljava/nio/FloatBuffer;

.field public final d:Ljava/nio/ByteBuffer;

.field public k:I

.field public final p:Z

.field public final q:Z

.field public final r:I

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->t:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->q:Z

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget p3, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int p3, p3, p2

    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->p:Z

    if-eqz p1, :cond_0

    const p1, 0x88e4

    goto :goto_0

    :cond_0
    const p1, 0x88e8

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->r:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b()I

    move-result p3

    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->k:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->t:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8892

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8892

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->r:I

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    return v0
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 11

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->k:I

    const v2, 0x8892

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->r:I

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    if-nez p2, :cond_2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p2

    iget-object v1, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    iget v6, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v10, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v1

    aget v5, p2, v3

    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    iget v6, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, v2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v10, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->t:Z

    return-void
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->k:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->k:I

    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBufferHandle()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->k:I

    return v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    return-void
.end method

.method public setVertices([FII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    shl-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a()V

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, p2, v3

    if-ltz v4, :cond_1

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const p1, 0x8892

    invoke-interface {v0, p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->t:Z

    return-void
.end method

.method public updateVertices(I[FII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->s:Z

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, p1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectSubData;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Buffer must be allocated direct."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
