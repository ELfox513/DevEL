.class public final Lr4/rl;
.super Landroid/view/Surface;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field public static d:Z

.field public static k:Z


# instance fields
.field public final a:Lr4/pl;

.field public b:Z


# direct methods
.method public synthetic constructor <init>(Lr4/pl;Landroid/graphics/SurfaceTexture;ZLr4/ql;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lr4/rl;->a:Lr4/pl;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 6

    const-class v0, Lr4/rl;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lr4/rl;->k:Z

    if-nez v1, :cond_4

    sget v1, Lr4/ll;->a:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v4

    const/16 v5, 0x3055

    invoke-static {v4, v5}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "EGL_EXT_protected_content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x18

    if-ne v1, v4, :cond_1

    sget-object v1, Lr4/ll;->d:Ljava/lang/String;

    const-string v4, "SM-G950"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SM-G955"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    sput-boolean v2, Lr4/rl;->d:Z

    :cond_3
    sput-boolean v3, Lr4/rl;->k:Z

    :cond_4
    sget-boolean p0, Lr4/rl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static h(Landroid/content/Context;Z)Lr4/rl;
    .locals 2

    sget v0, Lr4/ll;->a:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lr4/rl;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lr4/vk;->d(Z)V

    new-instance p0, Lr4/pl;

    invoke-direct {p0}, Lr4/pl;-><init>()V

    invoke-virtual {p0, p1}, Lr4/pl;->a(Z)Lr4/rl;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported prior to API level 17"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final release()V
    .locals 2

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lr4/rl;->a:Lr4/pl;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/rl;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/rl;->a:Lr4/pl;

    invoke-virtual {v1}, Lr4/pl;->b()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/rl;->b:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
