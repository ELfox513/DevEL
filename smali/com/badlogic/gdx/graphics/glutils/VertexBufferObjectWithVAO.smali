.class public Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/glutils/VertexData;


# static fields
.field public static final w:Ljava/nio/IntBuffer;


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public final b:Ljava/nio/FloatBuffer;

.field public final d:Ljava/nio/ByteBuffer;

.field public final k:Z

.field public p:I

.field public final q:Z

.field public final r:I

.field public s:Z

.field public t:Z

.field public u:I

.field public v:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->w:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->t:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->u:I

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->q:Z

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget p3, p3, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    mul-int p3, p3, p2

    invoke-static {p3}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->k:Z

    invoke-virtual {p3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    if-eqz p1, :cond_0

    const p1, 0x88e4

    goto :goto_0

    :cond_0
    const p1, 0x88e8

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->r:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d()V

    return-void
.end method

.method public varargs constructor <init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    return-void
.end method

.method public constructor <init>(ZLjava/nio/ByteBuffer;Lcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->t:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->u:I

    new-instance v1, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->q:Z

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->k:Z

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    if-eqz p1, :cond_0

    const p1, 0x88e4

    goto :goto_0

    :cond_0
    const p1, 0x88e8

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->r:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 11

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v3

    if-eqz v0, :cond_5

    if-nez p2, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    if-ge v4, v3, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    array-length v0, p2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v0, :cond_5

    if-ge v4, v3, :cond_5

    aget v0, p2, v4

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    if-ne v0, v5, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    if-nez v0, :cond_8

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8892

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    invoke-interface {v0, v1, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->f(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    :goto_6
    if-ge v2, v3, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_7

    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    aget v4, p2, v2

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :goto_7
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    if-gez v5, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->enableVertexAttribute(I)V

    iget v6, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v7, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iget-boolean v8, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v9, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    iget v10, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setVertexAttribute(IIIZII)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/graphics/GL20;)V
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    const v1, 0x8892

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->r:I

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    :cond_0
    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->u:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b(Lcom/badlogic/gdx/graphics/GL20;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->t:Z

    return-void
.end method

.method public final c()V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->t:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    const v2, 0x8892

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->r:I

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->w:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->u:I

    return-void
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const v1, 0x8892

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->e()V

    return-void
.end method

.method public final e()V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->w:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->u:I

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    iput v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->u:I

    :cond_0
    return-void
.end method

.method public final f(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->v:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->disableVertexAttribute(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getNumMaxVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getNumVertices()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->a:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v1, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->p:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    return-void
.end method

.method public setVertices([FII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, p3, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->c()V

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V

    return-void
.end method

.method public unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;[I)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->t:Z

    return-void
.end method

.method public updateVertices(I[FII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->s:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3, p4, p1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FIILjava/nio/Buffer;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->b:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObjectWithVAO;->c()V

    return-void
.end method
