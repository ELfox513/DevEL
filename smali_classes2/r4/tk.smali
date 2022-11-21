.class public final Lr4/tk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Lr4/qk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/qk<",
            "+",
            "Lr4/rk;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Loader:ExtractorMediaPeriod"

    invoke-static {p1}, Lr4/ll;->b(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lr4/tk;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lr4/tk;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lr4/tk;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic b(Lr4/tk;)Lr4/qk;
    .locals 0

    iget-object p0, p0, Lr4/tk;->b:Lr4/qk;

    return-object p0
.end method

.method public static synthetic c(Lr4/tk;Lr4/qk;)Lr4/qk;
    .locals 0

    iput-object p1, p0, Lr4/tk;->b:Lr4/qk;

    return-object p1
.end method

.method public static synthetic d(Lr4/tk;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lr4/tk;->c:Ljava/io/IOException;

    return-object p1
.end method


# virtual methods
.method public final e(Lr4/rk;Lr4/pk;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lr4/rk;",
            ">(TT;",
            "Lr4/pk<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/vk;->d(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lr4/qk;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lr4/qk;-><init>(Lr4/tk;Landroid/os/Looper;Lr4/rk;Lr4/pk;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lr4/qk;->b(J)V

    return-wide v8
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lr4/tk;->b:Lr4/qk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/tk;->b:Lr4/qk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/qk;->c(Z)V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lr4/tk;->b:Lr4/qk;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/qk;->c(Z)V

    :cond_0
    iget-object v0, p0, Lr4/tk;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lr4/tk;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object p1, p0, Lr4/tk;->c:Ljava/io/IOException;

    if-nez p1, :cond_1

    iget-object p1, p0, Lr4/tk;->b:Lr4/qk;

    if-eqz p1, :cond_0

    iget v0, p1, Lr4/qk;->d:I

    invoke-virtual {p1, v0}, Lr4/qk;->a(I)V

    :cond_0
    return-void

    :cond_1
    throw p1
.end method
