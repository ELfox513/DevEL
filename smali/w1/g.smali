.class public final Lw1/g;
.super Lw1/h;
.source "SourceFile"


# instance fields
.field public final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lx1/a;


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/r;Ljava/util/ArrayList;Lx1/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw1/t;",
            "Lw1/w;",
            "Lw1/r;",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;",
            "Lx1/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lw1/h;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iput-object p4, p0, Lw1/g;->p:Ljava/util/ArrayList;

    iput-object p5, p0, Lw1/g;->q:Lx1/a;

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

    invoke-interface {p1, p0}, Lw1/h$b;->visitFillArrayDataInsn(Lw1/g;)V

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
    .locals 6

    new-instance p1, Lw1/g;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    iget-object v4, p0, Lw1/g;->p:Ljava/util/ArrayList;

    iget-object v5, p0, Lw1/g;->q:Lx1/a;

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lw1/g;-><init>(Lw1/t;Lw1/w;Lw1/r;Ljava/util/ArrayList;Lx1/a;)V

    return-object p1
.end method

.method public t()Lx1/a;
    .locals 1

    iget-object v0, p0, Lw1/g;->q:Lx1/a;

    return-object v0
.end method

.method public u()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw1/g;->p:Ljava/util/ArrayList;

    return-object v0
.end method
