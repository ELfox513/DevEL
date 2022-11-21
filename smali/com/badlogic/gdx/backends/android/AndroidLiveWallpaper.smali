.class public Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# instance fields
.field public a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

.field public b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

.field public d:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field public k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field public p:Lcom/badlogic/gdx/backends/android/AndroidFiles;

.field public q:Lcom/badlogic/gdx/backends/android/AndroidNet;

.field public r:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

.field public s:Lcom/badlogic/gdx/ApplicationListener;

.field public t:Z

.field public final u:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public x:I

.field public y:Lcom/badlogic/gdx/ApplicationLogger;

.field public volatile z:[Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->t:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->u:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->v:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/LifecycleListener;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->w:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->z:[Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    return-void
.end method


# virtual methods
.method public a()Lcom/badlogic/gdx/backends/android/AndroidFiles;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;-><init>(Landroid/content/res/AssetManager;Landroid/content/ContextWrapper;Z)V

    return-object v0
.end method

.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->w:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->w:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidAudio;-><init>(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object v0
.end method

.method public createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 0

    new-instance p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object p3, p3, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object p1
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->s:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->y:Lcom/badlogic/gdx/ApplicationLogger;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->r:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    return-object v0
.end method

.method public getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->v:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->p:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->d:Lcom/badlogic/gdx/backends/android/AndroidInput;

    return-object v0
.end method

.method public getJavaHeap()J
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getLifecycleListeners()Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->w:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    return v0
.end method

.method public getNativeHeap()J
    .locals 2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->q:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public getRunnables()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->u:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :cond_0
    invoke-direct {v0, p0, p2, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;-><init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {p0, p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->d:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->p:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->q:Lcom/badlogic/gdx/backends/android/AndroidNet;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->s:Lcom/badlogic/gdx/ApplicationListener;

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getService()Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->r:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->d:Lcom/badlogic/gdx/backends/android/AndroidInput;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->p:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->q:Lcom/badlogic/gdx/backends/android/AndroidNet;

    sput-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "libGDX requires Android API Level 14 or later."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public notifyColorsChanged(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v2, v0, v1

    const/4 p1, 0x1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    aput-object v1, v0, p1

    const/4 p1, 0x2

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    aput-object p2, v0, p1

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->z:[Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->s:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService$AndroidWallpaperEngine;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyColorsChanged()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->onDestroyGLSurfaceView()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_0

    const-string v0, " > AndroidLiveWallpaper - onPause()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->pause()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->d:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    :cond_1
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->w:Z

    if-eqz v0, :cond_2

    const-string v0, " > AndroidLiveWallpaper - onPause() done!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->d:Lcom/badlogic/gdx/backends/android/AndroidInput;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->p:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->q:Lcom/badlogic/gdx/backends/android/AndroidNet;

    sput-object v1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->k:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->b:Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->j()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->t:Z

    :goto_0
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->u:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->u:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->w:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->w:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->y:Lcom/badlogic/gdx/ApplicationLogger;

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->x:I

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->a:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public useImmersiveMode(Z)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
