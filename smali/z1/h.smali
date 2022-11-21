.class public Lz1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/v;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/h;->a:Lz1/v;

    return-void
.end method

.method public static synthetic a(Lz1/h;Lz1/l;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lz1/h;->h(Lz1/l;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lw1/q;)Z
    .locals 0

    invoke-static {p0}, Lz1/h;->d(Lw1/q;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lz1/h;Lz1/l;Lw1/r;ILx1/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lz1/h;->f(Lz1/l;Lw1/r;ILx1/a;)V

    return-void
.end method

.method public static d(Lw1/q;)Z
    .locals 6

    invoke-virtual {p0}, Lw1/q;->C()Ly1/d;

    move-result-object p0

    instance-of v0, p0, Lx1/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lx1/v;

    invoke-virtual {p0}, Lx1/v;->A()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static e(Lz1/v;)V
    .locals 1

    new-instance v0, Lz1/h;

    invoke-direct {v0, p0}, Lz1/h;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/h;->g()V

    return-void
.end method


# virtual methods
.method public final f(Lz1/l;Lw1/r;ILx1/a;)V
    .locals 8

    invoke-virtual {p1}, Lz1/l;->o()Lw1/h;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    invoke-static {p3, v1, p2, p4}, Lw1/v;->V(ILy1/d;Ly1/e;Lx1/a;)Lw1/t;

    move-result-object v3

    if-nez p4, :cond_0

    new-instance p3, Lw1/o;

    invoke-virtual {v0}, Lw1/h;->j()Lw1/w;

    move-result-object p4

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-direct {p3, v3, p4, v0, p2}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lw1/n;

    invoke-virtual {v0}, Lw1/h;->j()Lw1/w;

    move-result-object v4

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v5

    move-object v2, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    :goto_0
    new-instance p2, Lz1/l;

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p3

    invoke-virtual {p3}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p3

    iget-object p4, p0, Lz1/h;->a:Lz1/v;

    invoke-virtual {p4, p1}, Lz1/v;->F(Lz1/u;)V

    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lz1/h;->a:Lz1/v;

    invoke-virtual {p1, p2}, Lz1/v;->E(Lz1/u;)V

    return-void
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lz1/m;->a()Lw1/a0;

    move-result-object v0

    iget-object v1, p0, Lz1/h;->a:Lz1/v;

    new-instance v2, Lz1/h$a;

    invoke-direct {v2, p0, v0}, Lz1/h$a;-><init>(Lz1/h;Lw1/a0;)V

    invoke-virtual {v1, v2}, Lz1/v;->l(Lz1/u$a;)V

    return-void
.end method

.method public final h(Lz1/l;)Z
    .locals 6

    invoke-virtual {p1}, Lz1/l;->o()Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lz1/h;->a:Lz1/v;

    invoke-virtual {v3, v1}, Lz1/v;->y(Lw1/q;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->C()Ly1/d;

    move-result-object v1

    invoke-interface {v1}, Ly1/d;->l()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ly1/d;->f()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    sget-object v4, Lw1/r;->a:Lw1/r;

    check-cast v1, Lx1/a;

    invoke-virtual {p0, p1, v4, v3, v1}, Lz1/h;->f(Lz1/l;Lw1/r;ILx1/a;)V

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/16 v1, 0x38

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lz1/u;->i()Lz1/s;

    move-result-object p1

    invoke-virtual {p1}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    iget-object v0, p0, Lz1/h;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/s;

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/l;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v4, v5, v0}, Lz1/h;->f(Lz1/l;Lw1/r;ILx1/a;)V

    :cond_0
    return v3

    :cond_1
    return v2
.end method
