.class public final Lr4/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xa;


# static fields
.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/cc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lr4/dc;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dc;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lr4/cc;)V
    .locals 3

    sget-object v0, Lr4/dc;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i()Lr4/cc;
    .locals 3

    sget-object v0, Lr4/dc;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lr4/cc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lr4/cc;-><init>(Lr4/bc;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cc;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final C(I)Z
    .locals 1

    iget-object v0, p0, Lr4/dc;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final Y(I)V
    .locals 1

    iget-object p1, p0, Lr4/dc;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lr4/dc;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)Lr4/wa;
    .locals 2

    invoke-static {}, Lr4/dc;->i()Lr4/cc;

    move-result-object v0

    iget-object v1, p0, Lr4/dc;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lr4/cc;->a(Landroid/os/Message;Lr4/dc;)Lr4/cc;

    return-object v0
.end method

.method public final d(III)Lr4/wa;
    .locals 2

    invoke-static {}, Lr4/dc;->i()Lr4/cc;

    move-result-object p1

    iget-object v0, p0, Lr4/dc;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lr4/cc;->a(Landroid/os/Message;Lr4/dc;)Lr4/cc;

    return-object p1
.end method

.method public final e(Lr4/wa;)Z
    .locals 1

    iget-object v0, p0, Lr4/dc;->a:Landroid/os/Handler;

    check-cast p1, Lr4/cc;

    invoke-virtual {p1, v0}, Lr4/cc;->b(Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public final f(IJ)Z
    .locals 1

    iget-object p1, p0, Lr4/dc;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lr4/dc;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final h(I)Z
    .locals 1

    iget-object p1, p0, Lr4/dc;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final x(I)Lr4/wa;
    .locals 2

    invoke-static {}, Lr4/dc;->i()Lr4/cc;

    move-result-object v0

    iget-object v1, p0, Lr4/dc;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lr4/cc;->a(Landroid/os/Message;Lr4/dc;)Lr4/cc;

    return-object v0
.end method
