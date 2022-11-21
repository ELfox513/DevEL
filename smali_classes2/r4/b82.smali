.class public final Lr4/b82;
.super Lr4/gd0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/ed0;

.field public final d:Lr4/vm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/vm0<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lorg/json/JSONObject;

.field public p:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr4/ed0;Lr4/vm0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/ed0;",
            "Lr4/vm0<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/gd0;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr4/b82;->p:Z

    iput-object p3, p0, Lr4/b82;->d:Lr4/vm0;

    iput-object p1, p0, Lr4/b82;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/b82;->b:Lr4/ed0;

    :try_start_0
    const-string p3, "adapter_version"

    invoke-interface {p2}, Lr4/ed0;->d()Lr4/rd0;

    move-result-object v1

    invoke-virtual {v1}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "sdk_version"

    invoke-interface {p2}, Lr4/ed0;->g()Lr4/rd0;

    move-result-object p2

    invoke-virtual {p2}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "name"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized F(Lr4/lt;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/b82;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    const-string v1, "signal_error"

    iget-object p1, p1, Lr4/lt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lr4/b82;->d:Lr4/vm0;

    iget-object v0, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/b82;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized H(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/b82;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "Adapter returned null signals"

    invoke-virtual {p0, p1}, Lr4/b82;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    const-string v1, "signals"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    iget-object p1, p0, Lr4/b82;->d:Lr4/vm0;

    iget-object v0, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/b82;->p:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/b82;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/b82;->d:Lr4/vm0;

    iget-object v1, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/b82;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/b82;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    const-string v1, "signal_error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lr4/b82;->d:Lr4/vm0;

    iget-object v0, p0, Lr4/b82;->k:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/b82;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
