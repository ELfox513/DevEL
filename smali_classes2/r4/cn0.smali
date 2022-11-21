.class public Lr4/cn0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lr4/vm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/vm0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    iput-object v0, p0, Lr4/cn0;->a:Lr4/vm0;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lr4/cn0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lr4/an0;

    invoke-direct {v1, p0}, Lr4/an0;-><init>(Lr4/cn0;)V

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, v2}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic a(Lr4/cn0;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lr4/cn0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public final b(Lr4/zm0;Lr4/xm0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/zm0<",
            "TT;>;",
            "Lr4/xm0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/cn0;->a:Lr4/vm0;

    new-instance v1, Lr4/bn0;

    invoke-direct {v1, p0, p1, p2}, Lr4/bn0;-><init>(Lr4/cn0;Lr4/zm0;Lr4/xm0;)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/cn0;->a:Lr4/vm0;

    invoke-virtual {v0, p1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/cn0;->a:Lr4/vm0;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final e()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr4/cn0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
