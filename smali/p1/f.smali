.class public Lp1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/f$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lb2/d;

.field public final c:Z

.field public d:Lx1/f0;

.field public e:I

.field public f:Lx1/e0;

.field public g:Lx1/e0;

.field public h:Ly1/e;

.field public i:Lq1/e;

.field public j:Lq1/h;

.field public k:Lq1/k;

.field public l:Lp1/b;

.field public m:Lq1/j;


# direct methods
.method public constructor <init>(Lb2/d;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lp1/f;->a:Ljava/lang/String;

    iput-object p1, p0, Lp1/f;->b:Lb2/d;

    iput-boolean p3, p0, Lp1/f;->c:Z

    const/4 p1, -0x1

    iput p1, p0, Lp1/f;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filePath == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLjava/lang/String;Z)V
    .locals 1

    new-instance v0, Lb2/d;

    invoke-direct {v0, p1}, Lb2/d;-><init>([B)V

    invoke-direct {p0, v0, p2, p3}, Lp1/f;-><init>(Lb2/d;Ljava/lang/String;Z)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "(none)"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lp1/f;->w()V

    iget v0, p0, Lp1/f;->e:I

    return v0
.end method

.method public b()Lx1/d0;
    .locals 2

    invoke-virtual {p0}, Lp1/f;->c()Lq1/b;

    move-result-object v0

    const-string v1, "SourceFile"

    invoke-interface {v0, v1}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object v0

    instance-of v1, v0, Lm1/r;

    if-eqz v1, :cond_0

    check-cast v0, Lm1/r;

    invoke-virtual {v0}, Lm1/r;->a()Lx1/d0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lq1/b;
    .locals 1

    invoke-virtual {p0}, Lp1/f;->v()V

    iget-object v0, p0, Lp1/f;->k:Lq1/k;

    return-object v0
.end method

.method public d()Ln1/d;
    .locals 2

    invoke-virtual {p0}, Lp1/f;->c()Lq1/b;

    move-result-object v0

    const-string v1, "BootstrapMethods"

    invoke-interface {v0, v1}, Lq1/b;->j(Ljava/lang/String;)Lq1/a;

    move-result-object v0

    check-cast v0, Lm1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm1/b;->a()Ln1/d;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ln1/d;->a:Ln1/d;

    return-object v0
.end method

.method public e()Lb2/d;
    .locals 1

    iget-object v0, p0, Lp1/f;->b:Lb2/d;

    return-object v0
.end method

.method public f()Lx1/b;
    .locals 1

    invoke-virtual {p0}, Lp1/f;->w()V

    iget-object v0, p0, Lp1/f;->d:Lx1/f0;

    return-object v0
.end method

.method public g()Lq1/e;
    .locals 1

    invoke-virtual {p0}, Lp1/f;->v()V

    iget-object v0, p0, Lp1/f;->i:Lq1/e;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp1/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ly1/e;
    .locals 1

    invoke-virtual {p0}, Lp1/f;->w()V

    iget-object v0, p0, Lp1/f;->h:Ly1/e;

    return-object v0
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, Lp1/f;->w()V

    invoke-virtual {p0}, Lp1/f;->k()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 2

    iget-object v0, p0, Lp1/f;->b:Lb2/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb2/d;->i(I)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lp1/f;->b:Lb2/d;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lb2/d;->n(I)I

    move-result v0

    return v0
.end method

.method public m()Lq1/h;
    .locals 1

    invoke-virtual {p0}, Lp1/f;->v()V

    iget-object v0, p0, Lp1/f;->j:Lq1/h;

    return-object v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lp1/f;->b:Lb2/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lb2/d;->n(I)I

    move-result v0

    return v0
.end method

.method public o()Lx1/e0;
    .locals 1

    invoke-virtual {p0}, Lp1/f;->w()V

    iget-object v0, p0, Lp1/f;->g:Lx1/e0;

    return-object v0
.end method

.method public p()Lx1/e0;
    .locals 1

    invoke-virtual {p0}, Lp1/f;->w()V

    iget-object v0, p0, Lp1/f;->f:Lx1/e0;

    return-object v0
.end method

.method public final q(I)Z
    .locals 1

    const v0, -0x35014542    # -8346975.0f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final r(II)Z
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0x35

    if-ne p2, v1, :cond_0

    if-gtz p1, :cond_1

    return v0

    :cond_0
    if-ge p2, v1, :cond_1

    const/16 p1, 0x2d

    if-lt p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public s(II)Ly1/e;
    .locals 7

    if-nez p2, :cond_0

    sget-object p1, Ly1/b;->a:Ly1/b;

    return-object p1

    :cond_0
    iget-object v4, p0, Lp1/f;->d:Lx1/f0;

    if-eqz v4, :cond_1

    new-instance v6, Lp1/f$a;

    iget-object v1, p0, Lp1/f;->b:Lb2/d;

    iget-object v5, p0, Lp1/f;->m:Lq1/j;

    move-object v0, v6

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lp1/f$a;-><init>(Lb2/d;IILx1/f0;Lq1/j;)V

    return-object v6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "pool not yet initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()V
    .locals 3

    const-string v0, "...while parsing "

    :try_start_0
    invoke-virtual {p0}, Lp1/f;->u()V
    :try_end_0
    .catch Lq1/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lq1/i;

    invoke-direct {v2, v1}, Lq1/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp1/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ll1/d;->a(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp1/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ll1/d;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public final u()V
    .locals 14

    iget-object v0, p0, Lp1/f;->b:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->q()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lp1/f;->m:Lq1/j;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v4, p0, Lp1/f;->b:Lb2/d;

    const-string v5, "begin classfile"

    invoke-interface {v0, v4, v2, v2, v5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v0, p0, Lp1/f;->m:Lq1/j;

    iget-object v4, p0, Lp1/f;->b:Lb2/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "magic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp1/f;->k()I

    move-result v6

    invoke-static {v6}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v0, v4, v2, v6, v5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v0, p0, Lp1/f;->m:Lq1/j;

    iget-object v4, p0, Lp1/f;->b:Lb2/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minor_version: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp1/f;->n()I

    move-result v7

    invoke-static {v7}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v6, v3, v5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v0, p0, Lp1/f;->m:Lq1/j;

    iget-object v4, p0, Lp1/f;->b:Lb2/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "major_version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp1/f;->l()I

    move-result v6

    invoke-static {v6}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v1, v3, v5}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lp1/f;->c:Z

    const-string v4, ")"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lp1/f;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lp1/f;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lp1/f;->n()I

    move-result v0

    invoke-virtual {p0}, Lp1/f;->l()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lp1/f;->r(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lq1/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported class file version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp1/f;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp1/f;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lq1/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad class file magic ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp1/f;->k()I

    move-result v2

    invoke-static {v2}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    new-instance v0, Lo1/a;

    iget-object v5, p0, Lp1/f;->b:Lb2/d;

    invoke-direct {v0, v5}, Lo1/a;-><init>(Lb2/d;)V

    iget-object v5, p0, Lp1/f;->m:Lq1/j;

    invoke-virtual {v0, v5}, Lo1/a;->i(Lq1/j;)V

    invoke-virtual {v0}, Lo1/a;->d()Lx1/f0;

    move-result-object v5

    iput-object v5, p0, Lp1/f;->d:Lx1/f0;

    invoke-virtual {v5}, Lb2/o;->setImmutable()V

    invoke-virtual {v0}, Lo1/a;->b()I

    move-result v0

    iget-object v5, p0, Lp1/f;->b:Lb2/d;

    invoke-virtual {v5, v0}, Lb2/d;->n(I)I

    move-result v5

    iget-object v6, p0, Lp1/f;->b:Lb2/d;

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7}, Lb2/d;->n(I)I

    move-result v6

    iget-object v8, p0, Lp1/f;->d:Lx1/f0;

    invoke-virtual {v8, v6}, Lx1/f0;->get(I)Lx1/a;

    move-result-object v6

    check-cast v6, Lx1/e0;

    iput-object v6, p0, Lp1/f;->f:Lx1/e0;

    iget-object v6, p0, Lp1/f;->b:Lb2/d;

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v6, v8}, Lb2/d;->n(I)I

    move-result v6

    iget-object v9, p0, Lp1/f;->d:Lx1/f0;

    invoke-virtual {v9, v6}, Lx1/f0;->u(I)Lx1/a;

    move-result-object v6

    check-cast v6, Lx1/e0;

    iput-object v6, p0, Lp1/f;->g:Lx1/e0;

    iget-object v6, p0, Lp1/f;->b:Lb2/d;

    add-int/lit8 v9, v0, 0x6

    invoke-virtual {v6, v9}, Lb2/d;->n(I)I

    move-result v6

    iget-object v10, p0, Lp1/f;->m:Lq1/j;

    if-eqz v10, :cond_4

    iget-object v11, p0, Lp1/f;->b:Lb2/d;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "access_flags: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lw1/a;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v0, v3, v12}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v10, p0, Lp1/f;->m:Lq1/j;

    iget-object v11, p0, Lp1/f;->b:Lb2/d;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "this_class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lp1/f;->f:Lx1/e0;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v7, v3, v12}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v7, p0, Lp1/f;->m:Lq1/j;

    iget-object v10, p0, Lp1/f;->b:Lb2/d;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "super_class: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lp1/f;->g:Lx1/e0;

    invoke-static {v12}, Lp1/f;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v8, v3, v11}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    iget-object v7, p0, Lp1/f;->m:Lq1/j;

    iget-object v8, p0, Lp1/f;->b:Lb2/d;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interfaces_count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v3, v10}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    if-eqz v6, :cond_4

    iget-object v7, p0, Lp1/f;->m:Lq1/j;

    iget-object v8, p0, Lp1/f;->b:Lb2/d;

    add-int/lit8 v9, v0, 0x8

    const-string v10, "interfaces:"

    invoke-interface {v7, v8, v9, v2, v10}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0, v6}, Lp1/f;->s(II)Ly1/e;

    move-result-object v7

    iput-object v7, p0, Lp1/f;->h:Ly1/e;

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    iget-boolean v3, p0, Lp1/f;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lp1/f;->f:Lx1/e0;

    invoke-virtual {v3}, Lx1/e0;->x()Ly1/c;

    move-result-object v3

    invoke-virtual {v3}, Ly1/c;->u()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lp1/f;->a:Ljava/lang/String;

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lp1/f;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lp1/f;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    if-ne v6, v7, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lq1/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") does not match path ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lp1/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    iput v5, p0, Lp1/f;->e:I

    new-instance v1, Lp1/g;

    iget-object v3, p0, Lp1/f;->f:Lx1/e0;

    iget-object v4, p0, Lp1/f;->l:Lp1/b;

    invoke-direct {v1, p0, v3, v0, v4}, Lp1/g;-><init>(Lp1/f;Lx1/e0;ILp1/b;)V

    iget-object v0, p0, Lp1/f;->m:Lq1/j;

    invoke-virtual {v1, v0}, Lp1/h;->j(Lq1/j;)V

    invoke-virtual {v1}, Lp1/g;->k()Lq1/m;

    move-result-object v0

    iput-object v0, p0, Lp1/f;->i:Lq1/e;

    invoke-virtual {v1}, Lp1/h;->d()I

    move-result v0

    new-instance v1, Lp1/i;

    iget-object v3, p0, Lp1/f;->f:Lx1/e0;

    iget-object v4, p0, Lp1/f;->l:Lp1/b;

    invoke-direct {v1, p0, v3, v0, v4}, Lp1/i;-><init>(Lp1/f;Lx1/e0;ILp1/b;)V

    iget-object v0, p0, Lp1/f;->m:Lq1/j;

    invoke-virtual {v1, v0}, Lp1/h;->j(Lq1/j;)V

    invoke-virtual {v1}, Lp1/i;->k()Lq1/p;

    move-result-object v0

    iput-object v0, p0, Lp1/f;->j:Lq1/h;

    invoke-virtual {v1}, Lp1/h;->d()I

    move-result v0

    new-instance v1, Lp1/c;

    iget-object v3, p0, Lp1/f;->l:Lp1/b;

    invoke-direct {v1, p0, v2, v0, v3}, Lp1/c;-><init>(Lp1/f;IILp1/b;)V

    iget-object v0, p0, Lp1/f;->m:Lq1/j;

    invoke-virtual {v1, v0}, Lp1/c;->e(Lq1/j;)V

    invoke-virtual {v1}, Lp1/c;->b()Lq1/k;

    move-result-object v0

    iput-object v0, p0, Lp1/f;->k:Lq1/k;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    invoke-virtual {v1}, Lp1/c;->a()I

    move-result v0

    iget-object v1, p0, Lp1/f;->b:Lb2/d;

    invoke-virtual {v1}, Lb2/d;->q()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lp1/f;->m:Lq1/j;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lp1/f;->b:Lb2/d;

    const-string v4, "end classfile"

    invoke-interface {v1, v3, v0, v2, v4}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    new-instance v1, Lq1/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra bytes at end of class file, at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Lq1/i;

    const-string v1, "severely truncated class file"

    invoke-direct {v0, v1}, Lq1/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lp1/f;->k:Lq1/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp1/f;->t()V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    iget v0, p0, Lp1/f;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lp1/f;->t()V

    :cond_0
    return-void
.end method

.method public x(Lp1/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lp1/f;->l:Lp1/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "attributeFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
