.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# instance fields
.field public volatile m:Lf1/q;

.field public volatile n:Lf1/b;

.field public volatile o:Lf1/t;

.field public volatile p:Lf1/h;

.field public volatile q:Lf1/k;

.field public volatile r:Lf1/n;

.field public volatile s:Lf1/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method public static synthetic D(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic E(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic F(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic G(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic H(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic I(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic J(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic K(Landroidx/work/impl/WorkDatabase_Impl;Lq0/b;)Lq0/b;
    .locals 0

    iput-object p1, p0, Ln0/e;->a:Lq0/b;

    return-object p1
.end method

.method public static synthetic L(Landroidx/work/impl/WorkDatabase_Impl;Lq0/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/e;->m(Lq0/b;)V

    return-void
.end method

.method public static synthetic M(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic N(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln0/e;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public A()Lf1/n;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lf1/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lf1/n;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lf1/n;

    if-nez v0, :cond_1

    new-instance v0, Lf1/o;

    invoke-direct {v0, p0}, Lf1/o;-><init>(Ln0/e;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lf1/n;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lf1/n;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public B()Lf1/q;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lf1/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lf1/q;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lf1/q;

    if-nez v0, :cond_1

    new-instance v0, Lf1/r;

    invoke-direct {v0, p0}, Lf1/r;-><init>(Ln0/e;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lf1/q;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lf1/q;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public C()Lf1/t;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lf1/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lf1/t;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lf1/t;

    if-nez v0, :cond_1

    new-instance v0, Lf1/u;

    invoke-direct {v0, p0}, Lf1/u;-><init>(Ln0/e;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lf1/t;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lf1/t;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Landroidx/room/c;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Landroidx/room/c;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "Dependency"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "WorkSpec"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "WorkTag"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "SystemIdInfo"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "WorkName"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "WorkProgress"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "Preference"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/c;-><init>(Ln0/e;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method public f(Ln0/a;)Lq0/c;
    .locals 4

    new-instance v0, Ln0/h;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$a;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$a;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "c103703e120ae8cc73c9248622f3cd1e"

    const-string v3, "49f946663a8deb7054212b8adda248c6"

    invoke-direct {v0, p1, v1, v2, v3}, Ln0/h;-><init>(Ln0/a;Ln0/h$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Ln0/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lq0/c$b;->a(Landroid/content/Context;)Lq0/c$b$a;

    move-result-object v1

    iget-object v2, p1, Ln0/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lq0/c$b$a;->c(Ljava/lang/String;)Lq0/c$b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq0/c$b$a;->b(Lq0/c$a;)Lq0/c$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/c$b$a;->a()Lq0/c$b;

    move-result-object v0

    iget-object p1, p1, Ln0/a;->a:Lq0/c$c;

    invoke-interface {p1, v0}, Lq0/c$c;->a(Lq0/c$b;)Lq0/c;

    move-result-object p1

    return-object p1
.end method

.method public t()Lf1/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lf1/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lf1/b;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lf1/b;

    if-nez v0, :cond_1

    new-instance v0, Lf1/c;

    invoke-direct {v0, p0}, Lf1/c;-><init>(Ln0/e;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lf1/b;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lf1/b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public x()Lf1/e;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lf1/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lf1/e;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lf1/e;

    if-nez v0, :cond_1

    new-instance v0, Lf1/f;

    invoke-direct {v0, p0}, Lf1/f;-><init>(Ln0/e;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lf1/e;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lf1/e;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public y()Lf1/h;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lf1/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lf1/h;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lf1/h;

    if-nez v0, :cond_1

    new-instance v0, Lf1/i;

    invoke-direct {v0, p0}, Lf1/i;-><init>(Ln0/e;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lf1/h;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lf1/h;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public z()Lf1/k;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lf1/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lf1/k;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lf1/k;

    if-nez v0, :cond_1

    new-instance v0, Lf1/l;

    invoke-direct {v0, p0}, Lf1/l;-><init>(Ln0/e;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lf1/k;

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lf1/k;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
