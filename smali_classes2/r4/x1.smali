.class public final Lr4/x1;
.super Lr4/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 7

    const-string v2, "DVrAFpWxz2kcLonXDVqzAxxY5qZgb6+MyY8HJZUy9HF2czdhCSx5Lbv7dDVJMgy/"

    const-string v3, "AdToINYaWmfqYE6WezllyxILgCbRf0l/sf/vZralbBA="

    const/16 v6, 0x33

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lr4/q0;

    invoke-direct {v2, v1}, Lr4/q0;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v3, v2, Lr4/q0;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lr4/za4;->C(J)Lr4/za4;

    iget-object v1, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v2, v2, Lr4/q0;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr4/za4;->D(J)Lr4/za4;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
