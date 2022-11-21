.class public Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/Graphics;

.field public b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

.field public c:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Graphics;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->d:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->a:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL30;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL20;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    :goto_0
    sget-object p1, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->LOGGING_LISTENER:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->c:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->a:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->a:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->g:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->a:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->g:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->d:Z

    return-void
.end method

.method public enable()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->a:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->a:Lcom/badlogic/gdx/Graphics;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    check-cast v1, Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->a:Lcom/badlogic/gdx/Graphics;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->d:Z

    return-void
.end method

.method public getCalls()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getCalls()I

    move-result v0

    return v0
.end method

.method public getDrawCalls()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getDrawCalls()I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->c:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-object v0
.end method

.method public getShaderSwitches()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getShaderSwitches()I

    move-result v0

    return v0
.end method

.method public getTextureBindings()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getTextureBindings()I

    move-result v0

    return v0
.end method

.method public getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->d:Z

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->b:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->reset()V

    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->c:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-void
.end method
