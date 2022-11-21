.class public final Lb5/i4;
.super Lb5/u8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/u8<",
        "Lb5/j4;",
        "Lb5/i4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lb5/j4;->x()Lb5/j4;

    move-result-object v0

    invoke-direct {p0, v0}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb5/a4;)V
    .locals 0

    invoke-static {}, Lb5/j4;->x()Lb5/j4;

    move-result-object p1

    invoke-direct {p0, p1}, Lb5/u8;-><init>(Lb5/x8;)V

    return-void
.end method


# virtual methods
.method public final A(Lb5/n4;)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0, p1}, Lb5/j4;->D(Lb5/j4;Lb5/n4;)V

    return-object p0
.end method

.method public final B()Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0}, Lb5/j4;->F(Lb5/j4;)V

    return-object p0
.end method

.method public final C(I)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0, p1}, Lb5/j4;->G(Lb5/j4;I)V

    return-object p0
.end method

.method public final D(Ljava/lang/String;)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0, p1}, Lb5/j4;->H(Lb5/j4;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E(ILb5/m4;)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {p2}, Lb5/u8;->i()Lb5/x8;

    move-result-object p2

    check-cast p2, Lb5/n4;

    invoke-static {v0, p1, p2}, Lb5/j4;->C(Lb5/j4;ILb5/n4;)V

    return-object p0
.end method

.method public final F(ILb5/n4;)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0, p1, p2}, Lb5/j4;->C(Lb5/j4;ILb5/n4;)V

    return-object p0
.end method

.method public final G(J)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0, p1, p2}, Lb5/j4;->J(Lb5/j4;J)V

    return-object p0
.end method

.method public final I(J)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0, p1, p2}, Lb5/j4;->I(Lb5/j4;J)V

    return-object p0
.end method

.method public final J(I)Lb5/n4;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {v0, p1}, Lb5/j4;->z(I)Lb5/n4;

    move-result-object p1

    return-object p1
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {v0}, Lb5/j4;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/n4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {v0}, Lb5/j4;->B()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final P()Z
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {v0}, Lb5/j4;->O()Z

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {v0}, Lb5/j4;->t()I

    move-result v0

    return v0
.end method

.method public final u()J
    .locals 2

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {v0}, Lb5/j4;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {v0}, Lb5/j4;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final x(Ljava/lang/Iterable;)Lb5/i4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lb5/n4;",
            ">;)",
            "Lb5/i4;"
        }
    .end annotation

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-static {v0, p1}, Lb5/j4;->E(Lb5/j4;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final z(Lb5/m4;)Lb5/i4;
    .locals 1

    iget-boolean v0, p0, Lb5/u8;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb5/u8;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb5/u8;->d:Z

    :cond_0
    iget-object v0, p0, Lb5/u8;->b:Lb5/x8;

    check-cast v0, Lb5/j4;

    invoke-virtual {p1}, Lb5/u8;->i()Lb5/x8;

    move-result-object p1

    check-cast p1, Lb5/n4;

    invoke-static {v0, p1}, Lb5/j4;->D(Lb5/j4;Lb5/n4;)V

    return-object p0
.end method
