.class public final Lr4/df2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/ef2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lr4/y72;

.field public final d:Landroid/content/Context;

.field public final e:Lr4/hp2;

.field public final f:Lr4/s72;

.field public final g:Lr4/gq1;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/i83;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lr4/y72;Landroid/content/Context;Lr4/hp2;Lr4/s72;Lr4/gq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/df2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/df2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lr4/df2;->h:Ljava/lang/String;

    iput-object p4, p0, Lr4/df2;->c:Lr4/y72;

    iput-object p5, p0, Lr4/df2;->d:Landroid/content/Context;

    iput-object p6, p0, Lr4/df2;->e:Lr4/hp2;

    iput-object p7, p0, Lr4/df2;->f:Lr4/s72;

    iput-object p8, p0, Lr4/df2;->g:Lr4/gq1;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Lr4/c82;Landroid/os/Bundle;)Lr4/h83;
    .locals 7

    iget-object v0, p2, Lr4/c82;->d:Landroid/os/Bundle;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-boolean v5, p2, Lr4/c82;->b:Z

    iget-boolean v6, p2, Lr4/c82;->c:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lr4/df2;->d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lr4/h83;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lr4/df2;->d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Lr4/h83;
    .locals 9

    iget-object v0, p0, Lr4/df2;->c:Lr4/y72;

    iget-object v1, p0, Lr4/df2;->h:Ljava/lang/String;

    iget-object v2, p0, Lr4/df2;->e:Lr4/hp2;

    iget-object v2, v2, Lr4/hp2;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lr4/y72;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lr4/s33;

    invoke-virtual {v0}, Lr4/s33;->c()Lr4/y33;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v5, p0, Lr4/df2;->e:Lr4/hp2;

    iget-object v5, v5, Lr4/hp2;->d:Lr4/tt;

    iget-object v5, v5, Lr4/tt;->x:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :cond_0
    new-instance v5, Lr4/ye2;

    invoke-direct {v5, p0, v4, v2, v3}, Lr4/ye2;-><init>(Lr4/df2;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v2, p0, Lr4/df2;->a:Lr4/i83;

    invoke-static {v5, v2}, Lr4/y73;->e(Lr4/d73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v2

    invoke-static {v2}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v2

    sget-object v3, Lr4/rz;->X0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v5

    invoke-virtual {v5, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lr4/df2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v2, v5, v6, v3, v7}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v2

    check-cast v2, Lr4/o73;

    new-instance v3, Lr4/ze2;

    invoke-direct {v3, v4}, Lr4/ze2;-><init>(Ljava/lang/String;)V

    const-class v4, Ljava/lang/Throwable;

    iget-object v5, p0, Lr4/df2;->a:Lr4/i83;

    invoke-static {v2, v4, v3, v5}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/df2;->c:Lr4/y72;

    invoke-virtual {v0}, Lr4/y72;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lr4/s33;

    invoke-virtual {v0}, Lr4/s33;->c()Lr4/y33;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/c82;

    iget-object v4, v2, Lr4/c82;->a:Ljava/lang/String;

    iget-object v5, p0, Lr4/df2;->e:Lr4/hp2;

    iget-object v5, v5, Lr4/hp2;->d:Lr4/tt;

    iget-object v5, v5, Lr4/tt;->x:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    new-instance v6, Lr4/af2;

    invoke-direct {v6, p0, v4, v2, v5}, Lr4/af2;-><init>(Lr4/df2;Ljava/lang/String;Lr4/c82;Landroid/os/Bundle;)V

    iget-object v2, p0, Lr4/df2;->a:Lr4/i83;

    invoke-static {v6, v2}, Lr4/y73;->e(Lr4/d73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v2

    invoke-static {v2}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v2

    sget-object v5, Lr4/rz;->X0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v6

    invoke-virtual {v6, v5}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lr4/df2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v2, v5, v6, v7, v8}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v2

    check-cast v2, Lr4/o73;

    new-instance v5, Lr4/bf2;

    invoke-direct {v5, v4}, Lr4/bf2;-><init>(Ljava/lang/String;)V

    const-class v4, Ljava/lang/Throwable;

    iget-object v6, p0, Lr4/df2;->a:Lr4/i83;

    invoke-static {v2, v4, v5, v6}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lr4/y73;->o(Ljava/lang/Iterable;)Lr4/w73;

    move-result-object v0

    new-instance v2, Lr4/cf2;

    invoke-direct {v2, v1}, Lr4/cf2;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lr4/df2;->a:Lr4/i83;

    invoke-virtual {v0, v2, v1}, Lr4/w73;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lr4/h83;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)",
            "Lr4/h83<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    if-eqz p5, :cond_0

    iget-object p5, p0, Lr4/df2;->f:Lr4/s72;

    invoke-virtual {p5, p1}, Lr4/s72;->a(Ljava/lang/String;)V

    iget-object p5, p0, Lr4/df2;->f:Lr4/s72;

    invoke-virtual {p5, p1}, Lr4/s72;->b(Ljava/lang/String;)Lr4/ed0;

    move-result-object p5

    :goto_0
    move-object v1, p5

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p5, p0, Lr4/df2;->g:Lr4/gq1;

    invoke-virtual {p5, p1}, Lr4/gq1;->c(Ljava/lang/String;)Lr4/ed0;

    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    const-string v1, "Couldn\'t create RTB adapter : "

    invoke-static {v1, p5}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lr4/b82;

    invoke-direct {v7, p1, v1, v0}, Lr4/b82;-><init>(Ljava/lang/String;Lr4/ed0;Lr4/vm0;)V

    if-eqz p4, :cond_1

    iget-object p1, p0, Lr4/df2;->d:Landroid/content/Context;

    invoke-static {p1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    iget-object v3, p0, Lr4/df2;->h:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    iget-object p1, p0, Lr4/df2;->e:Lr4/hp2;

    iget-object v6, p1, Lr4/hp2;->e:Lr4/yt;

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Lr4/ed0;->T0(Lf4/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lr4/yt;Lr4/hd0;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lr4/b82;->a()V

    :goto_2
    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/ef2;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/xe2;

    invoke-direct {v0, p0}, Lr4/xe2;-><init>(Lr4/df2;)V

    iget-object v1, p0, Lr4/df2;->a:Lr4/i83;

    invoke-static {v0, v1}, Lr4/y73;->e(Lr4/d73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
