.class public abstract Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;
    }
.end annotation


# static fields
.field public static w:Z = false


# instance fields
.field public volatile a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

.field public b:Landroid/view/SurfaceHolder$Callback;

.field public d:I

.field public k:I

.field public p:I

.field public q:I

.field public r:I

.field public volatile s:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

.field public volatile t:Z

.field public volatile u:Z

.field public volatile v:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->b:Landroid/view/SurfaceHolder$Callback;

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->q:I

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->r:I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->s:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->t:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->u:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->v:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->v:[I

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->s:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finalize()V
    .locals 2

    const-string v0, "WallpaperService"

    const-string v1, "service finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getLiveWallpaper()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - getSurfaceHolder()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->v:[I

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->s:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->s:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

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

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - initialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iget-boolean p1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->getTouchEventsForLiveWallpaper:Z

    if-eqz p1, :cond_1

    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x7

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->s:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " > AndroidLiveWallpaperService - onCreate() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "service created"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    return-void
.end method

.method public onCreateApplication()V
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - onCreateApplication()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_0

    const-string v0, " > AndroidLiveWallpaperService - onCreateEngine()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "engine created"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;)V

    return-object v0
.end method

.method public onDeepPauseApplication()V
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, " > AndroidLiveWallpaperService - onDeepPauseApplication()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " > AndroidLiveWallpaperService - onDestroy() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "service destroyed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->b:Landroid/view/SurfaceHolder$Callback;

    :cond_1
    return-void
.end method
