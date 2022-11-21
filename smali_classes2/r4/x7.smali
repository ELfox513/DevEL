.class public final Lr4/x7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Lr4/r7;

.field public final d:Landroid/media/AudioManager;

.field public e:Lr4/u7;

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lr4/r7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/x7;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/x7;->b:Landroid/os/Handler;

    iput-object p3, p0, Lr4/x7;->c:Lr4/r7;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    invoke-static {p2}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lr4/x7;->d:Landroid/media/AudioManager;

    const/4 p3, 0x3

    iput p3, p0, Lr4/x7;->f:I

    invoke-static {p2, p3}, Lr4/x7;->h(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lr4/x7;->g:I

    iget p3, p0, Lr4/x7;->f:I

    invoke-static {p2, p3}, Lr4/x7;->i(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lr4/x7;->h:Z

    new-instance p2, Lr4/u7;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lr4/u7;-><init>(Lr4/x7;Lr4/s7;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p2, p0, Lr4/x7;->e:Lr4/u7;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    invoke-static {p2, p3, p1}, Lr4/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lr4/x7;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lr4/x7;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic f(Lr4/x7;)V
    .locals 0

    invoke-virtual {p0}, Lr4/x7;->g()V

    return-void
.end method

.method public static h(Landroid/media/AudioManager;I)I
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lr4/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/media/AudioManager;I)Z
    .locals 2

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lr4/v7;->a(Landroid/media/AudioManager;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lr4/x7;->h(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    iget p1, p0, Lr4/x7;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lr4/x7;->f:I

    invoke-virtual {p0}, Lr4/x7;->g()V

    iget-object p1, p0, Lr4/x7;->c:Lr4/r7;

    check-cast p1, Lr4/n7;

    iget-object v0, p1, Lr4/n7;->a:Lr4/q7;

    invoke-static {v0}, Lr4/q7;->X(Lr4/q7;)Lr4/x7;

    move-result-object v0

    invoke-static {v0}, Lr4/q7;->I(Lr4/x7;)Lr4/m3;

    move-result-object v0

    iget-object v1, p1, Lr4/n7;->a:Lr4/q7;

    invoke-static {v1}, Lr4/q7;->f0(Lr4/q7;)Lr4/m3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/m3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lr4/n7;->a:Lr4/q7;

    invoke-static {v1, v0}, Lr4/q7;->g0(Lr4/q7;Lr4/m3;)Lr4/m3;

    iget-object p1, p1, Lr4/n7;->a:Lr4/q7;

    invoke-static {p1}, Lr4/q7;->V(Lr4/q7;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/w6;

    invoke-interface {v1, v0}, Lr4/w6;->t(Lr4/m3;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()I
    .locals 2

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lr4/x7;->d:Landroid/media/AudioManager;

    iget v1, p0, Lr4/x7;->f:I

    invoke-static {v0, v1}, Lr4/w7;->a(Landroid/media/AudioManager;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lr4/x7;->d:Landroid/media/AudioManager;

    iget v1, p0, Lr4/x7;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lr4/x7;->e:Lr4/u7;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lr4/x7;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    invoke-static {v1, v2, v0}, Lr4/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/x7;->e:Lr4/u7;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lr4/x7;->d:Landroid/media/AudioManager;

    iget v1, p0, Lr4/x7;->f:I

    invoke-static {v0, v1}, Lr4/x7;->h(Landroid/media/AudioManager;I)I

    move-result v0

    iget-object v1, p0, Lr4/x7;->d:Landroid/media/AudioManager;

    iget v2, p0, Lr4/x7;->f:I

    invoke-static {v1, v2}, Lr4/x7;->i(Landroid/media/AudioManager;I)Z

    move-result v1

    iget v2, p0, Lr4/x7;->g:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lr4/x7;->h:Z

    if-eq v2, v1, :cond_1

    :cond_0
    iput v0, p0, Lr4/x7;->g:I

    iput-boolean v1, p0, Lr4/x7;->h:Z

    iget-object v2, p0, Lr4/x7;->c:Lr4/r7;

    check-cast v2, Lr4/n7;

    iget-object v2, v2, Lr4/n7;->a:Lr4/q7;

    invoke-static {v2}, Lr4/q7;->V(Lr4/q7;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/w6;

    invoke-interface {v3, v0, v1}, Lr4/w6;->B(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
