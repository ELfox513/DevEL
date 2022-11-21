.class public abstract Ln1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/q;


# instance fields
.field public final a:Ly1/a;

.field public b:[Ly1/d;

.field public c:I

.field public d:Ly1/c;

.field public e:I

.field public f:Lx1/a;

.field public g:I

.field public h:Ln1/y;

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Z

.field public l:Lw1/q;

.field public m:[Ly1/d;

.field public n:I


# direct methods
.method public constructor <init>(Ly1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ln1/a;->a:Ly1/a;

    const/16 p1, 0xa

    new-array p1, p1, [Ly1/d;

    iput-object p1, p0, Ln1/a;->b:[Ly1/d;

    const/4 p1, 0x6

    new-array p1, p1, [Ly1/d;

    iput-object p1, p0, Ln1/a;->m:[Ly1/d;

    invoke-virtual {p0}, Ln1/a;->b()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static H(Ly1/d;Ly1/d;)V
    .locals 3

    new-instance v0, Ln1/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local variable type mismatch: attempt to set or access a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using a local variable of type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This is symptomatic of .class transformation tools that ignore local variable information."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln1/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Ln1/a;->j:I

    return v0
.end method

.method public final C(Z)Lw1/q;
    .locals 4

    iget-object v0, p0, Ln1/a;->l:Lw1/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Ln1/a;->n:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    new-instance p1, Ln1/w;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local target with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln1/a;->n:I

    if-nez v1, :cond_1

    const-string v1, "no"

    goto :goto_0

    :cond_1
    const-string v1, "multiple"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Ln1/a;->m:[Ly1/d;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Ly1/d;->getType()Ly1/c;

    move-result-object v2

    iget-object v3, p0, Ln1/a;->l:Lw1/q;

    invoke-virtual {v3}, Lw1/q;->getType()Ly1/c;

    move-result-object v3

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Ln1/a;->l:Lw1/q;

    invoke-virtual {p1, v0}, Lw1/q;->U(Ly1/d;)Lw1/q;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Ln1/a;->l:Lw1/q;

    return-object p1

    :cond_4
    invoke-static {v3, v2}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v2, v3}, Ln1/a;->H(Ly1/d;Ly1/d;)V

    return-object v1

    :cond_5
    sget-object p1, Ly1/c;->K:Ly1/c;

    if-ne v3, p1, :cond_6

    iget-object p1, p0, Ln1/a;->l:Lw1/q;

    invoke-virtual {p1, v0}, Lw1/q;->U(Ly1/d;)Lw1/q;

    move-result-object p1

    iput-object p1, p0, Ln1/a;->l:Lw1/q;

    :cond_6
    iget-object p1, p0, Ln1/a;->l:Lw1/q;

    return-object p1
.end method

.method public final D(I)Ly1/d;
    .locals 1

    iget v0, p0, Ln1/a;->n:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ln1/a;->m:[Ly1/d;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= resultCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E()I
    .locals 2

    iget v0, p0, Ln1/a;->n:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ln1/w;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final F(Ly1/d;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ln1/a;->m:[Ly1/d;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Ln1/a;->n:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final G(Ln1/l;)V
    .locals 2

    iget v0, p0, Ln1/a;->n:I

    if-ltz v0, :cond_4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln1/a;->l:Lw1/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ln1/l;->d()Ln1/o;

    move-result-object p1

    invoke-virtual {p0, v1}, Ln1/a;->C(Z)Lw1/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/o;->H(Lw1/q;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ln1/l;->e()Ln1/k;

    move-result-object p1

    :goto_0
    iget v0, p0, Ln1/a;->n:I

    if-ge v1, v0, :cond_3

    iget-boolean v0, p0, Ln1/a;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ln1/k;->K()V

    :cond_2
    iget-object v0, p0, Ln1/a;->m:[Ly1/d;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ln1/k;->J(Ly1/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p1, Ln1/w;

    const-string v0, "results never set"

    invoke-direct {p1, v0}, Ln1/w;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Ln1/l;Ly1/a;)V
    .locals 4

    invoke-virtual {p2}, Ly1/a;->l()Ly1/b;

    move-result-object p2

    invoke-virtual {p2}, Lb2/f;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ln1/a;->i(Ln1/l;I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Ly1/b;->getType(I)Ly1/c;

    move-result-object v1

    iget-object v2, p0, Ln1/a;->b:[Ly1/d;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ln1/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at stack depth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ly1/b;->getType(I)Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ln1/a;->b:[Ly1/d;

    aget-object p1, p2, p1

    invoke-interface {p1}, Ly1/d;->getType()Ly1/c;

    move-result-object p1

    invoke-virtual {p1}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ln1/a;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Ln1/a;->d:Ly1/c;

    iput v0, p0, Ln1/a;->e:I

    iput-object v1, p0, Ln1/a;->f:Lx1/a;

    iput v0, p0, Ln1/a;->g:I

    iput-object v1, p0, Ln1/a;->h:Ln1/y;

    iput-object v1, p0, Ln1/a;->i:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Ln1/a;->j:I

    iput-boolean v0, p0, Ln1/a;->k:Z

    iput-object v1, p0, Ln1/a;->l:Lw1/q;

    iput v2, p0, Ln1/a;->n:I

    return-void
.end method

.method public c()Ly1/a;
    .locals 1

    iget-object v0, p0, Ln1/a;->a:Ly1/a;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Ln1/a;->g:I

    return-void
.end method

.method public final e(Ln1/l;I)V
    .locals 2

    invoke-virtual {p0}, Ln1/a;->b()V

    iget-object v0, p0, Ln1/a;->b:[Ly1/d;

    invoke-virtual {p1}, Ln1/l;->d()Ln1/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Ln1/o;->A(I)Ly1/d;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iput p1, p0, Ln1/a;->c:I

    iput p2, p0, Ln1/a;->j:I

    return-void
.end method

.method public final f(Ly1/c;)V
    .locals 0

    iput-object p1, p0, Ln1/a;->d:Ly1/c;

    return-void
.end method

.method public final g(Lx1/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ln1/a;->f:Lx1/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ln1/l;Ly1/c;Ly1/c;Ly1/c;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ln1/a;->i(Ln1/l;I)V

    iget-object p1, p0, Ln1/a;->b:[Ly1/d;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_2

    iget-object p1, p0, Ln1/a;->b:[Ly1/d;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ln1/a;->b:[Ly1/d;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p4, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ln1/w;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ln1/a;->b:[Ly1/d;

    aget-object p2, p4, p2

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ln1/w;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ln1/a;->b:[Ly1/d;

    aget-object p2, p3, p2

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ln1/w;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ln1/a;->b:[Ly1/d;

    aget-object p2, p2, v0

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Ln1/l;I)V
    .locals 3

    invoke-virtual {p1}, Ln1/l;->e()Ln1/k;

    move-result-object p1

    invoke-virtual {p0}, Ln1/a;->b()V

    iget-object v0, p0, Ln1/a;->b:[Ly1/d;

    array-length v0, v0

    if-le p2, v0, :cond_0

    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [Ly1/d;

    iput-object v0, p0, Ln1/a;->b:[Ly1/d;

    :cond_0
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Ln1/a;->b:[Ly1/d;

    invoke-virtual {p1}, Ln1/k;->I()Ly1/d;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput p2, p0, Ln1/a;->c:I

    return-void
.end method

.method public final k(Ln1/y;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Ln1/a;->h:Ln1/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cases == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ln1/a;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public final m(Z)V
    .locals 0

    iput-boolean p1, p0, Ln1/a;->k:Z

    return-void
.end method

.method public final n(ILy1/c;Lw1/k;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p1

    iput-object p1, p0, Ln1/a;->l:Lw1/q;

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Ln1/a;->e:I

    return-void
.end method

.method public final p(Ln1/l;Ly1/c;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ln1/a;->i(Ln1/l;I)V

    iget-object p1, p0, Ln1/a;->b:[Ly1/d;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ln1/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ln1/a;->b:[Ly1/d;

    aget-object p2, p2, v0

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Ln1/l;Ly1/c;Ly1/c;)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ln1/a;->i(Ln1/l;I)V

    iget-object p1, p0, Ln1/a;->b:[Ly1/d;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_1

    iget-object p1, p0, Ln1/a;->b:[Ly1/d;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ln1/w;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ln1/a;->b:[Ly1/d;

    aget-object p2, p3, p2

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ln1/w;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ln1/a;->b:[Ly1/d;

    aget-object p2, p2, v0

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Ly1/d;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ln1/a;->m:[Ly1/d;

    iget v1, p0, Ln1/a;->n:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ln1/a;->n:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(I)Ly1/d;
    .locals 1

    iget v0, p0, Ln1/a;->c:I

    if-ge p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ln1/a;->b:[Ly1/d;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= argCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Ln1/a;->c:I

    return v0
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln1/a;->n:I

    return-void
.end method

.method public final v()Ln1/y;
    .locals 1

    iget-object v0, p0, Ln1/a;->h:Ln1/y;

    return-object v0
.end method

.method public final w()Lx1/a;
    .locals 1

    iget-object v0, p0, Ln1/a;->f:Lx1/a;

    return-object v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Ln1/a;->e:I

    return v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Ln1/a;->g:I

    return v0
.end method

.method public final z()Ly1/c;
    .locals 1

    iget-object v0, p0, Ln1/a;->d:Ly1/c;

    return-object v0
.end method
