.class public final Lz1/n;
.super Lz1/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/n$b;,
        Lz1/n$a;
    }
.end annotation


# instance fields
.field public final d:I

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/n$a;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lw1/r;


# direct methods
.method public constructor <init>(ILz1/s;)V
    .locals 1

    sget-object v0, Ly1/c;->B:Ly1/c;

    invoke-static {p1, v0}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lz1/u;-><init>(Lw1/q;Lz1/s;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz1/n;->k:Ljava/util/ArrayList;

    iput p1, p0, Lz1/n;->d:I

    return-void
.end method

.method public constructor <init>(Lw1/q;Lz1/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz1/u;-><init>(Lw1/q;Lz1/s;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    iput p1, p0, Lz1/n;->d:I

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final F(Lz1/p;)V
    .locals 4

    iget-object v0, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/n$a;

    iget-object v2, v1, Lz1/n$a;->a:Lw1/q;

    invoke-virtual {p1, v2}, Lz1/p;->b(Lw1/q;)Lw1/q;

    move-result-object v3

    iput-object v3, v1, Lz1/n$a;->a:Lw1/q;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lz1/u;->i()Lz1/s;

    move-result-object v3

    invoke-virtual {v3}, Lz1/s;->s()Lz1/v;

    move-result-object v3

    iget-object v1, v1, Lz1/n$a;->a:Lw1/q;

    invoke-virtual {v3, p0, v2, v1}, Lz1/v;->H(Lz1/u;Lw1/q;Lw1/q;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lz1/n;->p:Lw1/r;

    return-void
.end method

.method public J()Lw1/h;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert phi insns to rop form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public K(Lw1/q;Lz1/s;)V
    .locals 3

    iget-object v0, p0, Lz1/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lz1/n$a;

    invoke-virtual {p2}, Lz1/s;->p()I

    move-result v2

    invoke-virtual {p2}, Lz1/s;->y()I

    move-result p2

    invoke-direct {v1, p1, v2, p2}, Lz1/n$a;-><init>(Lw1/q;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lz1/n;->p:Lw1/r;

    return-void
.end method

.method public L(Ly1/d;Lw1/k;)V
    .locals 1

    invoke-virtual {p0}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-static {v0, p1, p2}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz1/u;->G(Lw1/q;)V

    return-void
.end method

.method public P()Lz1/n;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t clone phi"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q()I
    .locals 1

    iget v0, p0, Lz1/n;->d:I

    return v0
.end method

.method public S(I)I
    .locals 1

    iget-object v0, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1/n$a;

    iget p1, p1, Lz1/n$a;->b:I

    return p1
.end method

.method public T(ILz1/v;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lz1/v;",
            ")",
            "Ljava/util/List<",
            "Lz1/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/n$a;

    iget-object v3, v2, Lz1/n$a;->a:Lw1/q;

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p2}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v3

    iget v2, v2, Lz1/n$a;->b:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public U(Lw1/q;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/n$a;

    iget-object v3, v2, Lz1/n$a;->a:Lw1/q;

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lz1/n;->p:Lw1/r;

    return-void
.end method

.method public final V(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lw1/w;->d:Lw1/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": phi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lz1/u;->t()Lw1/q;

    move-result-object p1

    const-string v1, " ."

    const-string v2, " "

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw1/q;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, " <-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz1/n;->u()Lw1/r;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lz1/n;->p:Lw1/r;

    invoke-virtual {v4, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[b="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/n$a;

    iget v4, v4, Lz1/n$a;->c:I

    invoke-static {v4}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public W(Lz1/v;)V
    .locals 4

    iget-object v0, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/n$a;

    iget-object v2, v1, Lz1/n$a;->a:Lw1/q;

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    invoke-virtual {p1, v2}, Lz1/v;->n(I)Lz1/u;

    move-result-object v2

    invoke-virtual {v2}, Lz1/u;->t()Lw1/q;

    move-result-object v2

    iget-object v3, v1, Lz1/n$a;->a:Lw1/q;

    invoke-virtual {v2}, Lw1/q;->getType()Ly1/c;

    move-result-object v2

    invoke-virtual {v3, v2}, Lw1/q;->U(Ly1/d;)Lw1/q;

    move-result-object v2

    iput-object v2, v1, Lz1/n$a;->a:Lw1/q;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lz1/n;->p:Lw1/r;

    return-void
.end method

.method public a(Lz1/u$a;)V
    .locals 0

    invoke-interface {p1, p0}, Lz1/u$a;->a(Lz1/n;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/n;->P()Lz1/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lz1/u;
    .locals 1

    invoke-virtual {p0}, Lz1/n;->P()Lz1/n;

    move-result-object v0

    return-object v0
.end method

.method public n()Lw1/t;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lw1/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz1/n;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lw1/r;
    .locals 4

    iget-object v0, p0, Lz1/n;->p:Lw1/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lw1/r;->a:Lw1/r;

    return-object v0

    :cond_1
    iget-object v0, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lw1/r;

    invoke-direct {v1, v0}, Lw1/r;-><init>(I)V

    iput-object v1, p0, Lz1/n;->p:Lw1/r;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lz1/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/n$a;

    iget-object v3, p0, Lz1/n;->p:Lw1/r;

    iget-object v2, v2, Lz1/n$a;->a:Lw1/q;

    invoke-virtual {v3, v1, v2}, Lw1/r;->F(ILw1/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz1/n;->p:Lw1/r;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    iget-object v0, p0, Lz1/n;->p:Lw1/r;

    return-object v0
.end method

.method public x()Z
    .locals 1

    invoke-static {}, Lz1/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz1/u;->j()Lw1/q;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
