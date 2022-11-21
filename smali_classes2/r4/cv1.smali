.class public final Lr4/cv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/pu1;

.field public final b:Lr4/dq1;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/bv1;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lr4/pu1;Lr4/dq1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/cv1;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr4/cv1;->a:Lr4/pu1;

    iput-object p2, p0, Lr4/cv1;->b:Lr4/dq1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/cv1;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Lr4/cv1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr4/cv1;->d(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lr4/cv1;->a:Lr4/pu1;

    new-instance v1, Lr4/av1;

    invoke-direct {v1, p0}, Lr4/av1;-><init>(Lr4/cv1;)V

    invoke-virtual {v0, v1}, Lr4/pu1;->h(Lr4/n70;)V

    return-void
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lr4/cv1;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lr4/cv1;->e:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lr4/cv1;->a:Lr4/pu1;

    invoke-virtual {v2}, Lr4/pu1;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lr4/cv1;->a:Lr4/pu1;

    invoke-virtual {v2}, Lr4/pu1;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lr4/cv1;->d(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr4/cv1;->a()V

    monitor-exit v1

    return-object v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lr4/cv1;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/bv1;

    invoke-virtual {v3}, Lr4/bv1;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/cv1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/cv1;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/g70;

    iget-object v2, p0, Lr4/cv1;->d:Ljava/util/List;

    new-instance v9, Lr4/bv1;

    iget-object v4, v1, Lr4/g70;->a:Ljava/lang/String;

    iget-object v3, p0, Lr4/cv1;->b:Lr4/dq1;

    invoke-virtual {v3, v4}, Lr4/dq1;->c(Ljava/lang/String;)Lr4/cq1;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_1
    move-object v5, v3

    goto :goto_2

    :cond_1
    iget-object v3, v3, Lr4/cq1;->b:Lr4/rd0;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    iget-boolean v6, v1, Lr4/g70;->b:Z

    iget-object v7, v1, Lr4/g70;->k:Ljava/lang/String;

    iget v8, v1, Lr4/g70;->d:I

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lr4/bv1;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/cv1;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
