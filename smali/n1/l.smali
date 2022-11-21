.class public final Ln1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln1/o;

.field public final b:Ln1/k;

.field public final c:Lb2/j;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Ln1/s;

    invoke-direct {v0, p1}, Ln1/s;-><init>(I)V

    new-instance p1, Ln1/k;

    invoke-direct {p1, p2}, Ln1/k;-><init>(I)V

    invoke-direct {p0, v0, p1}, Ln1/l;-><init>(Ln1/o;Ln1/k;)V

    return-void
.end method

.method public constructor <init>(Ln1/o;Ln1/k;)V
    .locals 1

    sget-object v0, Lb2/j;->k:Lb2/j;

    invoke-direct {p0, p1, p2, v0}, Ln1/l;-><init>(Ln1/o;Ln1/k;Lb2/j;)V

    return-void
.end method

.method public constructor <init>(Ln1/o;Ln1/k;Lb2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lb2/o;->throwIfMutable()V

    iput-object p1, p0, Ln1/l;->a:Ln1/o;

    iput-object p2, p0, Ln1/l;->b:Ln1/k;

    iput-object p3, p0, Ln1/l;->c:Lb2/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "stack == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ln1/o;Lb2/j;)Ln1/o;
    .locals 1

    instance-of v0, p0, Ln1/p;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Ln1/p;

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ln1/p;->B()Ln1/s;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public b(Ll1/d;)V
    .locals 1

    iget-object v0, p0, Ln1/l;->a:Ln1/o;

    invoke-virtual {v0, p1}, Ln1/o;->x(Ll1/d;)V

    iget-object v0, p0, Ln1/l;->b:Ln1/k;

    invoke-virtual {v0, p1}, Ln1/k;->x(Ll1/d;)V

    return-void
.end method

.method public c()Ln1/l;
    .locals 4

    new-instance v0, Ln1/l;

    iget-object v1, p0, Ln1/l;->a:Ln1/o;

    invoke-virtual {v1}, Ln1/o;->z()Ln1/o;

    move-result-object v1

    iget-object v2, p0, Ln1/l;->b:Ln1/k;

    invoke-virtual {v2}, Ln1/k;->B()Ln1/k;

    move-result-object v2

    iget-object v3, p0, Ln1/l;->c:Lb2/j;

    invoke-direct {v0, v1, v2, v3}, Ln1/l;-><init>(Ln1/o;Ln1/k;Lb2/j;)V

    return-object v0
.end method

.method public d()Ln1/o;
    .locals 1

    iget-object v0, p0, Ln1/l;->a:Ln1/o;

    return-object v0
.end method

.method public e()Ln1/k;
    .locals 1

    iget-object v0, p0, Ln1/l;->b:Ln1/k;

    return-object v0
.end method

.method public f()Lb2/j;
    .locals 1

    iget-object v0, p0, Ln1/l;->c:Lb2/j;

    return-object v0
.end method

.method public g(Ly1/b;)V
    .locals 5

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ly1/b;->A(I)Ly1/c;

    move-result-object v3

    iget-object v4, p0, Ln1/l;->a:Ln1/o;

    invoke-virtual {v4, v2, v3}, Ln1/o;->F(ILy1/d;)V

    invoke-virtual {v3}, Ly1/c;->n()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Lx1/e0;)Ln1/l;
    .locals 3

    invoke-virtual {p0}, Ln1/l;->e()Ln1/k;

    move-result-object v0

    invoke-virtual {v0}, Ln1/k;->B()Ln1/k;

    move-result-object v0

    invoke-virtual {v0}, Ln1/k;->A()V

    invoke-virtual {v0, p1}, Ln1/k;->J(Ly1/d;)V

    new-instance p1, Ln1/l;

    invoke-virtual {p0}, Ln1/l;->d()Ln1/o;

    move-result-object v1

    iget-object v2, p0, Ln1/l;->c:Lb2/j;

    invoke-direct {p1, v1, v0, v2}, Ln1/l;-><init>(Ln1/o;Ln1/k;Lb2/j;)V

    return-object p1
.end method

.method public i(Ly1/c;)V
    .locals 1

    iget-object v0, p0, Ln1/l;->a:Ln1/o;

    invoke-virtual {v0, p1}, Ln1/o;->C(Ly1/c;)V

    iget-object v0, p0, Ln1/l;->b:Ln1/k;

    invoke-virtual {v0, p1}, Ln1/k;->C(Ly1/c;)V

    return-void
.end method

