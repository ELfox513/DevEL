.class public final Lr4/ll0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:J

.field public volatile c:I


# direct methods
.method public synthetic constructor <init>(Lr4/ml0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ll0;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lr4/ll0;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr4/ll0;->b:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    iget-object v2, p0, Lr4/ll0;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lr4/ll0;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-wide v5, p0, Lr4/ll0;->b:J

    sget-object v3, Lr4/rz;->l4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v7

    invoke-virtual {v7, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v5, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lr4/ll0;->c:I

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v0

    iget-object v3, p0, Lr4/ll0;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget v2, p0, Lr4/ll0;->c:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    monitor-exit v3

    return-void

    :cond_1
    iput v4, p0, Lr4/ll0;->c:I

    iget v2, p0, Lr4/ll0;->c:I

    if-ne v2, v4, :cond_2

    iput-wide v0, p0, Lr4/ll0;->b:J

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
