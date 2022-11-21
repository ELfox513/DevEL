.class public Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;
.super Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;
.source "SourceFile"


# instance fields
.field public final g:Lcom/badlogic/gdx/graphics/GL20;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL20;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->f:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->onError(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public glActiveTexture(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glAttachShader(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glBindAttribLocation(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBindFramebuffer(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBindRenderbuffer(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBindTexture(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->b:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBlendColor(FFFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendColor(FFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquation(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquationSeparate(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glClear(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearDepthf(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glClearStencil(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearStencil(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glColorMask(ZZZZ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glCompileShader(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexImage2D(IIIIIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexSubImage2D(IIIIIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glCreateProgram()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return v0
.end method

.method public glCreateShader(I)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glCullFace(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCullFace(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteBuffer(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteFramebuffer(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteProgram(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteRenderbuffer(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteShader(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteTexture(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDetachShader(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDetachShader(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDisable(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDrawArrays(III)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->e:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->e:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->e:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->c:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glEnable(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glFinish()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFinish()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glFlush()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFlush()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glFrontFace(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glFrontFace(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGenBuffer()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return v0
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGenFramebuffer()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGenRenderbuffer()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return v0
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGenTexture()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenTextures(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGenerateMipmap(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-object p1
.end method

.method public glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-object p1
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetBooleanv(ILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetError()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-object p1
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-object p1
.end method

.method public glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-object p1
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribPointerv(IILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glHint(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glHint(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsBuffer(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glIsEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsEnabled(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glIsFramebuffer(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsFramebuffer(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glIsProgram(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsProgram(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glIsRenderbuffer(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsRenderbuffer(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glIsShader(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsShader(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glIsTexture(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsTexture(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return p1
.end method

.method public glLineWidth(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLineWidth(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glLinkProgram(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPolygonOffset(FF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 10

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glReleaseShaderCompiler()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glReleaseShaderCompiler()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glSampleCoverage(FZ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glScissor(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFunc(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFuncSeparate(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glStencilMask(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMask(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMaskSeparate(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glStencilOp(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOp(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOpSeparate(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform1f(IF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform1fv(II[FI)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform1i(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform1iv(II[II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(II[II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform2f(IFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform2fv(II[FI)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform2i(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform2iv(II[II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2iv(II[II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform3f(IFFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform3fv(II[FI)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform3i(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform3iv(II[II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3iv(II[II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform4f(IFFFF)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform4fv(II[FI)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform4i(IIIII)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniform4iv(II[II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4iv(II[II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniformMatrix2fv(IIZ[FI)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix2fv(IIZ[FI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniformMatrix3fv(IIZ[FI)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZ[FI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUniformMatrix4fv(IIZ[FI)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glUseProgram(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->d:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glValidateProgram(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glValidateProgram(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1f(IF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2f(IFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3f(IFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib4f(IFFFF)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttribPointer(IIIZII)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->a()V

    return-void
.end method
