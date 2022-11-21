.class public final Lr4/p90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lr4/im0;

.field public final e:Lb3/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/i0<",
            "Lr4/j80;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lb3/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/i0<",
            "Lr4/j80;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lr4/o90;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Lb3/i0;Lb3/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/im0;",
            "Ljava/lang/String;",
            "Lb3/i0<",
            "Lr4/j80;",
            ">;",
            "Lb3/i0<",
            "Lr4/j80;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/p90;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lr4/p90;->h:I

    iput-object p3, p0, Lr4/p90;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/p90;->b:Landroid/content/Context;

    iput-object p2, p0, Lr4/p90;->d:Lr4/im0;

    iput-object p4, p0, Lr4/p90;->e:Lb3/i0;

    iput-object p5, p0, Lr4/p90;->f:Lb3/i0;

    return-void
.end method

.method public static synthetic a(Lr4/p90;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/p90;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lr4/p90;Lr4/o90;)Lr4/o90;
    .locals 0

    iput-object p1, p0, Lr4/p90;->g:Lr4/o90;

    return-object p1
.end method

.method public static synthetic c(Lr4/p90;)Lr4/o90;
    .locals 0

    iget-object p0, p0, Lr4/p90;->g:Lr4/o90;

    return-object p0
.end method

.method public static synthetic d(Lr4/p90;I)I
    .locals 0

    iput p1, p0, Lr4/p90;->h:I

    return p1
.end method

.method public static synthetic e(Lr4/p90;)I
    .locals 0

    iget p0, p0, Lr4/p90;->h:I

    return p0
.end method


# virtual methods
.method public final f(Lr4/u;)Lr4/o90;
    .locals 3

    new-instance p1, Lr4/o90;

    iget-object v0, p0, Lr4/p90;->f:Lb3/i0;

    invoke-direct {p1, v0}, Lr4/o90;-><init>(Lb3/i0;)V

    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    new-instance v1, Lr4/t80;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lr4/t80;-><init>(Lr4/p90;Lr4/u;Lr4/o90;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lr4/e90;

    invoke-direct {v0, p0, p1}, Lr4/e90;-><init>(Lr4/p90;Lr4/o90;)V

    new-instance v1, Lr4/f90;

    invoke-direct {v1, p0, p1}, Lr4/f90;-><init>(Lr4/p90;Lr4/o90;)V

    invoke-virtual {p1, v0, v1}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    return-object p1
.end method

.method public final g(Lr4/u;)Lr4/j90;
    .locals 4

    iget-object p1, p0, Lr4/p90;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/p90;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lr4/p90;->g:Lr4/o90;

    if-eqz v1, :cond_0

    iget v2, p0, Lr4/p90;->h:I

    if-nez v2, :cond_0

    new-instance v2, Lr4/u80;

    invoke-direct {v2, p0}, Lr4/u80;-><init>(Lr4/p90;)V

    sget-object v3, Lr4/v80;->a:Lr4/xm0;

    invoke-virtual {v1, v2, v3}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lr4/p90;->g:Lr4/o90;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lr4/cn0;->e()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lr4/p90;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/p90;->g:Lr4/o90;

    invoke-virtual {v0}, Lr4/o90;->f()Lr4/j90;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iput v2, p0, Lr4/p90;->h:I

    invoke-virtual {p0, v1}, Lr4/p90;->f(Lr4/u;)Lr4/o90;

    iget-object v0, p0, Lr4/p90;->g:Lr4/o90;

    invoke-virtual {v0}, Lr4/o90;->f()Lr4/j90;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    iget-object v0, p0, Lr4/p90;->g:Lr4/o90;

    invoke-virtual {v0}, Lr4/o90;->f()Lr4/j90;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_4
    :goto_0
    iput v2, p0, Lr4/p90;->h:I

    invoke-virtual {p0, v1}, Lr4/p90;->f(Lr4/u;)Lr4/o90;

    move-result-object v0

    iput-object v0, p0, Lr4/p90;->g:Lr4/o90;

    invoke-virtual {v0}, Lr4/o90;->f()Lr4/j90;

    move-result-object v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final synthetic h(Lr4/j80;)V
    .locals 0

    invoke-interface {p1}, Lr4/j80;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lr4/p90;->h:I

    :cond_0
    return-void
.end method

.method public final synthetic i(Lr4/u;Lr4/o90;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lr4/p90;->b:Landroid/content/Context;

    iget-object v0, p0, Lr4/p90;->d:Lr4/im0;

    new-instance v1, Lr4/r80;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, v2}, Lr4/r80;-><init>(Landroid/content/Context;Lr4/im0;Lr4/u;Lz2/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lr4/x80;

    invoke-direct {p1, p0, p2, v1}, Lr4/x80;-><init>(Lr4/p90;Lr4/o90;Lr4/j80;)V

    invoke-interface {v1, p1}, Lr4/j80;->u(Lr4/i80;)V

    new-instance p1, Lr4/a90;

    invoke-direct {p1, p0, p2, v1}, Lr4/a90;-><init>(Lr4/p90;Lr4/o90;Lr4/j80;)V

    const-string v0, "/jsLoaded"

    invoke-interface {v1, v0, p1}, Lr4/q90;->A0(Ljava/lang/String;Lr4/u50;)V

    new-instance p1, Lb3/i1;

    invoke-direct {p1}, Lb3/i1;-><init>()V

    new-instance v0, Lr4/b90;

    invoke-direct {v0, p0, v2, v1, p1}, Lr4/b90;-><init>(Lr4/p90;Lr4/u;Lr4/j80;Lb3/i1;)V

    invoke-virtual {p1, v0}, Lb3/i1;->b(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    invoke-interface {v1, p1, v0}, Lr4/q90;->A0(Ljava/lang/String;Lr4/u50;)V

    iget-object p1, p0, Lr4/p90;->c:Ljava/lang/String;

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/p90;->c:Ljava/lang/String;

    invoke-interface {v1, p1}, Lr4/j80;->A(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/p90;->c:Ljava/lang/String;

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/p90;->c:Ljava/lang/String;

    invoke-interface {v1, p1}, Lr4/j80;->Q(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr4/p90;->c:Ljava/lang/String;

    invoke-interface {v1, p1}, Lr4/j80;->s(Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lb3/k2;->i:Lr4/c03;

    new-instance v0, Lr4/d90;

    invoke-direct {v0, p0, p2, v1}, Lr4/d90;-><init>(Lr4/p90;Lr4/o90;Lr4/j80;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Error creating webview."

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    invoke-virtual {v0, p1, v1}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2}, Lr4/cn0;->d()V

    return-void
.end method

.method public final synthetic j(Lr4/o90;Lr4/j80;)V
    .locals 3

    iget-object v0, p0, Lr4/p90;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lr4/cn0;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lr4/cn0;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lr4/cn0;->d()V

    sget-object p1, Lr4/qm0;->e:Lr4/i83;

    invoke-static {p2}, Lr4/z80;->a(Lr4/j80;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
