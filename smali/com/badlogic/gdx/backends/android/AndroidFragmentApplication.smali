.class public Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;
    }
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field public j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

.field public k0:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field public l0:Lcom/badlogic/gdx/backends/android/AndroidAudio;

.field public m0:Lcom/badlogic/gdx/backends/android/AndroidFiles;

.field public n0:Lcom/badlogic/gdx/backends/android/AndroidNet;

.field public o0:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

.field public p0:Lcom/badlogic/gdx/ApplicationListener;

.field public q0:Z

.field public final r0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final s0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final t0:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public final u0:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/backends/android/AndroidEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public v0:I

.field public w0:Lcom/badlogic/gdx/ApplicationLogger;

.field public x0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->q0:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->r0:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->s0:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/LifecycleListener;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->t0:Lcom/badlogic/gdx/utils/SnapshotArray;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->u0:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    return-void
.end method


# virtual methods
.method public addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->u0:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->u0:Lcom/badlogic/gdx/utils/Array;

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->t0:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->t0:Lcom/badlogic/gdx/utils/SnapshotArray;

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

.method public b0()Lcom/badlogic/gdx/backends/android/AndroidFiles;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;-><init>(Landroid/content/res/AssetManager;Landroid/content/ContextWrapper;Z)V

    return-object v0
.end method

.method public c0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object p3, p3, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-object p1
.end method

.method public final d0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->p0:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getApplicationLogger()Lcom/badlogic/gdx/ApplicationLogger;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->w0:Lcom/badlogic/gdx/ApplicationLogger;

    return-object v0
.end method

.method public getApplicationWindow()Landroid/view/Window;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->l0:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->o0:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->s0:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->m0:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->k0:Lcom/badlogic/gdx/backends/android/AndroidInput;

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->t0:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->n0:Lcom/badlogic/gdx/backends/android/AndroidNet;

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v1

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->r0:Lcom/badlogic/gdx/utils/Array;

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
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public initializeForView(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->load()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplicationLogger;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->resolutionStrategy:Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/surfaceview/FillResolutionStrategy;-><init>()V

    :cond_0
    invoke-direct {v0, p0, p2, v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->a:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-virtual {p0, p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->createInput(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->k0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->createAudio(Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)Lcom/badlogic/gdx/backends/android/AndroidAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->l0:Lcom/badlogic/gdx/backends/android/AndroidAudio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->b0()Lcom/badlogic/gdx/backends/android/AndroidFiles;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->m0:Lcom/badlogic/gdx/backends/android/AndroidFiles;

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidNet;

    invoke-direct {v0, p0, p2}, Lcom/badlogic/gdx/backends/android/AndroidNet;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->n0:Lcom/badlogic/gdx/backends/android/AndroidNet;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->p0:Lcom/badlogic/gdx/ApplicationListener;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidClipboard;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->o0:Lcom/badlogic/gdx/backends/android/AndroidClipboard;

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object p1

    sput-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    iget-boolean p1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useWakelock:Z

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->c0(Z)V

    iget-boolean p1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->useImmersiveMode(Z)V

    iget-boolean p1, p2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getVersion()I

    move-result p1

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;

    invoke-direct {p1}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;-><init>()V

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidVisibilityListener;->createListener(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->k0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "libGDX requires Android API Level 14 or later."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->u0:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->u0:Lcom/badlogic/gdx/utils/Array;

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

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->x0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->x0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->x0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Missing AndroidFragmentApplication.Callbacks. Please implement AndroidFragmentApplication.Callbacks on the parent activity, fragment or target fragment."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->k0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->setKeyboardAvailable(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->x0:Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication$Callbacks;

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->isContinuousRendering()Z

    move-result v0

    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->I:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->I:Z

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->h()V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->k0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->d0()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->clearManagedCaches()V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->c()V

    :cond_1
    sput-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->I:Z

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->setContinuousRendering(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onPauseGLSurfaceView()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    sput-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getAudio()Lcom/badlogic/gdx/Audio;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getNet()Lcom/badlogic/gdx/Net;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->k0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->onResume()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->onResumeGLSurfaceView()V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->q0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->j()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->q0:Z

    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->r0:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->r0:Lcom/badlogic/gdx/utils/Array;

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->u0:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->u0:Lcom/badlogic/gdx/utils/Array;

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

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->t0:Lcom/badlogic/gdx/utils/SnapshotArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->t0:Lcom/badlogic/gdx/utils/SnapshotArray;

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
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setApplicationLogger(Lcom/badlogic/gdx/ApplicationLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->w0:Lcom/badlogic/gdx/ApplicationLogger;

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->v0:I

    return-void
.end method

.method public useImmersiveMode(Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->getVersion()I

    move-result p1

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFragmentApplication;->j0:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
