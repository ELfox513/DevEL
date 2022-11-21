.class public Lcom/badlogic/gdx/backends/android/AndroidApplication;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/backends/android/AndroidEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

.field public audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field public b:I

.field public clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

.field public d:Z

.field public final executedRunnables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

.field public firstResume:Z

.field public graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

.field public handler:Landroid/os/Handler;

.field public input:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field public final lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lcom/badlogic/gdx/ApplicationListener;

.field public logLevel:I

.field public net:Lcom/badlogic/gdx/backends/android/AndroidNet;

.field public final runnables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public useImmersiveMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/LifecycleListener;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->b:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :cond_0
    invoke-direct {v0, p0, p2, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {p0, p0, p0, v0, p2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {p0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    iget-boolean p1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const/4 p1, 0x1

    if-nez p3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v0, "AndroidApplication"

    const-string v1, "Content already displayed, cannot request FEATURE_NO_TITLE"

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v0, 0x400

    invoke-virtual {p3, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v0, 0x800

    invoke-virtual {p3, v0}, Landroid/view/Window;->clearFlags(I)V

    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {p3}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-boolean p2, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->createWakeLock(Z)V

    iget-boolean p2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode(Z)V

    iget-boolean p2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result p2

    const/16 p3, 0x13

    if-lt p2, p3, :cond_2

    new-instance p2, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;

    invoke-direct {p2}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;-><init>()V

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;->createListener(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->keyboard:I

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "libGDX requires Android API Level 14 or later."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a:Lcom/badlogic/gdx/utils/Array;

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

.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

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

.method public createFiles()Lcom/badlogic/gdx/backends/android/AndroidFiles;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;-><init>(Landroid/content/res/AssetManager;Landroid/content/ContextWrapper;Z)V

    return-object v0
.end method

.method public createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 0

    new-instance p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object p2, p2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {p1, p0, p0, p2, p4}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object p1
.end method

.method public createLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public createWakeLock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->listener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->clipboard:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->executedRunnables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->files:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->net:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

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

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-void
.end method

.method public initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    return-void
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/ApplicationLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidEventListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidEventListener;->onActivityResult(IILandroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuousRendering()Z

    move-result v0

    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->I:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->I:Z

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h()V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c()V

    :cond_0
    sput-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->I:Z

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->input:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->firstResume:Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->d:Z

    iget v2, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->b:I

    if-eq v2, v0, :cond_2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->d:Z

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode:Z

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->useImmersiveMode(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->b:I

    iget-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->audio:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidAudio;->resume()V

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->d:Z

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->b:I

    :cond_1
    :goto_0
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->runnables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->lifecycleListeners:Lcom/badlogic/gdx/utils/SnapshotArray;

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

.method public setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->applicationLogger:Lcom/badlogic/gdx/ApplicationLogger;

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->logLevel:I

    return-void
.end method

.method public useImmersiveMode(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getVersion()I

    move-result p1

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
