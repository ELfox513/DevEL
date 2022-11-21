.class public final Ln1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/g;


# instance fields
.field public final a:Lq1/g;

.field public final b:Lq1/c;

.field public final c:Lm1/c;

.field public final d:Ln1/m;

.field public final e:Ln1/n;


# direct methods
.method public constructor <init>(Lq1/g;Lq1/c;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/j;->a:Lq1/g;

    iput-object p2, p0, Ln1/j;->b:Lq1/c;

    invoke-interface {p1}, Lq1/f;->getAttributes()Lq1/b;

    move-result-object p1

    const-string p2, "Code"

    invoke-interface {p1, p2}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p1

    check-cast p1, Lm1/c;

    iput-object p1, p0, Ln1/j;->c:Lm1/c;

    invoke-virtual {p1}, Lm1/c;->a()Lq1/b;

    move-result-object p1

    sget-object p2, Ln1/m;->a:Ln1/m;

    if-eqz p3, :cond_0

    const-string p3, "LineNumberTable"

    invoke-interface {p1, p3}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p3

    check-cast p3, Lm1/i;

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lm1/i;->a()Ln1/m;

    move-result-object v0

    invoke-static {p2, v0}, Ln1/m;->x(Ln1/m;Ln1/m;)Ln1/m;

    move-result-object p2

    invoke-interface {p1, p3}, Lq1/b;->n(Lq1/a;)Lq1/a;

    move-result-object p3

    check-cast p3, Lm1/i;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Ln1/j;->d:Ln1/m;

    sget-object p2, Ln1/n;->a:Ln1/n;

    if-eqz p4, :cond_3

    const-string p3, "LocalVariableTable"

    invoke-interface {p1, p3}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p3

    check-cast p3, Lm1/j;

    :goto_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lm1/v;->a()Ln1/n;

    move-result-object p4

    invoke-static {p2, p4}, Ln1/n;->x(Ln1/n;Ln1/n;)Ln1/n;

    move-result-object p2

    invoke-interface {p1, p3}, Lq1/b;->n(Lq1/a;)Lq1/a;

    move-result-object p3

    check-cast p3, Lm1/j;

    goto :goto_1

    :cond_1
    sget-object p3, Ln1/n;->a:Ln1/n;

    const-string p4, "LocalVariableTypeTable"

    invoke-interface {p1, p4}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object p4

    check-cast p4, Lm1/k;

    :goto_2
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lm1/v;->a()Ln1/n;

    move-result-object v0

    invoke-static {p3, v0}, Ln1/n;->x(Ln1/n;Ln1/n;)Ln1/n;

    move-result-object p3

    invoke-interface {p1, p4}, Lq1/b;->n(Lq1/a;)Lq1/a;

    move-result-object p4

    check-cast p4, Lm1/k;

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lb2/f;->size()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, p3}, Ln1/n;->B(Ln1/n;Ln1/n;)Ln1/n;

    move-result-object p2

    :cond_3
    iput-object p2, p0, Ln1/j;->e:Ln1/n;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Ln1/j;->a:Lq1/g;

    invoke-interface {v0}, Lq1/f;->a()I

    move-result v0

    return v0
.end method

.method public b()Ly1/a;
    .locals 1

    iget-object v0, p0, Ln1/j;->a:Lq1/g;

    invoke-interface {v0}, Lq1/g;->b()Ly1/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lx1/e0;
    .locals 1

    iget-object v0, p0, Ln1/j;->a:Lq1/g;

    invoke-interface {v0}, Lq1/f;->c()Lx1/e0;

    move-result-object v0

    return-object v0
.end method

.method public d()Lx1/a0;
    .locals 1

    iget-object v0, p0, Ln1/j;->a:Lq1/g;

    invoke-interface {v0}, Lq1/f;->d()Lx1/a0;

    move-result-object v0

    return-object v0
.end method

.method public f()Ln1/g;
    .locals 1

    iget-object v0, p0, Ln1/j;->c:Lm1/c;

    invoke-virtual {v0}, Lm1/c;->b()Ln1/g;

    move-result-object v0

    return-object v0
.end method

.method public g()Ln1/i;
    .locals 1

    iget-object v0, p0, Ln1/j;->c:Lm1/c;

    invoke-virtual {v0}, Lm1/c;->d()Ln1/i;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lq1/b;
    .locals 1

    iget-object v0, p0, Ln1/j;->a:Lq1/g;

    invoke-interface {v0}, Lq1/f;->getAttributes()Lq1/b;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Lx1/d0;
    .locals 1

    iget-object v0, p0, Ln1/j;->a:Lq1/g;

    invoke-interface {v0}, Lq1/f;->getDescriptor()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lx1/d0;
    .locals 1

    iget-object v0, p0, Ln1/j;->a:Lq1/g;

    invoke-interface {v0}, Lq1/f;->getName()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public h()Ln1/n;
    .locals 1

    iget-object v0, p0, Ln1/j;->e:Ln1/n;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Ln1/j;->c:Lm1/c;

    invoke-virtual {v0}, Lm1/c;->e()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Ln1/j;->c:Lm1/c;

    invoke-virtual {v0}, Lm1/c;->f()I

    move-result v0

    return v0
.end method

.method public k()Lx1/d0;
    .locals 1

    iget-object v0, p0, Ln1/j;->b:Lq1/c;

    invoke-interface {v0}, Lq1/c;->b()Lx1/d0;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Ln1/j;->b:Lq1/c;

    invoke-interface {v0}, Lq1/c;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln1/j;->d()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, Ln1/j;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(I)Lw1/w;
    .locals 3

    new-instance v0, Lw1/w;

    invoke-virtual {p0}, Ln1/j;->k()Lx1/d0;

    move-result-object v1

    iget-object v2, p0, Ln1/j;->d:Ln1/m;

    invoke-virtual {v2, p1}, Ln1/m;->A(I)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lw1/w;-><init>(Lx1/d0;II)V

    return-object v0
.end method
