.class public final Lu1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/c$a;
    }
.end annotation


# instance fields
.field public final a:Lk1/f;

.field public final b:[I

.field public final c:[S

.field public final d:[S

.field public final e:[S

.field public final f:[S

.field public final g:[I

.field public final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk1/f;Lk1/s;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/c;->a:Lk1/f;

    iget-object p1, p2, Lk1/s;->b:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->b:I

    new-array p1, p1, [I

    iput-object p1, p0, Lu1/c;->b:[I

    iget-object p1, p2, Lk1/s;->c:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lu1/c;->c:[S

    iget-object p1, p2, Lk1/s;->d:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lu1/c;->d:[S

    iget-object p1, p2, Lk1/s;->e:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lu1/c;->e:[S

    iget-object p1, p2, Lk1/s;->f:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lu1/c;->f:[S

    iget-object p1, p2, Lk1/s;->h:Lk1/s$a;

    iget p1, p1, Lk1/s$a;->b:I

    new-array p1, p1, [I

    iput-object p1, p0, Lu1/c;->g:[I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lu1/c;->h:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lu1/c;->i:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lu1/c;->j:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lu1/c;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu1/c;->l:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu1/c;->m:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lu1/c;->n:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lu1/c;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public B(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lu1/c;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public C(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lu1/c;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Lk1/a;)Lk1/a;
    .locals 4

    new-instance v0, Lb2/e;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lb2/e;-><init>(I)V

    new-instance v1, Lu1/c$a;

    invoke-direct {v1, p0, v0}, Lu1/c$a;-><init>(Lu1/c;Ll1/c;)V

    invoke-virtual {p1}, Lk1/a;->d()Lk1/l;

    move-result-object v2

    invoke-static {v1, v2}, Lu1/c$a;->b(Lu1/c$a;Lk1/l;)V

    new-instance v1, Lk1/a;

    iget-object v2, p0, Lu1/c;->a:Lk1/f;

    invoke-virtual {p1}, Lk1/a;->h()B

    move-result p1

    new-instance v3, Lk1/j;

    invoke-virtual {v0}, Lb2/e;->r()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lk1/j;-><init>([B)V

    invoke-direct {v1, v2, p1, v3}, Lk1/a;-><init>(Lk1/f;BLk1/j;)V

    return-object v1
.end method

.method public b(Lk1/b;)Lk1/b;
    .locals 2

    new-instance v0, Lk1/b;

    iget-object v1, p0, Lu1/c;->a:Lk1/f;

    invoke-virtual {p1}, Lk1/b;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lu1/c;->n(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lk1/b;-><init>(Lk1/f;I)V

    return-object v0
.end method

.method public c(Lk1/d;)Lk1/d;
    .locals 12

    new-instance v11, Lk1/d;

    iget-object v1, p0, Lu1/c;->a:Lk1/f;

    invoke-virtual {p1}, Lk1/d;->f()I

    move-result v2

    invoke-virtual {p1}, Lk1/d;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lu1/c;->u(I)I

    move-result v3

    invoke-virtual {p1}, Lk1/d;->a()I

    move-result v4

    invoke-virtual {p1}, Lk1/d;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lu1/c;->u(I)I

    move-result v5

    invoke-virtual {p1}, Lk1/d;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lu1/c;->w(I)I

    move-result v6

    invoke-virtual {p1}, Lk1/d;->g()I

    move-result v7

    invoke-virtual {p1}, Lk1/d;->b()I

    move-result v8

    invoke-virtual {p1}, Lk1/d;->c()I

    move-result v9

    invoke-virtual {p1}, Lk1/d;->h()I

    move-result v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lk1/d;-><init>(Lk1/f;IIIIIIIII)V

    return-object v11
.end method

.method public d(Lk1/m;)Lk1/m;
    .locals 4

    new-instance v0, Lk1/m;

    iget-object v1, p0, Lu1/c;->a:Lk1/f;

    invoke-virtual {p1}, Lk1/m;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lu1/c;->u(I)I

    move-result v2

    invoke-virtual {p1}, Lk1/m;->h()I

    move-result v3

    invoke-virtual {p0, v3}, Lu1/c;->u(I)I

    move-result v3

    invoke-virtual {p1}, Lk1/m;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lu1/c;->t(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lk1/m;-><init>(Lk1/f;III)V

    return-object v0
.end method

.method public e(Lk1/o;)Lk1/o;
    .locals 7

    new-instance v6, Lk1/o;

    iget-object v1, p0, Lu1/c;->a:Lk1/f;

    invoke-virtual {p1}, Lk1/o;->f()Lk1/o$b;

    move-result-object v2

    invoke-virtual {p1}, Lk1/o;->h()I

    move-result v3

    invoke-virtual {p1}, Lk1/o;->f()Lk1/o$b;

    move-result-object v0

    invoke-virtual {v0}, Lk1/o$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lk1/o;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lu1/c;->p(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lk1/o;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lu1/c;->q(I)I

    move-result v0

    :goto_0
    move v4, v0

    invoke-virtual {p1}, Lk1/o;->j()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lk1/o;-><init>(Lk1/f;Lk1/o$b;III)V

    return-object v6
.end method

.method public f(Lk1/p;)Lk1/p;
    .locals 4

    new-instance v0, Lk1/p;

    iget-object v1, p0, Lu1/c;->a:Lk1/f;

    invoke-virtual {p1}, Lk1/p;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lu1/c;->u(I)I

    move-result v2

    invoke-virtual {p1}, Lk1/p;->h()I

    move-result v3

    invoke-virtual {p0, v3}, Lu1/c;->s(I)I

    move-result v3

    invoke-virtual {p1}, Lk1/p;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lu1/c;->t(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lk1/p;-><init>(Lk1/f;III)V

    return-object v0
.end method

.method public g(Lk1/r;)Lk1/r;
    .locals 4

    new-instance v0, Lk1/r;

    iget-object v1, p0, Lu1/c;->a:Lk1/f;

    invoke-virtual {p1}, Lk1/r;->h()I

    move-result v2

    invoke-virtual {p0, v2}, Lu1/c;->t(I)I

    move-result v2

    invoke-virtual {p1}, Lk1/r;->f()I

    move-result v3

    invoke-virtual {p0, v3}, Lu1/c;->u(I)I

    move-result v3

    invoke-virtual {p1}, Lk1/r;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lu1/c;->w(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lk1/r;-><init>(Lk1/f;III)V

    return-object v0
.end method

.method public h(Lu1/e;)Lu1/e;
    .locals 3

    new-instance v0, Lu1/e;

    invoke-virtual {p1}, Lu1/e;->c()Lk1/f;

    move-result-object v1

    invoke-virtual {p1}, Lu1/e;->d()Lu1/c;

    move-result-object v2

    invoke-virtual {p1}, Lu1/e;->b()Lk1/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu1/c;->c(Lk1/d;)Lk1/d;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lu1/e;-><init>(Lk1/f;Lu1/c;Lk1/d;)V

    return-object v0
.end method

.method public i(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public k(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public l(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public m(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->g:[I

    aget p1, v0, p1

    return p1
.end method

.method public n(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public o(Lk1/j;)Lk1/j;
    .locals 4

    new-instance v0, Lb2/e;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lb2/e;-><init>(I)V

    new-instance v1, Lu1/c$a;

    invoke-direct {v1, p0, v0}, Lu1/c$a;-><init>(Lu1/c;Ll1/c;)V

    new-instance v2, Lk1/l;

    const/16 v3, 0x1c

    invoke-direct {v2, p1, v3}, Lk1/l;-><init>(Lk1/j;I)V

    invoke-static {v1, v2}, Lu1/c$a;->a(Lu1/c$a;Lk1/l;)V

    new-instance p1, Lk1/j;

    invoke-virtual {v0}, Lb2/e;->r()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lk1/j;-><init>([B)V

    return-object p1
.end method

.method public p(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->e:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public q(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->f:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public r(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public s(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->d:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public t(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu1/c;->b:[I

    aget v0, v0, p1

    :goto_0
    return v0
.end method

.method public u(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu1/c;->c:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public v(Lk1/t;)Lk1/t;
    .locals 2

    sget-object v0, Lk1/t;->d:Lk1/t;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lk1/t;->d()[S

    move-result-object p1

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lu1/c;->u(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lk1/t;

    iget-object v1, p0, Lu1/c;->a:Lk1/f;

    invoke-direct {v0, v1, p1}, Lk1/t;-><init>(Lk1/f;[S)V

    return-object v0
.end method

.method public w(I)I
    .locals 1

    iget-object v0, p0, Lu1/c;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public x(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lu1/c;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public y(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lu1/c;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public z(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lu1/c;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
