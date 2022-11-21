.class public final Lr4/kl0;
.super Lb3/d0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lr4/nl0;


# direct methods
.method public constructor <init>(Lr4/nl0;)V
    .locals 0

    iput-object p1, p0, Lr4/kl0;->c:Lr4/nl0;

    invoke-direct {p0}, Lb3/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lr4/uz;

    iget-object v1, p0, Lr4/kl0;->c:Lr4/nl0;

    invoke-static {v1}, Lr4/nl0;->b(Lr4/nl0;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/kl0;->c:Lr4/nl0;

    invoke-static {v2}, Lr4/nl0;->c(Lr4/nl0;)Lr4/im0;

    move-result-object v2

    iget-object v2, v2, Lr4/im0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lr4/uz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lr4/kl0;->c:Lr4/nl0;

    invoke-static {v1}, Lr4/nl0;->a(Lr4/nl0;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lz2/t;->m()Lr4/xz;

    iget-object v2, p0, Lr4/kl0;->c:Lr4/nl0;

    invoke-static {v2}, Lr4/nl0;->d(Lr4/nl0;)Lr4/wz;

    move-result-object v2

    invoke-static {v2, v0}, Lr4/xz;->a(Lr4/wz;Lr4/uz;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
