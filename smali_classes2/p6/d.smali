.class public Lp6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp6/f;


# static fields
.field public static final d:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public a:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lp6/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lp6/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp6/a;

    invoke-direct {v0}, Lp6/a;-><init>()V

    sput-object v0, Lp6/d;->d:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lp6/e;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ls5/w;

    new-instance v1, Lp6/c;

    invoke-direct {v1, p1}, Lp6/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ls5/w;-><init>(Lq6/b;)V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v9, Lp6/d;->d:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, v0, p2, p1}, Lp6/d;-><init>(Lq6/b;Ljava/util/Set;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lq6/b;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/b<",
            "Lp6/g;",
            ">;",
            "Ljava/util/Set<",
            "Lp6/e;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/d;->a:Lq6/b;

    iput-object p2, p0, Lp6/d;->b:Ljava/util/Set;

    iput-object p3, p0, Lp6/d;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lp6/d;->h(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lp6/g;
    .locals 0

    invoke-static {p0}, Lp6/d;->g(Landroid/content/Context;)Lp6/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ls5/e;)Lp6/f;
    .locals 0

    invoke-static {p0}, Lp6/d;->f(Ls5/e;)Lp6/f;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ls5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls5/d<",
            "Lp6/f;",
            ">;"
        }
    .end annotation

    const-class v0, Lp6/f;

    invoke-static {v0}, Ls5/d;->c(Ljava/lang/Class;)Ls5/d$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v0

    const-class v1, Lp6/e;

    invoke-static {v1}, Ls5/q;->k(Ljava/lang/Class;)Ls5/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v0

    new-instance v1, Lp6/b;

    invoke-direct {v1}, Lp6/b;-><init>()V

    invoke-virtual {v0, v1}, Ls5/d$b;->e(Ls5/h;)Ls5/d$b;

    move-result-object v0

    invoke-virtual {v0}, Ls5/d$b;->c()Ls5/d;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Ls5/e;)Lp6/f;
    .locals 3

    new-instance v0, Lp6/d;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lp6/e;

    invoke-interface {p0, v2}, Ls5/e;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lp6/d;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method public static synthetic g(Landroid/content/Context;)Lp6/g;
    .locals 0

    invoke-static {p0}, Lp6/g;->a(Landroid/content/Context;)Lp6/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "heartbeat-information-executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lp6/f$a;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lp6/d;->a:Lq6/b;

    invoke-interface {v2}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp6/g;

    invoke-virtual {v2, p1, v0, v1}, Lp6/g;->d(Ljava/lang/String;J)Z

    move-result p1

    iget-object v2, p0, Lp6/d;->a:Lq6/b;

    invoke-interface {v2}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp6/g;

    invoke-virtual {v2, v0, v1}, Lp6/g;->c(J)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    sget-object p1, Lp6/f$a;->p:Lp6/f$a;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    sget-object p1, Lp6/f$a;->k:Lp6/f$a;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lp6/f$a;->d:Lp6/f$a;

    return-object p1

    :cond_2
    sget-object p1, Lp6/f$a;->b:Lp6/f$a;

    return-object p1
.end method
