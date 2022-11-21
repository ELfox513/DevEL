.class public final Lr4/kp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public final synthetic c:Lr4/mp;


# direct methods
.method public synthetic constructor <init>(Lr4/mp;[BLr4/lp;)V
    .locals 0

    iput-object p1, p0, Lr4/kp;->c:Lr4/mp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/kp;->a:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/kp;->c:Lr4/mp;

    iget-boolean v1, v0, Lr4/mp;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lr4/mp;->a:Lr4/pc;

    iget-object v1, p0, Lr4/kp;->a:[B

    invoke-interface {v0, v1}, Lr4/pc;->C4([B)V

    iget-object v0, p0, Lr4/kp;->c:Lr4/mp;

    iget-object v0, v0, Lr4/mp;->a:Lr4/pc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/pc;->I0(I)V

    iget-object v0, p0, Lr4/kp;->c:Lr4/mp;

    iget-object v0, v0, Lr4/mp;->a:Lr4/pc;

    iget v1, p0, Lr4/kp;->b:I

    invoke-interface {v0, v1}, Lr4/pc;->K0(I)V

    iget-object v0, p0, Lr4/kp;->c:Lr4/mp;

    iget-object v0, v0, Lr4/mp;->a:Lr4/pc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/pc;->N3([I)V

    iget-object v0, p0, Lr4/kp;->c:Lr4/mp;

    iget-object v0, v0, Lr4/mp;->a:Lr4/pc;

    invoke-interface {v0}, Lr4/pc;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    invoke-static {v1, v0}, Lr4/cm0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final b(I)Lr4/kp;
    .locals 0

    iput p1, p0, Lr4/kp;->b:I

    return-object p0
.end method
