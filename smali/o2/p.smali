.class public Lo2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj2/e;

.field public final c:Lp2/c;

.field public final d:Lo2/v;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lq2/b;

.field public final g:Lr2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj2/e;Lp2/c;Lo2/v;Ljava/util/concurrent/Executor;Lq2/b;Lr2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lo2/p;->b:Lj2/e;

    iput-object p3, p0, Lo2/p;->c:Lp2/c;

    iput-object p4, p0, Lo2/p;->d:Lo2/v;

    iput-object p5, p0, Lo2/p;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lo2/p;->f:Lq2/b;

    iput-object p7, p0, Lo2/p;->g:Lr2/a;

    return-void
.end method

.method public static synthetic a(Lo2/p;Li2/m;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo2/p;->o(Li2/m;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lo2/p;Li2/m;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lo2/p;->i(Li2/m;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lo2/p;Li2/m;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0, p1}, Lo2/p;->j(Li2/m;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lo2/p;Ljava/lang/Iterable;Li2/m;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo2/p;->k(Ljava/lang/Iterable;Li2/m;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lo2/p;Li2/m;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo2/p;->m(Li2/m;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lo2/p;Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lo2/p;->l(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lo2/p;Li2/m;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lo2/p;->n(Li2/m;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic i(Li2/m;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lo2/p;->c:Lp2/c;

    invoke-interface {v0, p1}, Lp2/c;->d0(Li2/m;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic j(Li2/m;)Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lo2/p;->c:Lp2/c;

    invoke-interface {v0, p1}, Lp2/c;->U(Li2/m;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic k(Ljava/lang/Iterable;Li2/m;J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo2/p;->c:Lp2/c;

    invoke-interface {v0, p1}, Lp2/c;->K0(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lo2/p;->c:Lp2/c;

    iget-object v0, p0, Lo2/p;->g:Lr2/a;

    invoke-interface {v0}, Lr2/a;->getTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, p2, v0, v1}, Lp2/c;->h0(Li2/m;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic l(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo2/p;->c:Lp2/c;

    invoke-interface {v0, p1}, Lp2/c;->z(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic m(Li2/m;J)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo2/p;->c:Lp2/c;

    iget-object v1, p0, Lo2/p;->g:Lr2/a;

    invoke-interface {v1}, Lr2/a;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-interface {v0, p1, v1, v2}, Lp2/c;->h0(Li2/m;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic n(Li2/m;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo2/p;->d:Lo2/v;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Lo2/v;->b(Li2/m;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic o(Li2/m;ILjava/lang/Runnable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo2/p;->f:Lq2/b;

    iget-object v1, p0, Lo2/p;->c:Lp2/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lo2/i;

    invoke-direct {v2, v1}, Lo2/i;-><init>(Lp2/c;)V

    invoke-interface {v0, v2}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    invoke-virtual {p0}, Lo2/p;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo2/p;->f:Lq2/b;

    new-instance v1, Lo2/j;

    invoke-direct {v1, p0, p1, p2}, Lo2/j;-><init>(Lo2/p;Li2/m;I)V

    invoke-interface {v0, v1}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lo2/p;->p(Li2/m;I)V
    :try_end_0
    .catch Lq2/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lo2/p;->d:Lo2/v;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Lo2/v;->b(Li2/m;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    throw p1
.end method


# virtual methods
.method public h()Z
    .locals 2

    iget-object v0, p0, Lo2/p;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Li2/m;I)V
    .locals 9

    iget-object v0, p0, Lo2/p;->b:Lj2/e;

    invoke-virtual {p1}, Li2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lj2/e;->a(Ljava/lang/String;)Lj2/m;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v7, v1

    :cond_0
    iget-object v1, p0, Lo2/p;->f:Lq2/b;

    new-instance v2, Lo2/k;

    invoke-direct {v2, p0, p1}, Lo2/k;-><init>(Lo2/p;Li2/m;)V

    invoke-interface {v1, v2}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo2/p;->f:Lq2/b;

    new-instance v2, Lo2/l;

    invoke-direct {v2, p0, p1}, Lo2/l;-><init>(Lo2/p;Li2/m;)V

    invoke-interface {v1, v2}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v1, v2, p1}, Ll2/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lj2/g;->a()Lj2/g;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/i;

    invoke-virtual {v3}, Lp2/i;->b()Li2/h;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lj2/f;->a()Lj2/f$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lj2/f$a;->b(Ljava/lang/Iterable;)Lj2/f$a;

    move-result-object v1

    invoke-virtual {p1}, Li2/m;->c()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lj2/f$a;->c([B)Lj2/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lj2/f$a;->a()Lj2/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lj2/m;->b(Lj2/f;)Lj2/g;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Lj2/g;->c()Lj2/g$a;

    move-result-object v2

    sget-object v3, Lj2/g$a;->b:Lj2/g$a;

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lo2/p;->f:Lq2/b;

    new-instance v1, Lo2/m;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lo2/m;-><init>(Lo2/p;Ljava/lang/Iterable;Li2/m;J)V

    invoke-interface {v0, v1}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    iget-object v0, p0, Lo2/p;->d:Lo2/v;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-interface {v0, p1, p2, v1}, Lo2/v;->a(Li2/m;IZ)V

    return-void

    :cond_4
    iget-object v2, p0, Lo2/p;->f:Lq2/b;

    new-instance v3, Lo2/n;

    invoke-direct {v3, p0, v5}, Lo2/n;-><init>(Lo2/p;Ljava/lang/Iterable;)V

    invoke-interface {v2, v3}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    invoke-virtual {v1}, Lj2/g;->c()Lj2/g$a;

    move-result-object v2

    sget-object v3, Lj2/g$a;->a:Lj2/g$a;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lj2/g;->b()J

    move-result-wide v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto/16 :goto_0

    :cond_5
    iget-object p2, p0, Lo2/p;->f:Lq2/b;

    new-instance v0, Lo2/o;

    invoke-direct {v0, p0, p1, v7, v8}, Lo2/o;-><init>(Lo2/p;Li2/m;J)V

    invoke-interface {p2, v0}, Lq2/b;->c(Lq2/b$a;)Ljava/lang/Object;

    return-void
.end method

.method public q(Li2/m;ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lo2/p;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lo2/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lo2/h;-><init>(Lo2/p;Li2/m;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
