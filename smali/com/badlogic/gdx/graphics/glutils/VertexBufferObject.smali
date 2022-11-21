.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public b:Ljava/nio/FloatBuffer;

.field public d:Ljava/nio/ByteBuffer;

.field public k:Z

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->s:Z

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->p:I

    iget v1, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int v1, v1, p2

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, p3}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V

    if-eqz p1, :cond_0

    const p1, 0x88e4

    goto :goto_0

    :cond_0
    const p1, 0x88e8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->c(I)V

    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->s:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8892

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->q:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    :cond_0
    return-void
.end method

.method public b(Ljava/nio/Buffer;ZLcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->s:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    instance-of p3, p1, Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->k:Z

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Only ByteBuffer is currently supported"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Cannot change attributes while VBO is bound"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 11

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->p:I

    const v2, 0x8892

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v1, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->q:I

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    if-nez p2, :cond_2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

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

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

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

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

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

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, v2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v10, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->s:Z

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->s:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->q:I

    return-void

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Cannot change usage while VBO is bound"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->p:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->p:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    return-void
.end method

.method public setVertices([FII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a()V

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

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

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->s:Z

    return-void
.end method

.method public updateVertices(I[FII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->r:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, p1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->b:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->a()V

    return-void
.end method
