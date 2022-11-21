.class public final Lk7/h$b;
.super Lo7/y$a;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo7/y$a<",
        "Lk7/h;",
        "Lk7/h$b;",
        ">;",
        "Lo7/t0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lk7/h;->Q()Lk7/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lo7/y$a;-><init>(Lo7/y;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk7/h$a;)V
    .locals 0

    invoke-direct {p0}, Lk7/h$b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/Iterable;)Lk7/h$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lk7/k;",
            ">;)",
            "Lk7/h$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1}, Lk7/h;->a0(Lk7/h;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public S()Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0}, Lk7/h;->V(Lk7/h;)V

    return-object p0
.end method

.method public T()J
    .locals 2

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-virtual {v0}, Lk7/h;->r0()J

    move-result-wide v0

    return-wide v0
.end method

.method public U()Z
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-virtual {v0}, Lk7/h;->t0()Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-virtual {v0}, Lk7/h;->v0()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-virtual {v0}, Lk7/h;->z0()Z

    move-result v0

    return v0
.end method

.method public X(J)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1, p2}, Lk7/h;->W(Lk7/h;J)V

    return-object p0
.end method

.method public Y(Lk7/h$d;)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1}, Lk7/h;->b0(Lk7/h;Lk7/h$d;)V

    return-object p0
.end method

.method public Z(I)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1}, Lk7/h;->T(Lk7/h;I)V

    return-object p0
.end method

.method public a0(Lk7/h$e;)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1}, Lk7/h;->S(Lk7/h;Lk7/h$e;)V

    return-object p0
.end method

.method public b0(J)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1, p2}, Lk7/h;->c0(Lk7/h;J)V

    return-object p0
.end method

.method public c0(Ljava/lang/String;)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1}, Lk7/h;->U(Lk7/h;Ljava/lang/String;)V

    return-object p0
.end method

.method public d0(J)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1, p2}, Lk7/h;->d0(Lk7/h;J)V

    return-object p0
.end method

.method public e0(J)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1, p2}, Lk7/h;->X(Lk7/h;J)V

    return-object p0
.end method

.method public f0(J)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1, p2}, Lk7/h;->Z(Lk7/h;J)V

    return-object p0
.end method

.method public g0(J)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1, p2}, Lk7/h;->Y(Lk7/h;J)V

    return-object p0
.end method

.method public h0(Ljava/lang/String;)Lk7/h$b;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    check-cast v0, Lk7/h;

    invoke-static {v0, p1}, Lk7/h;->R(Lk7/h;Ljava/lang/String;)V

    return-object p0
.end method
