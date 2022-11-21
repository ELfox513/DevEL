.class public final Lr4/bq3;
.super Lr4/lm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/lm3<",
        "Lr4/ar3;",
        "Lr4/bq3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lr4/ar3;->J()Lr4/ar3;

    move-result-object v0

    invoke-direct {p0, v0}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/zp3;)V
    .locals 0

    invoke-static {}, Lr4/ar3;->J()Lr4/ar3;

    move-result-object p1

    invoke-direct {p0, p1}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method


# virtual methods
.method public final A(Lr4/dq3;)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->M(Lr4/ar3;Lr4/dq3;)V

    return-object p0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/xq3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-virtual {v0}, Lr4/ar3;->D()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final C(Lr4/xq3;)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->N(Lr4/ar3;Lr4/xq3;)V

    return-object p0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-virtual {v0}, Lr4/ar3;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E(Ljava/lang/String;)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->O(Lr4/ar3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final I()Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0}, Lr4/ar3;->P(Lr4/ar3;)V

    return-object p0
.end method

.method public final J(Lr4/qq3;)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->Q(Lr4/ar3;Lr4/qq3;)V

    return-object p0
.end method

.method public final K(Lr4/zq3;)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->R(Lr4/ar3;Lr4/zq3;)V

    return-object p0
.end method

.method public final L(Ljava/lang/Iterable;)Lr4/bq3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lr4/bq3;"
        }
    .end annotation

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->S(Lr4/ar3;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final P(Ljava/lang/Iterable;)Lr4/bq3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lr4/bq3;"
        }
    .end annotation

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->T(Lr4/ar3;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final Q(I)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->U(Lr4/ar3;I)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-virtual {v0}, Lr4/ar3;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Ljava/lang/String;)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->K(Lr4/ar3;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lr4/bq3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ar3;

    invoke-static {v0, p1}, Lr4/ar3;->L(Lr4/ar3;Ljava/lang/String;)V

    return-object p0
.end method
