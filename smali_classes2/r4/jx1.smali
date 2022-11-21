.class public abstract Lr4/jx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/c$a;
.implements Lx3/c$b;


# instance fields
.field public final a:Lr4/vm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/vm0<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public d:Z

.field public k:Z

.field public p:Lr4/og0;

.field public q:Lr4/yf0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    iput-object v0, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/jx1;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/jx1;->d:Z

    iput-boolean v0, p0, Lr4/jx1;->k:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/jx1;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lr4/jx1;->k:Z

    iget-object v1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {v1}, Lx3/c;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {v1}, Lx3/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lr4/jx1;->q:Lr4/yf0;

    invoke-virtual {v1}, Lx3/c;->e()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j0(I)V
    .locals 0

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public t0(Lt3/b;)V
    .locals 2

    const-string p1, "Disconnected from remote ad request service."

    invoke-static {p1}, Lr4/cm0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/jx1;->a:Lr4/vm0;

    new-instance v0, Lr4/yx1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr4/yx1;-><init>(I)V

    invoke-virtual {p1, v0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
