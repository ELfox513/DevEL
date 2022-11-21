.class public final Lr4/tp;
.super Lr4/lm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/lm3<",
        "Lr4/up;",
        "Lr4/tp;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lr4/up;->D()Lr4/up;

    move-result-object v0

    invoke-direct {p0, v0}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/np;)V
    .locals 0

    invoke-static {}, Lr4/up;->D()Lr4/up;

    move-result-object p1

    invoke-direct {p0, p1}, Lr4/lm3;-><init>(Lr4/pm3;)V

    return-void
.end method


# virtual methods
.method public final A(I)Lr4/tp;
    .locals 1

    iget-boolean p1, p0, Lr4/lm3;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object p1, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast p1, Lr4/up;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lr4/up;->J(Lr4/up;I)V

    return-object p0
.end method

.method public final v(Lr4/yp;)Lr4/tp;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/up;

    invoke-static {v0, p1}, Lr4/up;->E(Lr4/up;Lr4/yp;)V

    return-object p0
.end method

.method public final x(Lr4/xp;)Lr4/tp;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/up;

    invoke-virtual {p1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/yp;

    invoke-static {v0, p1}, Lr4/up;->E(Lr4/up;Lr4/yp;)V

    return-object p0
.end method

.method public final z(Lr4/zp;)Lr4/tp;
    .locals 1

    iget-boolean v0, p0, Lr4/lm3;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/lm3;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lm3;->d:Z

    :cond_0
    iget-object v0, p0, Lr4/lm3;->b:Lr4/pm3;

    check-cast v0, Lr4/up;

    invoke-virtual {p1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/aq;

    invoke-static {v0, p1}, Lr4/up;->I(Lr4/up;Lr4/aq;)V

    return-object p0
.end method
