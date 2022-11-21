.class public final Lr4/zf3;
.super Lr4/lm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/lm3<",
        "Lr4/ag3;",
        "Lr4/zf3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lr4/ag3;->M()Lr4/ag3;

    move-result-object v0

    invoke-direct {p0, v0}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/yf3;)V
    .locals 0

    invoke-static {}, Lr4/ag3;->M()Lr4/ag3;

    move-result-object p1

    invoke-direct {p0, p1}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method


# virtual methods
.method public final A(Lr4/ll3;)Lr4/zf3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ag3;

    invoke-static {v0, p1}, Lr4/ag3;->Q(Lr4/ag3;Lr4/ll3;)V

    return-object p0
.end method

.method public final v(I)Lr4/zf3;
    .locals 1

    iget-boolean p1, p0, Lr4/lm3;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object p1, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast p1, Lr4/ag3;

    invoke-static {p1, v0}, Lr4/ag3;->N(Lr4/ag3;I)V

    return-object p0
.end method

.method public final x(Lr4/uf3;)Lr4/zf3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ag3;

    invoke-static {v0, p1}, Lr4/ag3;->O(Lr4/ag3;Lr4/uf3;)V

    return-object p0
.end method

.method public final z(Lr4/ll3;)Lr4/zf3;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/ag3;

    invoke-static {v0, p1}, Lr4/ag3;->P(Lr4/ag3;Lr4/ll3;)V

    return-object p0
.end method
