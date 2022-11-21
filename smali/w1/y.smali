.class public final Lw1/y;
.super Lw1/d;
.source "SourceFile"


# instance fields
.field public final q:Ly1/e;


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lw1/d;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lw1/y;->q:Ly1/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
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

    invoke-interface {p1, p0}, Lw1/h$b;->visitThrowingCstInsn(Lw1/y;)V

    return-void
.end method

.method public e()Ly1/e;
    .locals 1

    iget-object v0, p0, Lw1/y;->q:Ly1/e;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lw1/d;->t()Lx1/a;

    move-result-object v0

    invoke-interface {v0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lx1/d0;

    if-eqz v2, :cond_0

    check-cast v0, Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw1/y;->q:Ly1/e;

    invoke-static {v1}, Lw1/z;->t(Ly1/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ly1/c;)Lw1/h;
    .locals 7

    new-instance v6, Lw1/y;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    invoke-virtual {p0}, Lw1/h;->m()Lw1/r;

    move-result-object v3

    iget-object v0, p0, Lw1/y;->q:Ly1/e;

    invoke-interface {v0, p1}, Ly1/e;->d(Ly1/c;)Ly1/e;

    move-result-object v4

    invoke-virtual {p0}, Lw1/d;->t()Lx1/a;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    return-object v6
.end method

.method public r(Lw1/q;Lw1/r;)Lw1/h;
    .locals 6

    new-instance p1, Lw1/y;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    iget-object v4, p0, Lw1/y;->q:Ly1/e;

    invoke-virtual {p0}, Lw1/d;->t()Lx1/a;

    move-result-object v5

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    return-object p1
.end method
