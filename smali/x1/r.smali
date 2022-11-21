.class public final Lx1/r;
.super Lx1/a;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lx1/a0;

.field public final d:Ly1/a;

.field public k:Lx1/e0;

.field public p:Lx1/h;

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx1/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILx1/a0;)V
    .locals 0

    invoke-direct {p0}, Lx1/a;-><init>()V

    iput p1, p0, Lx1/r;->a:I

    iput-object p2, p0, Lx1/r;->b:Lx1/a0;

    invoke-virtual {p2}, Lx1/a0;->n()Lx1/d0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly1/a;->f(Ljava/lang/String;)Ly1/a;

    move-result-object p1

    iput-object p1, p0, Lx1/r;->d:Ly1/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lx1/r;->q:Ljava/util/List;

    return-void
.end method

.method public static E(ILx1/a0;)Lx1/r;
    .locals 1

    new-instance v0, Lx1/r;

    invoke-direct {v0, p0, p1}, Lx1/r;-><init>(ILx1/a0;)V

    return-object v0
.end method


# virtual methods
.method public A()Lx1/a0;
    .locals 1

    iget-object v0, p0, Lx1/r;->b:Lx1/a0;

    return-object v0
.end method

.method public B()Ly1/a;
    .locals 1

    iget-object v0, p0, Lx1/r;->d:Ly1/a;

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx1/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx1/r;->q:Ljava/util/List;

    return-object v0
.end method

.method public D()Ly1/c;
    .locals 1

    iget-object v0, p0, Lx1/r;->d:Ly1/a;

    invoke-virtual {v0}, Ly1/a;->n()Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public F(Lx1/h;)V
    .locals 1

    iget-object v0, p0, Lx1/r;->p:Lx1/h;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lx1/r;->p:Lx1/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callSite == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "already added call site"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Lx1/e0;)V
    .locals 1

    iget-object v0, p0, Lx1/r;->k:Lx1/e0;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lx1/r;->k:Lx1/e0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "declaringClass == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "already added declaring class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lx1/a;)I
    .locals 2

    check-cast p1, Lx1/r;

    iget v0, p0, Lx1/r;->a:I

    invoke-virtual {p1}, Lx1/r;->u()I

    move-result v1

    invoke-static {v0, v1}, Lx1/i;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lx1/r;->b:Lx1/a0;

    invoke-virtual {p1}, Lx1/r;->A()Lx1/a0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx1/a;->c(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lx1/r;->k:Lx1/e0;

    invoke-virtual {p1}, Lx1/r;->z()Lx1/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx1/a;->c(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lx1/r;->p:Lx1/h;

    invoke-virtual {p1}, Lx1/r;->x()Lx1/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "InvokeDynamic"

    return-object v0
.end method

.method public n()Lx1/j;
    .locals 2

    new-instance v0, Lx1/j;

    iget-object v1, p0, Lx1/r;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lx1/j;-><init>(Lx1/r;I)V

    iget-object v1, p0, Lx1/r;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lx1/r;->k:Lx1/e0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InvokeDynamic("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx1/r;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lx1/r;->b:Lx1/a0;

    invoke-virtual {v0}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lx1/r;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lx1/r;->a:I

    return v0
.end method

.method public x()Lx1/h;
    .locals 1

    iget-object v0, p0, Lx1/r;->p:Lx1/h;

    return-object v0
.end method

.method public z()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lx1/r;->k:Lx1/e0;

    return-object v0
.end method
