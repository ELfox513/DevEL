.class public final Lr4/pf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lr4/vk0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lt2/b;

.field public final c:Lr4/sx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt2/b;Lr4/sx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pf0;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/pf0;->b:Lt2/b;

    iput-object p3, p0, Lr4/pf0;->c:Lr4/sx;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lr4/vk0;
    .locals 3

    const-class v0, Lr4/pf0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/pf0;->d:Lr4/vk0;

    if-nez v1, :cond_0

    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v1

    new-instance v2, Lr4/cb0;

    invoke-direct {v2}, Lr4/cb0;-><init>()V

    invoke-virtual {v1, p0, v2}, Lr4/wu;->l(Landroid/content/Context;Lr4/fb0;)Lr4/vk0;

    move-result-object p0

    sput-object p0, Lr4/pf0;->d:Lr4/vk0;

    :cond_0
    sget-object p0, Lr4/pf0;->d:Lr4/vk0;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Li3/c;)V
    .locals 6

    iget-object v0, p0, Lr4/pf0;->a:Landroid/content/Context;

    invoke-static {v0}, Lr4/pf0;->a(Landroid/content/Context;)Lr4/vk0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    invoke-virtual {p1, v0}, Li3/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lr4/pf0;->a:Landroid/content/Context;

    invoke-static {v1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v1

    iget-object v2, p0, Lr4/pf0;->c:Lr4/sx;

    if-nez v2, :cond_1

    new-instance v2, Lr4/ut;

    invoke-direct {v2}, Lr4/ut;-><init>()V

    invoke-virtual {v2}, Lr4/ut;->a()Lr4/tt;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v3, Lr4/xt;->a:Lr4/xt;

    iget-object v4, p0, Lr4/pf0;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lr4/xt;->a(Landroid/content/Context;Lr4/sx;)Lr4/tt;

    move-result-object v2

    :goto_0
    new-instance v3, Lr4/zk0;

    iget-object v4, p0, Lr4/pf0;->b:Lt2/b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lr4/zk0;-><init>(Ljava/lang/String;Ljava/lang/String;Lr4/yt;Lr4/tt;)V

    :try_start_0
    new-instance v2, Lr4/of0;

    invoke-direct {v2, p0, p1}, Lr4/of0;-><init>(Lr4/pf0;Li3/c;)V

    invoke-interface {v0, v1, v3, v2}, Lr4/vk0;->k5(Lf4/a;Lr4/zk0;Lr4/sk0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Internal Error."

    invoke-virtual {p1, v0}, Li3/c;->a(Ljava/lang/String;)V

    return-void
.end method
