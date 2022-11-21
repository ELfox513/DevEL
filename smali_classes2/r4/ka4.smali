.class public final Lr4/ka4;
.super Lr4/lm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/lm3<",
        "Lr4/oa4;",
        "Lr4/ka4;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lr4/oa4;->D()Lr4/oa4;

    move-result-object v0

    invoke-direct {p0, v0}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/ja4;)V
    .locals 0

    invoke-static {}, Lr4/oa4;->D()Lr4/oa4;

    move-result-object p1

    invoke-direct {p0, p1}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lr4/ka4;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/oa4;

    invoke-static {v0, p1}, Lr4/oa4;->K(Lr4/oa4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final B(Ljava/lang/String;)Lr4/ka4;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/oa4;

    invoke-static {v0, p1}, Lr4/oa4;->L(Lr4/oa4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final C(Ljava/lang/String;)Lr4/ka4;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/oa4;

    invoke-static {v0, p1}, Lr4/oa4;->M(Lr4/oa4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D(I)Lr4/ka4;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/oa4;

    invoke-static {v0, p1}, Lr4/oa4;->N(Lr4/oa4;I)V

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lr4/ka4;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/oa4;

    invoke-static {v0, p1}, Lr4/oa4;->E(Lr4/oa4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(J)Lr4/ka4;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/oa4;

    invoke-static {v0, p1, p2}, Lr4/oa4;->I(Lr4/oa4;J)V

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lr4/ka4;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/oa4;

    invoke-static {v0, p1}, Lr4/oa4;->J(Lr4/oa4;Ljava/lang/String;)V

    return-object p0
.end method
