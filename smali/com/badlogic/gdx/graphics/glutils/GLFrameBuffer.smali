.class public abstract Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/GLTexture;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# static fields
.field public static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static u:I

.field public static v:Z


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:I

.field public d:I

.field public k:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->t:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->v:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->c()V

    return-void
.end method

.method public static a(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, "Managed buffers/app: { "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/Application;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->t:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static unbind()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->u:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public begin()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bind()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->g()V

    return-void
.end method

.method public bind()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->b:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    return-void
.end method

.method public c()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d()V

    sget-boolean v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->v:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_1

    sput-boolean v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->v:Z

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    const v2, 0x8ca6

    invoke-interface {v7, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    sput v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->u:I

    goto :goto_0

    :cond_0
    sput v9, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->u:I

    :cond_1
    :goto_0
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->b:I

    const v10, 0x8d40

    invoke-interface {v7, v10, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v11, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->a:I

    iget v12, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->b:I

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->h:Z

    const v13, 0x8d41

    if-eqz v1, :cond_2

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->e:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->a:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->g:Z

    if-eqz v1, :cond_3

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->k:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->d:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->a:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->i:Z

    if-eqz v1, :cond_4

    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->f:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->a:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    :cond_4
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->c:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v2, v8, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->r:Z

    const v14, 0x8ce0

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v15

    const/16 v16, 0x0

    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->e(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isColorTexture()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x8d40

    add-int v4, v16, v14

    const/16 v5, 0xde1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v6

    const/16 v17, 0x0

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_7
    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->f:Z

    if-eqz v3, :cond_8

    const v3, 0x8d40

    const v4, 0x8d00

    const/16 v5, 0xde1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v6

    const/16 v17, 0x0

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    goto :goto_2

    :cond_8
    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->g:Z

    if-eqz v1, :cond_6

    const v3, 0x8d40

    const v4, 0x8d20

    const/16 v5, 0xde1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v6

    const/16 v17, 0x0

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    goto :goto_2

    :cond_9
    move/from16 v1, v16

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->e(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v2, v1, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v1

    invoke-interface {v7, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    const/4 v1, 0x0

    :goto_3
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->r:Z

    if-eqz v2, :cond_c

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_b

    add-int v4, v3, v14

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v9}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->b(Lcom/badlogic/gdx/graphics/GLTexture;)V

    :goto_5
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->h:Z

    const v2, 0x8d00

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d:I

    invoke-interface {v7, v10, v2, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    :cond_d
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->g:Z

    const v3, 0x8d20

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->k:I

    invoke-interface {v7, v10, v3, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    :cond_e
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->i:Z

    if-eqz v1, :cond_f

    const v1, 0x821a

    iget v4, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    invoke-interface {v7, v10, v1, v13, v4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    :cond_f
    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/GLTexture;

    iget v4, v4, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-interface {v7, v4, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    goto :goto_6

    :cond_10
    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v4, 0x8cdd

    if-ne v1, v4, :cond_15

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v5, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->h:Z

    if-eqz v6, :cond_15

    iget-boolean v5, v5, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->g:Z

    if-eqz v5, :cond_15

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v6, "GL_OES_packed_depth_stencil"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v6, "GL_EXT_packed_depth_stencil"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_11
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->h:Z

    if-eqz v1, :cond_12

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d:I

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d:I

    :cond_12
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->g:Z

    if-eqz v1, :cond_13

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->k:I

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->k:I

    :cond_13
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->i:Z

    if-eqz v1, :cond_14

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    invoke-interface {v7, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    :cond_14
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    iput-boolean v8, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->q:Z

    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    const v1, 0x88f0

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    invoke-interface {v7, v10, v2, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    invoke-interface {v7, v10, v3, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v1

    :cond_15
    sget v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->u:I

    invoke-interface {v7, v10, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    const v2, 0x8cd5

    if-eq v1, v2, :cond_1e

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->f(Lcom/badlogic/gdx/graphics/GLTexture;)V

    goto :goto_7

    :cond_16
    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->q:Z

    if-eqz v2, :cond_17

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    goto :goto_8

    :cond_17
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->h:Z

    if-eqz v2, :cond_18

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_18
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->g:Z

    if-eqz v2, :cond_19

    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->k:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_19
    :goto_8
    iget v2, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->b:I

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    const v2, 0x8cd6

    if-eq v1, v2, :cond_1d

    const v2, 0x8cd9

    if-eq v1, v2, :cond_1c

    const v2, 0x8cd7

    if-eq v1, v2, :cond_1b

    if-ne v1, v4, :cond_1a

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: unsupported combination of formats"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frame buffer couldn\'t be constructed: unknown error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V

    return-void
.end method

.method public final d()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL30Available()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->i:Z

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->c:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->f:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->g:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->d:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v2, "OES_texture_float"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Float texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Stencil texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Depth texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Multiple render targets not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Packed Stencil/Render render buffers are not available on GLES 2.0"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->f(Lcom/badlogic/gdx/graphics/GLTexture;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->q:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->p:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->h:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->g:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->k:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_3
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->b:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->t:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_4
    return-void
.end method

.method public abstract e(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;",
            ")TT;"
        }
    .end annotation
.end method

.method public end()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->end(IIII)V

    return-void
.end method

.method public end(IIII)V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->unbind()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    return-void
.end method

.method public abstract f(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public g()V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v2, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->a:I

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->b:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/GLTexture;

    return-object v0
.end method

.method public getDepthBufferHandle()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->d:I

    return v0
.end method

.method public getFramebufferHandle()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->b:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->b:I

    return v0
.end method

.method public getStencilBufferHandle()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->k:I

    return v0
.end method

.method public getTextureAttachments()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->s:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->a:I

    return v0
.end method
