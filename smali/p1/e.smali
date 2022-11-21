.class public Lp1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/i$c;


# instance fields
.field public final a:Lb2/d;

.field public final b:Lq1/j;


# direct methods
.method public constructor <init>(Lb2/d;Lq1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lp1/e;->a:Lb2/d;

    iput-object p2, p0, Lp1/e;->b:Lq1/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "observer == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(IIIILy1/c;I)V
    .locals 4

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    invoke-static {p4}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x84

    const-string v3, ""

    if-ne p1, v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", #"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gt p3, v0, :cond_2

    invoke-static {p6}, Lb2/g;->b(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_2

    :cond_2
    invoke-static {p6}, Lb2/g;->c(I)Ljava/lang/String;

    move-result-object p6

    :goto_2
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v3

    :goto_3
    invoke-virtual {p5}, Ly1/c;->K()Z

    move-result p5

    if-eqz p5, :cond_5

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_4

    const-string p6, ","

    goto :goto_4

    :cond_4
    const-string p6, " //"

    :goto_4
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " category-2"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    iget-object p5, p0, Lp1/e;->b:Lq1/j;

    iget-object p6, p0, Lp1/e;->a:Lb2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    const-string v1, " // "

    goto :goto_5

    :cond_6
    const-string v1, " "

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p6, p2, p3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public b(IIILy1/c;)V
    .locals 1

    iget-object p1, p0, Lp1/e;->b:Lq1/j;

    iget-object p4, p0, Lp1/e;->a:Lb2/d;

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p4, p2, p3, v0}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public c(IILx1/e0;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lx1/e0;",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;)V"
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    const-string p4, " // "

    goto :goto_0

    :cond_0
    const-string p4, " "

    :goto_0
    invoke-virtual {p3}, Lx1/e0;->x()Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->x()Ly1/c;

    move-result-object p3

    invoke-virtual {p3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lp1/e;->b:Lq1/j;

    iget-object v1, p0, Lp1/e;->a:Lb2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p1, p2, p3}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public e(IIII)V
    .locals 3

    const/4 p1, 0x3

    if-gt p3, p1, :cond_0

    invoke-static {p4}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p4, p0, Lp1/e;->b:Lq1/j;

    iget-object v0, p0, Lp1/e;->a:Lb2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p2, p3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g(IIILn1/y;I)V
    .locals 3

    invoke-virtual {p4}, Ln1/y;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " // padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p5, 0xa

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ln1/y;->C(I)I

    move-result v2

    invoke-static {v2}, Lb2/g;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ln1/y;->A(I)I

    move-result v2

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "  default: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ln1/y;->z()I

    move-result p1

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lp1/e;->b:Lq1/j;

    iget-object p4, p0, Lp1/e;->a:Lb2/d;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p4, p2, p3, p5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public h(III)V
    .locals 2

    iget-object p1, p0, Lp1/e;->b:Lq1/j;

    iget-object v0, p0, Lp1/e;->a:Lb2/d;

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p2, p3, v1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public i(IIILx1/a;I)V
    .locals 6

    instance-of v0, p4, Lx1/s;

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lp1/e;->b(IIILy1/c;)V

    return-void

    :cond_0
    instance-of v0, p4, Lx1/p;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p5}, Lp1/e;->m(IIII)V

    return-void

    :cond_1
    instance-of v0, p4, Lx1/w;

    if-eqz v0, :cond_2

    check-cast p4, Lx1/w;

    invoke-virtual {p4}, Lx1/w;->B()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lp1/e;->n(IIIJ)V

    return-void

    :cond_2
    instance-of v0, p4, Lx1/o;

    if-eqz v0, :cond_3

    check-cast p4, Lx1/o;

    invoke-virtual {p4}, Lx1/t;->z()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lp1/e;->l(IIII)V

    return-void

    :cond_3
    instance-of v0, p4, Lx1/l;

    if-eqz v0, :cond_4

    check-cast p4, Lx1/l;

    invoke-virtual {p4}, Lx1/u;->A()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lp1/e;->k(IIIJ)V

    return-void

    :cond_4
    if-eqz p5, :cond_6

    const-string v0, ", "

    const/16 v1, 0xc5

    if-ne p1, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string p1, ""

    :goto_0
    iget-object p5, p0, Lp1/e;->b:Lq1/j;

    iget-object v0, p0, Lp1/e;->a:Lb2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p2, p3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public final j(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lp1/e;->a:Lb2/d;

    invoke-virtual {v0, p1}, Lb2/d;->l(I)I

    move-result v0

    invoke-static {v0}, Ln1/h;->b(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lp1/e;->a:Lb2/d;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lb2/d;->l(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ln1/h;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k(IIIJ)V
    .locals 4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lp1/e;->b:Lq1/j;

    iget-object v1, p0, Lp1/e;->a:Lb2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " // "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p4

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p2, p3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public final l(IIII)V
    .locals 4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lp1/e;->b:Lq1/j;

    iget-object v1, p0, Lp1/e;->a:Lb2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " // "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p2, p3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public final m(IIII)V
    .locals 4

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    const-string v0, " // "

    goto :goto_0

    :cond_0
    const-string v0, " "

    :goto_0
    iget-object v1, p0, Lp1/e;->a:Lb2/d;

    invoke-virtual {v1, p2}, Lb2/d;->l(I)I

    move-result v1

    const-string v2, "#"

    if-eq p3, p1, :cond_3

    const/16 p1, 0x10

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x11

    if-ne v1, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lb2/g;->c(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lb2/g;->d(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lb2/g;->b(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object p4, p0, Lp1/e;->b:Lq1/j;

    iget-object v1, p0, Lp1/e;->a:Lb2/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v1, p2, p3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method

.method public final n(IIIJ)V
    .locals 3

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    const-string v0, " // "

    goto :goto_0

    :cond_0
    const-string v0, " #"

    :goto_0
    if-ne p3, p1, :cond_1

    long-to-int p1, p4

    invoke-static {p1}, Lb2/g;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p4, p5}, Lb2/g;->e(J)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p4, p0, Lp1/e;->b:Lq1/j;

    iget-object p5, p0, Lp1/e;->a:Lb2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lp1/e;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p5, p2, p3, p1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    return-void
.end method
