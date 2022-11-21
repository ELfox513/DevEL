.class public final Lk7/i$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lk7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/i;",
        "Lk7/i$b;",
        ">;",
        "Lk7/j;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/i;->Q()Lk7/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/i$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(Lk7/c$b;)Lk7/i$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-virtual {p1}, Lo7/y$a;->D()Lo7/y;

    move-result-object p1

    check-cast p1, Lk7/c;

    invoke-static {v0, p1}, Lk7/i;->R(Lk7/i;Lk7/c;)V

    return-object p0
.end method

.method public S(Lk7/g;)Lk7/i$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-static {v0, p1}, Lk7/i;->S(Lk7/i;Lk7/g;)V

    return-object p0
.end method

.method public T(Lk7/h;)Lk7/i$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-static {v0, p1}, Lk7/i;->U(Lk7/i;Lk7/h;)V

    return-object p0
.end method

.method public U(Lk7/m;)Lk7/i$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-static {v0, p1}, Lk7/i;->T(Lk7/i;Lk7/m;)V

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-virtual {v0}, Lk7/i;->b()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-virtual {v0}, Lk7/i;->i()Z

    move-result v0

    return v0
.end method

.method public j()Lk7/m;
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-virtual {v0}, Lk7/i;->j()Lk7/m;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-virtual {v0}, Lk7/i;->n()Z

    move-result v0

    return v0
.end method

.method public o()Lk7/h;
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-virtual {v0}, Lk7/i;->o()Lk7/h;

    move-result-object v0

    return-object v0
.end method

.method public t()Lk7/g;
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/i;

    invoke-virtual {v0}, Lk7/i;->t()Lk7/g;

    move-result-object v0

    return-object v0
.end method
