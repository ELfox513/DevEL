.class public final Lw1/x;
.super Lw1/h;
.source "SourceFile"


# instance fields
.field public final p:Lb2/j;


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lb2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw1/h;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    if-eqz p5, :cond_0

    iput-object p5, p0, Lw1/x;->p:Lb2/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cases == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lw1/h$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lw1/h$b;->visitSwitchInsn(Lw1/x;)V

    return-void
.end method

.method public c(Lw1/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Ly1/e;
    .locals 1

    sget-object v0, Ly1/b;->a:Ly1/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw1/x;->p:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ly1/c;)Lw1/h;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lw1/q;Lw1/r;)Lw1/h;
    .locals 7

    new-instance v6, Lw1/x;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    iget-object v5, p0, Lw1/x;->p:Lb2/j;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lw1/x;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lb2/j;)V

    return-object v6
.end method

.method public t()Lb2/j;
    .locals 1

    iget-object v0, p0, Lw1/x;->p:Lb2/j;

    return-object v0
.end method
