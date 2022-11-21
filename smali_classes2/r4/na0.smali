.class public final Lr4/na0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/p90;

.field public b:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/q90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/p90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/na0;->a:Lr4/p90;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lr4/w90;Lr4/v90;)Lr4/qa0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lr4/w90<",
            "TI;>;",
            "Lr4/v90<",
            "TO;>;)",
            "Lr4/qa0<",
            "TI;TO;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/na0;->d()V

    new-instance p1, Lr4/qa0;

    iget-object v0, p0, Lr4/na0;->b:Lr4/h83;

    const-string v1, "google.afma.activeView.handleUpdate"

    invoke-direct {p1, v0, v1, p2, p3}, Lr4/qa0;-><init>(Lr4/h83;Ljava/lang/String;Lr4/w90;Lr4/v90;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lr4/u50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/q90;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/na0;->d()V

    iget-object v0, p0, Lr4/na0;->b:Lr4/h83;

    new-instance v1, Lr4/la0;

    invoke-direct {v1, p1, p2}, Lr4/la0;-><init>(Ljava/lang/String;Lr4/u50;)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    iput-object p1, p0, Lr4/na0;->b:Lr4/h83;

    return-void
.end method

.method public final c(Ljava/lang/String;Lr4/u50;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lr4/u50<",
            "-",
            "Lr4/q90;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/na0;->b:Lr4/h83;

    new-instance v1, Lr4/ma0;

    invoke-direct {v1, p1, p2}, Lr4/ma0;-><init>(Ljava/lang/String;Lr4/u50;)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {v0, v1, p1}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    iput-object p1, p0, Lr4/na0;->b:Lr4/h83;

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lr4/na0;->b:Lr4/h83;

    if-nez v0, :cond_0

    new-instance v0, Lr4/vm0;

    invoke-direct {v0}, Lr4/vm0;-><init>()V

    iput-object v0, p0, Lr4/na0;->b:Lr4/h83;

    iget-object v1, p0, Lr4/na0;->a:Lr4/p90;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lr4/p90;->g(Lr4/u;)Lr4/j90;

    move-result-object v1

    new-instance v2, Lr4/ja0;

    invoke-direct {v2, v0}, Lr4/ja0;-><init>(Lr4/vm0;)V

    new-instance v3, Lr4/ka0;

    invoke-direct {v3, v0}, Lr4/ka0;-><init>(Lr4/vm0;)V

    invoke-virtual {v1, v2, v3}, Lr4/cn0;->b(Lr4/zm0;Lr4/xm0;)V

    :cond_0
    return-void
.end method
