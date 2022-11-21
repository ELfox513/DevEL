.class public final Lb5/s4;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/t4;",
        "Lb5/s4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/t4;->K1()Lb5/t4;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/a4;)V
    .locals 0

    invoke-static {}, Lb5/t4;->K1()Lb5/t4;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final A(I)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->d0(Lb5/t4;I)V

    return-object p0
.end method

.method public final A0(Ljava/lang/Iterable;)Lb5/s4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lb5/f4;",
            ">;)",
            "Lb5/s4;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->i0(Lb5/t4;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final B(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->U(Lb5/t4;J)V

    return-object p0
.end method

.method public final B0(Ljava/lang/Iterable;)Lb5/s4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lb5/j4;",
            ">;)",
            "Lb5/s4;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->D0(Lb5/t4;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final C(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->p0(Lb5/t4;J)V

    return-object p0
.end method

.method public final C0(Ljava/lang/Iterable;)Lb5/s4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lb5/s4;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->R(Lb5/t4;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final D(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->C0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D0(Ljava/lang/Iterable;)Lb5/s4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lb5/d5;",
            ">;)",
            "Lb5/s4;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->I0(Lb5/t4;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final E(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->c0(Lb5/t4;J)V

    return-object p0
.end method

.method public final E0(Lb5/i4;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {p1}, Lb5/u8;->i()Lb5/x8;

    move-result-object p1

    check-cast p1, Lb5/j4;

    invoke-static {v0, p1}, Lb5/t4;->S(Lb5/t4;Lb5/j4;)V

    return-object p0
.end method

.method public final F(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->T0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final F0(Lb5/c5;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {p1}, Lb5/u8;->i()Lb5/x8;

    move-result-object p1

    check-cast p1, Lb5/d5;

    invoke-static {v0, p1}, Lb5/t4;->H0(Lb5/t4;Lb5/d5;)V

    return-object p0
.end method

.method public final G(Ljava/lang/String;)Lb5/s4;
    .locals 0

    iget-boolean p1, p0, Lb5/u8;->d:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb5/u8;->d:Z

    :goto_0
    iget-object p1, p0, Lb5/u8;->b:Lb5/x8;

    check-cast p1, Lb5/t4;

    sget p1, Lb5/t4;->zza:I

    const/4 p1, 0x0

    throw p1
.end method

.method public final G0(Lb5/d5;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->H0(Lb5/t4;Lb5/d5;)V

    return-object p0
.end method

.method public final H0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->b0(Lb5/t4;)V

    return-object p0
.end method

.method public final I(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->T(Lb5/t4;J)V

    return-object p0
.end method

.method public final I0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->k0(Lb5/t4;)V

    return-object p0
.end method

.method public final J(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->M0(Lb5/t4;J)V

    return-object p0
.end method

.method public final J0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->K(Lb5/t4;)V

    return-object p0
.end method

.method public final K(ILb5/i4;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {p2}, Lb5/u8;->i()Lb5/x8;

    move-result-object p2

    check-cast p2, Lb5/j4;

    invoke-static {v0, p1, p2}, Lb5/t4;->O(Lb5/t4;ILb5/j4;)V

    return-object p0
.end method

.method public final K0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->E0(Lb5/t4;)V

    return-object p0
.end method

.method public final L(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->l0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final L0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->f0(Lb5/t4;)V

    return-object p0
.end method

.method public final M0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->Z(Lb5/t4;)V

    return-object p0
.end method

.method public final N0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->Q0(Lb5/t4;)V

    return-object p0
.end method

.method public final O0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->O0(Lb5/t4;)V

    return-object p0
.end method

.method public final P(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->B0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final P0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->X(Lb5/t4;)V

    return-object p0
.end method

.method public final Q(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->g0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Q0()Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0}, Lb5/t4;->o0(Lb5/t4;)V

    return-object p0
.end method

.method public final R0(I)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->F0(Lb5/t4;I)V

    return-object p0
.end method

.method public final S(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->Z0(Lb5/t4;J)V

    return-object p0
.end method

.method public final S0(I)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->J0(Lb5/t4;I)V

    return-object p0
.end method

.method public final T(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->e0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final T0(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->P(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final U(Z)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->Y(Lb5/t4;Z)V

    return-object p0
.end method

.method public final U0(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->J(Lb5/t4;J)V

    return-object p0
.end method

.method public final V(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->S0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final W(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean p1, p0, Lb5/u8;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object p1, p0, Lb5/u8;->b:Lb5/x8;

    check-cast p1, Lb5/t4;

    const-string v0, "android"

    invoke-static {p1, v0}, Lb5/t4;->R0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final X(Lb5/u4;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {p1}, Lb5/u8;->i()Lb5/x8;

    move-result-object p1

    check-cast p1, Lb5/x4;

    invoke-static {v0, p1}, Lb5/t4;->Q(Lb5/t4;Lb5/x4;)V

    return-object p0
.end method

.method public final Y(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->P0(Lb5/t4;J)V

    return-object p0
.end method

.method public final Z(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->N0(Lb5/t4;J)V

    return-object p0
.end method

.method public final a0()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->s1()I

    move-result v0

    return v0
.end method

.method public final b0(I)Lb5/s4;
    .locals 1

    iget-boolean p1, p0, Lb5/u8;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object p1, p0, Lb5/u8;->b:Lb5/x8;

    check-cast p1, Lb5/t4;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb5/t4;->n0(Lb5/t4;I)V

    return-object p0
.end method

.method public final c0(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->W(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d0(I)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->L(Lb5/t4;I)V

    return-object p0
.end method

.method public final e0(Z)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->h0(Lb5/t4;Z)V

    return-object p0
.end method

.method public final f0(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->L0(Lb5/t4;J)V

    return-object p0
.end method

.method public final g0(I)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->V0(Lb5/t4;I)V

    return-object p0
.end method

.method public final h0(J)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->K0(Lb5/t4;J)V

    return-object p0
.end method

.method public final i0(J)Lb5/s4;
    .locals 2

    iget-boolean p1, p0, Lb5/u8;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object p1, p0, Lb5/u8;->b:Lb5/x8;

    check-cast p1, Lb5/t4;

    const-wide/32 v0, 0xa822

    invoke-static {p1, v0, v1}, Lb5/t4;->a1(Lb5/t4;J)V

    return-object p0
.end method

.method public final k0(ILb5/d5;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1, p2}, Lb5/t4;->G0(Lb5/t4;ILb5/d5;)V

    return-object p0
.end method

.method public final l0(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->U0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m0(I)Lb5/d5;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0, p1}, Lb5/t4;->L1(I)Lb5/d5;

    move-result-object p1

    return-object p1
.end method

.method public final n0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->N1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/j4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->H()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final r0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/d5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->I()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final s0()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->w1()I

    move-result v0

    return v0
.end method

.method public final t(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->X0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->a0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->W0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->Y0(Lb5/t4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x0()J
    .locals 2

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->B1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final y0()J
    .locals 2

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0}, Lb5/t4;->F1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final z(I)Lb5/s4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-static {v0, p1}, Lb5/t4;->m0(Lb5/t4;I)V

    return-object p0
.end method

.method public final z0(I)Lb5/j4;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/t4;

    invoke-virtual {v0, p1}, Lb5/t4;->I1(I)Lb5/j4;

    move-result-object p1

    return-object p1
.end method
