.class public final Lb5/m4;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/n4;",
        "Lb5/m4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/n4;->x()Lb5/n4;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/a4;)V
    .locals 0

    invoke-static {}, Lb5/n4;->x()Lb5/n4;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final A()Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0}, Lb5/n4;->L(Lb5/n4;)V

    return-object p0
.end method

.method public final B()Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0}, Lb5/n4;->E(Lb5/n4;)V

    return-object p0
.end method

.method public final C(D)Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0, p1, p2}, Lb5/n4;->H(Lb5/n4;D)V

    return-object p0
.end method

.method public final D(J)Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0, p1, p2}, Lb5/n4;->F(Lb5/n4;J)V

    return-object p0
.end method

.method public final E(Ljava/lang/String;)Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0, p1}, Lb5/n4;->C(Lb5/n4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final F(Ljava/lang/String;)Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0, p1}, Lb5/n4;->D(Lb5/n4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-virtual {v0}, Lb5/n4;->u()I

    move-result v0

    return v0
.end method

.method public final u(Ljava/lang/Iterable;)Lb5/m4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lb5/n4;",
            ">;)",
            "Lb5/m4;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0, p1}, Lb5/n4;->K(Lb5/n4;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final v(Lb5/m4;)Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-virtual {p1}, Lb5/u8;->i()Lb5/x8;

    move-result-object p1

    check-cast p1, Lb5/n4;

    invoke-static {v0, p1}, Lb5/n4;->J(Lb5/n4;Lb5/n4;)V

    return-object p0
.end method

.method public final x()Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0}, Lb5/n4;->I(Lb5/n4;)V

    return-object p0
.end method

.method public final z()Lb5/m4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/n4;

    invoke-static {v0}, Lb5/n4;->G(Lb5/n4;)V

    return-object p0
.end method
