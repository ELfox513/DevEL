.class public final Lr4/u91;
.super Lr4/yc1;
.source "SourceFile"

# interfaces
.implements Lr4/d81;
.implements Lr4/k91;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/yc1<",
        "Lr4/w91;",
        ">;",
        "Lr4/d81;",
        "Lr4/k91;"
    }
.end annotation


# instance fields
.field public final b:Lr4/no2;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lr4/no2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/w91;",
            ">;>;",
            "Lr4/no2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/yc1;-><init>(Ljava/util/Set;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lr4/u91;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lr4/u91;->b:Lr4/no2;

    return-void
.end method


# virtual methods
.method public final synthetic T0(Lr4/w91;)V
    .locals 1

    iget-object v0, p0, Lr4/u91;->b:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->b0:Lr4/au;

    invoke-interface {p1, v0}, Lr4/w91;->u(Lr4/au;)V

    return-void
.end method

.method public final a()V
    .locals 3

    sget-object v0, Lr4/rz;->A5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/u91;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/u91;->b:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->b0:Lr4/au;

    if-eqz v0, :cond_0

    iget v0, v0, Lr4/au;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lr4/t91;

    invoke-direct {v0, p0}, Lr4/t91;-><init>(Lr4/u91;)V

    invoke-virtual {p0, v0}, Lr4/yc1;->S0(Lr4/xc1;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lr4/u91;->b:Lr4/no2;

    iget v0, v0, Lr4/no2;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lr4/u91;->a()V

    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lr4/u91;->b:Lr4/no2;

    iget v0, v0, Lr4/no2;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lr4/u91;->a()V

    :cond_0
    return-void
.end method
