.class public final Lr4/kx3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr4/dx3;

.field public static final e:Lr4/dx3;

.field public static final f:Lr4/dx3;

.field public static final g:Lr4/dx3;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Lr4/ex3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ex3<",
            "+",
            "Lr4/fx3;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lr4/dx3;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/dx3;-><init>(IJLr4/gx3;)V

    sput-object v0, Lr4/kx3;->d:Lr4/dx3;

    new-instance v0, Lr4/dx3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/dx3;-><init>(IJLr4/gx3;)V

    sput-object v0, Lr4/kx3;->e:Lr4/dx3;

    new-instance v0, Lr4/dx3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/dx3;-><init>(IJLr4/gx3;)V

    sput-object v0, Lr4/kx3;->f:Lr4/dx3;

    new-instance v0, Lr4/dx3;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lr4/dx3;-><init>(IJLr4/gx3;)V

    sput-object v0, Lr4/kx3;->g:Lr4/dx3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    invoke-static {p1}, Lr4/lc;->Q(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lr4/kx3;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lr4/kx3;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lr4/kx3;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic b(Lr4/kx3;)Lr4/ex3;
    .locals 0

    iget-object p0, p0, Lr4/kx3;->b:Lr4/ex3;

    return-object p0
.end method

.method public static synthetic c(Lr4/kx3;Lr4/ex3;)Lr4/ex3;
    .locals 0

    iput-object p1, p0, Lr4/kx3;->b:Lr4/ex3;

    return-object p1
.end method

.method public static synthetic d(Lr4/kx3;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lr4/kx3;->c:Ljava/io/IOException;

    return-object p1
.end method

.method public static e(ZJ)Lr4/dx3;
    .locals 2

    new-instance v0, Lr4/dx3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lr4/dx3;-><init>(IJLr4/gx3;)V

    return-object v0
.end method


# virtual methods
.method public final f()Z
    .locals 1

    iget-object v0, p0, Lr4/kx3;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/kx3;->c:Ljava/io/IOException;

    return-void
.end method

.method public final h(Lr4/fx3;Lr4/bx3;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lr4/fx3;",
            ">(TT;",
            "Lr4/bx3<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/kx3;->c:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lr4/ex3;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lr4/ex3;-><init>(Lr4/kx3;Landroid/os/Looper;Lr4/fx3;Lr4/bx3;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lr4/ex3;->b(J)V

    return-wide v8
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lr4/kx3;->b:Lr4/ex3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lr4/kx3;->b:Lr4/ex3;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/ex3;->c(Z)V

    return-void
.end method

.method public final k(Lr4/hx3;)V
    .locals 2

    iget-object v0, p0, Lr4/kx3;->b:Lr4/ex3;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/ex3;->c(Z)V

    :cond_0
    iget-object v0, p0, Lr4/kx3;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lr4/ix3;

    invoke-direct {v1, p1}, Lr4/ix3;-><init>(Lr4/hx3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lr4/kx3;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lr4/kx3;->c:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/kx3;->b:Lr4/ex3;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lr4/ex3;->a(I)V

    :cond_0
    return-void

    :cond_1
    throw v0
.end method
