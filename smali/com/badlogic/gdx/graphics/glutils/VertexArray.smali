.class public Lcom/badlogic/gdx/graphics/glutils/VertexArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public final b:Ljava/nio/FloatBuffer;

.field public final d:Ljava/nio/ByteBuffer;

.field public k:Z


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->k:Z

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget p2, p2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int p2, p2, p1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public varargs constructor <init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;-><init>(ILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/16 v1, 0x1406

    const/4 v2, 0x0

    if-nez p2, :cond_2

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object p2

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    iget v3, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    iget v4, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v6, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, p2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    iget v4, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v6, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, p2, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, p2, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v3

    aget v5, p2, v2

    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    iget v4, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    if-ne v4, v1, :cond_4

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    iget v6, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v4, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v6, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, v3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    iget v6, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    invoke-virtual {v4, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget v6, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, v3, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, v3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZILjava/nio/Buffer;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->k:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public setVertices([FII)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    if-ltz v3, :cond_1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->k:Z

    return-void
.end method

.method public updateVertices(I[FII)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, p1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexArray;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
