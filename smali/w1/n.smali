.class public final Lw1/n;
.super Lw1/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lw1/d;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "opcode with invalid branchingness: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Lw1/h$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lw1/h$b;->visitPlainCstInsn(Lw1/n;)V

    return-void
.end method

.method public e()Ly1/e;
    .locals 1

    sget-object v0, Ly1/b;->a:Ly1/b;

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

    new-instance v6, Lw1/n;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    invoke-virtual {p0}, Lw1/d;->t()Lx1/a;

    move-result-object v5

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    return-object v6
.end method
