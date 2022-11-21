.class public final Li7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/d$a;
    }
.end annotation


# instance fields
.field public final a:Lz6/a;

.field public final b:F

.field public c:Li7/d$a;

.field public d:Li7/d$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj7/f;J)V
    .locals 7

    new-instance v4, Lj7/a;

    invoke-direct {v4}, Lj7/a;-><init>()V

    invoke-static {}, Li7/d;->c()F

    move-result v5

    invoke-static {}, Lz6/a;->f()Lz6/a;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    invoke-direct/range {v0 .. v6}, Li7/d;-><init>(Lj7/f;JLj7/a;FLz6/a;)V

    invoke-static {p1}, Lj7/k;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Li7/d;->e:Z

    return-void
.end method

.method public constructor <init>(Lj7/f;JLj7/a;FLz6/a;)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Li7/d;->c:Li7/d$a;

    iput-object v2, v0, Li7/d;->d:Li7/d$a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Li7/d;->e:Z

    const/4 v3, 0x0

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "Sampling bucket ID should be in range [0.0f, 1.0f)."

    invoke-static {v2, v3}, Lj7/k;->a(ZLjava/lang/String;)V

    iput v1, v0, Li7/d;->b:F

    move-object/from16 v1, p6

    iput-object v1, v0, Li7/d;->a:Lz6/a;

    new-instance v2, Li7/d$a;

    iget-boolean v11, v0, Li7/d;->e:Z

    const-string v10, "Trace"

    move-object v4, v2

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v11}, Li7/d$a;-><init>(Lj7/f;JLj7/a;Lz6/a;Ljava/lang/String;Z)V

    iput-object v2, v0, Li7/d;->c:Li7/d$a;

    new-instance v2, Li7/d$a;

    iget-boolean v11, v0, Li7/d;->e:Z

    const-string v10, "Network"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Li7/d$a;-><init>(Lj7/f;JLj7/a;Lz6/a;Ljava/lang/String;Z)V

    iput-object v2, v0, Li7/d;->d:Li7/d$a;

    return-void
.end method

.method public static c()F
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Li7/d;->c:Li7/d$a;

    invoke-virtual {v0, p1}, Li7/d$a;->a(Z)V

    iget-object v0, p0, Li7/d;->d:Li7/d$a;

    invoke-virtual {v0, p1}, Li7/d$a;->a(Z)V

    return-void
.end method

.method public b(Lk7/i;)Z
    .locals 2

    invoke-virtual {p1}, Lk7/i;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li7/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lk7/i;->j()Lk7/m;

    move-result-object v0

    invoke-virtual {v0}, Lk7/m;->o0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Li7/d;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lk7/i;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li7/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lk7/i;->o()Lk7/h;

    move-result-object v0

    invoke-virtual {v0}, Lk7/h;->l0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Li7/d;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Li7/d;->g(Lk7/i;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1}, Lk7/i;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Li7/d;->d:Li7/d$a;

    invoke-virtual {v0, p1}, Li7/d$a;->b(Lk7/i;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lk7/i;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Li7/d;->c:Li7/d$a;

    invoke-virtual {v0, p1}, Li7/d$a;->b(Lk7/i;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public final d(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk7/k;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/k;

    invoke-virtual {v0}, Lk7/k;->W()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk7/k;

    invoke-virtual {p1, v1}, Lk7/k;->V(I)Lk7/l;

    move-result-object p1

    sget-object v0, Lk7/l;->d:Lk7/l;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Li7/d;->a:Lz6/a;

    invoke-virtual {v0}, Lz6/a;->q()F

    move-result v0

    iget v1, p0, Li7/d;->b:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Li7/d;->a:Lz6/a;

    invoke-virtual {v0}, Lz6/a;->E()F

    move-result v0

    iget v1, p0, Li7/d;->b:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Lk7/i;)Z
    .locals 3

    invoke-virtual {p1}, Lk7/i;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lk7/i;->j()Lk7/m;

    move-result-object v0

    invoke-virtual {v0}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lj7/c;->q:Lj7/c;

    invoke-virtual {v2}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lk7/i;->j()Lk7/m;

    move-result-object v0

    invoke-virtual {v0}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lj7/c;->r:Lj7/c;

    invoke-virtual {v2}, Lj7/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lk7/i;->j()Lk7/m;

    move-result-object v0

    invoke-virtual {v0}, Lk7/m;->g0()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lk7/i;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
