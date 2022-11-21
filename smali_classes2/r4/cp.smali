.class public final Lr4/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$b;


# instance fields
.field public final synthetic a:Lr4/vm0;

.field public final synthetic b:Lr4/dp;


# direct methods
.method public constructor <init>(Lr4/dp;Lr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/cp;->b:Lr4/dp;

    iput-object p2, p0, Lr4/cp;->a:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final t0(Lt3/b;)V
    .locals 3

    iget-object p1, p0, Lr4/cp;->b:Lr4/dp;

    invoke-static {p1}, Lr4/dp;->d(Lr4/dp;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/cp;->a:Lr4/vm0;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Connection failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
