.class public final Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;
.super Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V

    return-void
.end method


# virtual methods
.method public b(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    .locals 9

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->e()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    new-instance v8, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v8, p0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    if-eqz v0, :cond_0

    invoke-virtual {v8, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->D:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget v3, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget v4, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget v5, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget v6, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget v7, p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    :goto_0
    invoke-virtual {v8, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-object v8

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "libGDX requires OpenGL ES 2.0"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()V
    .locals 1

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->g()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->requestRendering()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "waiting for resume synchronization failed!"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public n()Landroid/view/SurfaceHolder;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->v:[I

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroyGLSurfaceView()V
    .locals 3

    const-string v0, "WallpaperService"

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onDetachedFromWindow()V

    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    if-eqz v1, :cond_0

    const-string v1, " > AndroidLiveWallpaper - onDestroy() stopped GLThread managed by GLSurfaceView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "failed to destroy GLSurfaceView\'s thread! GLSurfaceView.onDetachedFromWindow impl changed since API lvl 16!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->n:J

    sub-long v2, v0, v2

    long-to-float p1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v2

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->o:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->o:F

    :goto_0
    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->n:J

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->u:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    iget-boolean v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->w:Z

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    if-eqz v6, :cond_2

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->v:Z

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    iget-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    if-eqz v6, :cond_3

    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->x:Z

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->H:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "AndroidGraphics"

    const-string v6, "resumed"

    invoke-interface {p1, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v2, v5, :cond_5

    :try_start_2
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v5}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    iget-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->q:J

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    iput-wide v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->q:J

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "paused"

    invoke-interface {p1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v4, :cond_8

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidGraphics"

    const-string v3, "destroyed"

    invoke-interface {p1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-wide v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->p:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long p1, v2, v4

    if-lez p1, :cond_9

    iget p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->s:I

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->p:J

    :cond_9
    iget p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->r:I

    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