.method public j(II)Ln1/l;
    .locals 4

    iget-object v0, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->I()Lb2/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb2/j;->x(I)V

    new-instance v0, Ln1/l;

    iget-object v1, p0, Ln1/l;->a:Ln1/o;

    invoke-virtual {v1}, Ln1/o;->B()Ln1/s;

    move-result-object v1

    iget-object v2, p0, Ln1/l;->b:Ln1/k;

    invoke-static {p1}, Lb2/j;->F(I)Lb2/j;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ln1/l;-><init>(Ln1/o;Ln1/k;Lb2/j;)V

    invoke-virtual {v0, p0, p1, p2}, Ln1/l;->m(Ln1/l;II)Ln1/l;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lb2/j;)Lb2/j;
    .locals 6

    iget-object v0, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ln1/l;->c:Lb2/j;

    return-object p1

    :cond_0
    new-instance v0, Lb2/j;

    invoke-direct {v0}, Lb2/j;-><init>()V

    iget-object v1, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v1

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-ge v3, v2, :cond_1

    iget-object v4, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {v4, v3}, Lb2/j;->B(I)I

    move-result v4

    invoke-virtual {p1, v3}, Lb2/j;->B(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v3}, Lb2/j;->x(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public l(Ln1/l;)Ln1/l;
    .locals 3

    invoke-virtual {p0}, Ln1/l;->d()Ln1/o;

    move-result-object v0

    invoke-virtual {p1}, Ln1/l;->d()Ln1/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/o;->D(Ln1/o;)Ln1/o;

    move-result-object v0

    invoke-virtual {p0}, Ln1/l;->e()Ln1/k;

    move-result-object v1

    invoke-virtual {p1}, Ln1/l;->e()Ln1/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/k;->D(Ln1/k;)Ln1/k;

    move-result-object v1

    iget-object p1, p1, Ln1/l;->c:Lb2/j;

    invoke-virtual {p0, p1}, Ln1/l;->k(Lb2/j;)Lb2/j;

    move-result-object p1

    invoke-static {v0, p1}, Ln1/l;->a(Ln1/o;Lb2/j;)Ln1/o;

    move-result-object v0

    invoke-virtual {p0}, Ln1/l;->d()Ln1/o;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ln1/l;->e()Ln1/k;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Ln1/l;->c:Lb2/j;

    if-ne v2, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Ln1/l;

    invoke-direct {v2, v0, v1, p1}, Ln1/l;-><init>(Ln1/o;Ln1/k;Lb2/j;)V

    return-object v2
.end method

.method public m(Ln1/l;II)Ln1/l;
    .locals 7

    invoke-virtual {p0}, Ln1/l;->d()Ln1/o;

    move-result-object v0

    invoke-virtual {p1}, Ln1/l;->d()Ln1/o;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ln1/o;->E(Ln1/o;I)Ln1/p;

    move-result-object p3

    invoke-virtual {p0}, Ln1/l;->e()Ln1/k;

    move-result-object v0

    invoke-virtual {p1}, Ln1/l;->e()Ln1/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/k;->D(Ln1/k;)Ln1/k;

    move-result-object v0

    iget-object p1, p1, Ln1/l;->c:Lb2/j;

    invoke-virtual {p1}, Lb2/j;->I()Lb2/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb2/j;->x(I)V

    invoke-virtual {p1}, Lb2/o;->setImmutable()V

    invoke-virtual {p0}, Ln1/l;->d()Ln1/o;

    move-result-object p2

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Ln1/l;->e()Ln1/k;

    move-result-object p2

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {p2, p1}, Lb2/j;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    iget-object p2, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {p2, p1}, Lb2/j;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Ln1/l;->c:Lb2/j;

    goto :goto_2

    :cond_1
    iget-object p2, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {p2}, Lb2/j;->size()I

    move-result p2

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v1

    if-le p2, v1, :cond_2

    iget-object p2, p0, Ln1/l;->c:Lb2/j;

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_0

    :cond_2
    iget-object p2, p0, Ln1/l;->c:Lb2/j;

    :goto_0
    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v1

    invoke-virtual {p2}, Lb2/j;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p2, v3}, Lb2/j;->B(I)I

    move-result v4

    sub-int v5, v1, v2

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Lb2/j;->B(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Incompatible merged subroutines"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    new-instance p2, Ln1/l;

    invoke-direct {p2, p3, v0, p1}, Ln1/l;-><init>(Ln1/o;Ln1/k;Lb2/j;)V

    return-object p2
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Ln1/l;->a:Ln1/o;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    iget-object v0, p0, Ln1/l;->b:Ln1/k;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-void
.end method

.method public o(II)Ln1/l;
    .locals 4

    const-string v0, "returning from invalid subroutine"

    iget-object v1, p0, Ln1/l;->a:Ln1/o;

    instance-of v2, v1, Ln1/p;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ln1/p;

    invoke-virtual {v1, p2}, Ln1/p;->N(I)Ln1/o;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    :try_start_0
    iget-object v1, p0, Ln1/l;->c:Lb2/j;

    invoke-virtual {v1}, Lb2/j;->I()Lb2/j;

    move-result-object v1

    invoke-virtual {v1}, Lb2/j;->J()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lb2/o;->setImmutable()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ln1/l;

    iget-object p1, p0, Ln1/l;->b:Ln1/k;

    invoke-direct {v3, p2, p1, v1}, Ln1/l;-><init>(Ln1/o;Ln1/k;Lb2/j;)V

    :goto_1
    return-object v3

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can\'t return from non-subroutine"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
