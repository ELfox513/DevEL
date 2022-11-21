.class public final Lr4/b72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/f;


# instance fields
.field public final a:Lr4/h71;

.field public final b:Lr4/b81;

.field public final c:Lr4/ef1;

.field public final d:Lr4/xe1;

.field public final e:Lr4/oz0;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lr4/h71;Lr4/b81;Lr4/ef1;Lr4/xe1;Lr4/oz0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lr4/b72;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lr4/b72;->a:Lr4/h71;

    iput-object p2, p0, Lr4/b72;->b:Lr4/b81;

    iput-object p3, p0, Lr4/b72;->c:Lr4/ef1;

    iput-object p4, p0, Lr4/b72;->d:Lr4/xe1;

    iput-object p5, p0, Lr4/b72;->e:Lr4/oz0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/b72;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/b72;->a:Lr4/h71;

    invoke-virtual {v0}, Lr4/h71;->F0()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/b72;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/b72;->b:Lr4/b81;

    invoke-virtual {v0}, Lr4/b81;->zza()V

    iget-object v0, p0, Lr4/b72;->c:Lr4/ef1;

    invoke-virtual {v0}, Lr4/ef1;->zza()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized c(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/b72;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/b72;->e:Lr4/oz0;

    invoke-virtual {v0}, Lr4/oz0;->g()V

    iget-object v0, p0, Lr4/b72;->d:Lr4/xe1;

    invoke-virtual {v0, p1}, Lr4/xe1;->T0(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
