.class public final Ln1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/u$h;,
        Ln1/u$e;,
        Ln1/u$f;,
        Ln1/u$g;,
        Ln1/u$d;,
        Ln1/u$c;
    }
.end annotation


# instance fields
.field public final a:Ln1/j;

.field public final b:Ln1/f;

.field public final c:I

.field public final d:I

.field public final e:Ln1/v;

.field public final f:Ln1/x;

.field public final g:[Ln1/l;

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb2/j;",
            ">;"
        }
    .end annotation
.end field

.field public final j:[Ln1/u$c;

.field public k:Z

.field public final l:[Ln1/u$g;

.field public m:Z

.field public final n:Ln1/u$e;


# direct methods
.method public constructor <init>(Ln1/j;Lw1/a0;Lq1/h;Lcom/android/dx/dex/DexOptions;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Ln1/u;->a:Ln1/j;

    invoke-static {p1}, Ln1/b;->m(Ln1/j;)Ln1/f;

    move-result-object v0

    iput-object v0, p0, Ln1/u;->b:Ln1/f;

    invoke-virtual {v0}, Lb2/m;->z()I

    move-result v1

    iput v1, p0, Ln1/u;->d:I

    invoke-virtual {p1}, Ln1/j;->i()I

    move-result v2

    iput v2, p0, Ln1/u;->c:I

    new-instance v3, Ln1/v;

    invoke-direct {v3, p0, p1, p2, p3}, Ln1/v;-><init>(Ln1/u;Ln1/j;Lw1/a0;Lq1/h;)V

    iput-object v3, p0, Ln1/u;->e:Ln1/v;

    new-instance p2, Ln1/x;

    invoke-direct {p2, v3, p1, p4}, Ln1/x;-><init>(Ln1/q;Ln1/j;Lcom/android/dx/dex/DexOptions;)V

    iput-object p2, p0, Ln1/u;->f:Ln1/x;

    new-array p2, v1, [Ln1/l;

    iput-object p2, p0, Ln1/u;->g:[Ln1/l;

    new-array p3, v1, [Ln1/u$g;

    iput-object p3, p0, Ln1/u;->l:[Ln1/u$g;

    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result p4

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0xa

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Ln1/u;->h:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result p4

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0xa

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Ln1/u;->i:Ljava/util/ArrayList;

    new-array p3, v1, [Ln1/u$c;

    iput-object p3, p0, Ln1/u;->j:[Ln1/u$c;

    const/4 p3, 0x0

    iput-boolean p3, p0, Ln1/u;->k:Z

    new-instance p4, Ln1/l;

    invoke-virtual {p1}, Ln1/j;->j()I

    move-result p1

    invoke-direct {p4, v2, p1}, Ln1/l;-><init>(II)V

    aput-object p4, p2, p3

    new-instance p1, Ln1/u$e;

    invoke-direct {p1, p0}, Ln1/u$e;-><init>(Ln1/u;)V

    iput-object p1, p0, Ln1/u;->n:Ln1/u$e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "advice == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Ln1/u;)Ln1/u$e;
    .locals 0

    iget-object p0, p0, Ln1/u;->n:Ln1/u$e;

    return-object p0
.end method

.method public static synthetic b(Ln1/u;)I
    .locals 0

    iget p0, p0, Ln1/u;->d:I

    return p0
.end method

.method public static synthetic c(Ln1/u;Lw1/i;)Lw1/i;
    .locals 0

    invoke-virtual {p0, p1}, Ln1/u;->v(Lw1/i;)Lw1/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ln1/u;Lw1/b;Lb2/j;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    return-void
.end method

.method public static synthetic e(Ln1/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Ln1/u;->m:Z

    return p1
.end method

.method public static synthetic f(Ln1/u;I)Lw1/b;
    .locals 0

    invoke-virtual {p0, p1}, Ln1/u;->J(I)Lw1/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ln1/u;IILn1/u$g;Ln1/l;[I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ln1/u;->L(IILn1/u$g;Ln1/l;[I)V

    return-void
.end method

.method public static synthetic h(Ln1/u;Lw1/b;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ln1/u;->H(Lw1/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ln1/u;)Ln1/j;
    .locals 0

    iget-object p0, p0, Ln1/u;->a:Ln1/j;

    return-object p0
.end method

.method public static synthetic j(Ln1/u;Lw1/b;Lb2/j;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln1/u;->o(Lw1/b;Lb2/j;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ln1/u;I)Ln1/u$g;
    .locals 0

    invoke-virtual {p0, p1}, Ln1/u;->P(I)Ln1/u$g;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ln1/j;Lw1/a0;Lq1/h;Lcom/android/dx/dex/DexOptions;)Lw1/u;
    .locals 1

    :try_start_0
    new-instance v0, Ln1/u;

    invoke-direct {v0, p0, p1, p2, p3}, Ln1/u;-><init>(Ln1/j;Lw1/a0;Lq1/h;Lcom/android/dx/dex/DexOptions;)V

    invoke-virtual {v0}, Ln1/u;->u()V

    invoke-virtual {v0}, Ln1/u;->C()Lw1/u;

    move-result-object p0
    :try_end_0
    .catch Ln1/w; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "...while working on method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln1/j;->d()Lx1/a0;

    move-result-object p0

    invoke-virtual {p0}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ll1/d;->a(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A()I
    .locals 2

    iget v0, p0, Ln1/u;->d:I

    iget-object v1, p0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->f()Ln1/g;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final B()I
    .locals 2

    iget v0, p0, Ln1/u;->c:I

    iget-object v1, p0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->j()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final C()Lw1/u;
    .locals 4

    iget-object v0, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lw1/c;

    invoke-direct {v1, v0}, Lw1/c;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/b;

    invoke-virtual {v1, v2, v3}, Lw1/c;->N(ILw1/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    new-instance v0, Lw1/u;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ln1/u;->D(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lw1/u;-><init>(Lw1/c;I)V

    return-object v0
.end method

.method public final D(I)I
    .locals 2

    iget v0, p0, Ln1/u;->d:I

    iget-object v1, p0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->f()Ln1/g;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    add-int/2addr v0, v1

    xor-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    return v0
.end method

.method public final E()Lw1/q;
    .locals 2

    invoke-virtual {p0}, Ln1/u;->B()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Ly1/c;->K:Ly1/c;

    invoke-static {v0, v1}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v0

    return-object v0
.end method

.method public final F()V
    .locals 8

    new-instance v0, Lb2/j;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lb2/j;-><init>(I)V

    new-instance v1, Ln1/u$a;

    invoke-direct {v1, p0, v0}, Ln1/u$a;-><init>(Ln1/u;Lb2/j;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ln1/u;->w(ILw1/b$a;)V

    invoke-virtual {p0}, Ln1/u;->y()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw1/b;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Ln1/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb2/j;

    invoke-virtual {v4}, Lw1/b;->a()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lb2/j;->B(I)I

    move-result v4

    new-instance v5, Ln1/u$h;

    new-instance v6, Ln1/u$f;

    invoke-virtual {p0}, Ln1/u;->y()I

    move-result v7

    invoke-direct {v6, v7}, Ln1/u$f;-><init>(I)V

    invoke-direct {v5, p0, v6, v3}, Ln1/u$h;-><init>(Ln1/u;Ln1/u$f;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Ln1/u;->J(I)Lw1/b;

    move-result-object v4

    invoke-virtual {v5, v4}, Ln1/u$h;->b(Lw1/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ln1/u;->t()V

    return-void
.end method

.method public final G()Z
    .locals 1

    iget-object v0, p0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v0}, Ln1/j;->a()I

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

.method public final H(Lw1/b;)Z
    .locals 4

    invoke-virtual {p1}, Lw1/b;->h()Lb2/j;

    move-result-object p1

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb2/j;->B(I)I

    move-result p1

    iget-object v2, p0, Ln1/u;->l:[Ln1/u$g;

    array-length v3, v2

    if-ge p1, v3, :cond_1

    aget-object p1, v2, p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final I()Z
    .locals 1

    iget-object v0, p0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v0}, Ln1/j;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final J(I)Lw1/b;
    .locals 3

    invoke-virtual {p0, p1}, Ln1/u;->K(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/b;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final K(I)I
    .locals 3

    iget-object v0, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/b;

    invoke-virtual {v2}, Lw1/b;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final L(IILn1/u$g;Ln1/l;[I)V
    .locals 2

    iget-object v0, p0, Ln1/u;->g:[Ln1/l;

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ln1/u$g;->e()I

    move-result p3

    invoke-virtual {v1, p4, p3, p2}, Ln1/l;->m(Ln1/l;II)Ln1/l;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p4}, Ln1/l;->l(Ln1/l;)Ln1/l;

    move-result-object p2

    :goto_0
    if-eq p2, v1, :cond_3

    iget-object p3, p0, Ln1/u;->g:[Ln1/l;

    aput-object p2, p3, p1

    invoke-static {p5, p1}, Lb2/c;->k([II)V

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p4, p1, p2}, Ln1/l;->j(II)Ln1/l;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_1

    :cond_2
    aput-object p4, v0, p1

    :goto_1
    invoke-static {p5, p1}, Lb2/c;->k([II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final M(Ln1/e;Ln1/l;[I)V
    .locals 24

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Ln1/e;->b()Ln1/g;

    move-result-object v0

    iget-object v1, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v0}, Ln1/g;->C()Ly1/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/v;->V(Ly1/e;)V

    invoke-virtual/range {p2 .. p2}, Ln1/l;->c()Ln1/l;

    move-result-object v8

    iget-object v1, v7, Ln1/u;->f:Ln1/x;

    move-object/from16 v9, p1

    invoke-virtual {v1, v9, v8}, Ln1/x;->r(Ln1/e;Ln1/l;)V

    invoke-virtual {v8}, Ln1/l;->n()V

    iget-object v1, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v1}, Ln1/v;->J()I

    move-result v10

    iget-object v1, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v1}, Ln1/v;->K()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ln1/e;->e()Lb2/j;

    move-result-object v1

    iget-object v2, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v2}, Ln1/v;->Q()Z

    move-result v2

    const/4 v14, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v6}, Lb2/j;->B(I)I

    move-result v2

    iget-object v3, v7, Ln1/u;->l:[Ln1/u$g;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    new-instance v4, Ln1/u$g;

    invoke-direct {v4, v7, v2}, Ln1/u$g;-><init>(Ln1/u;I)V

    aput-object v4, v3, v2

    :cond_0
    iget-object v3, v7, Ln1/u;->l:[Ln1/u$g;

    aget-object v3, v3, v2

    invoke-virtual/range {p1 .. p1}, Ln1/e;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ln1/u$g;->c(I)V

    iget-object v3, v7, Ln1/u;->l:[Ln1/u$g;

    aget-object v2, v3, v2

    move-object/from16 v5, p3

    move-object v4, v1

    move-object/from16 v16, v2

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v2}, Ln1/v;->R()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v1}, Ln1/v;->M()Ln1/t;

    move-result-object v1

    invoke-virtual {v1}, Ln1/t;->a()I

    move-result v1

    iget-object v2, v7, Ln1/u;->l:[Ln1/u$g;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    new-instance v3, Ln1/u$g;

    invoke-virtual/range {p1 .. p1}, Ln1/e;->a()I

    move-result v4

    invoke-direct {v3, v7, v1, v4}, Ln1/u$g;-><init>(Ln1/u;II)V

    aput-object v3, v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ln1/e;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Ln1/u$g;->d(I)V

    :goto_0
    iget-object v2, v7, Ln1/u;->l:[Ln1/u$g;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ln1/u$g;->f()Lb2/j;

    move-result-object v2

    iget-object v3, v7, Ln1/u;->l:[Ln1/u$g;

    aget-object v1, v3, v1

    move-object/from16 v5, p3

    invoke-virtual {v1, v8, v5}, Ln1/u$g;->g(Ln1/l;[I)V

    invoke-virtual {v2}, Lb2/j;->size()I

    move-result v1

    move-object v4, v2

    goto :goto_1

    :cond_3
    move-object/from16 v5, p3

    iget-object v2, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v2}, Ln1/v;->X()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v4, v1

    move v1, v13

    :goto_1
    move-object/from16 v16, v14

    goto :goto_2

    :cond_4
    move-object v4, v1

    move-object/from16 v16, v14

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4}, Lb2/j;->size()I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_5

    invoke-virtual {v4, v2}, Lb2/j;->B(I)I

    move-result v17

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ln1/e;->a()I

    move-result v18

    move-object/from16 v1, p0

    move/from16 v19, v2

    move/from16 v2, v17

    move/from16 v20, v3

    move/from16 v3, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object v5, v8

    const/4 v15, 0x1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Ln1/u;->L(IILn1/u$g;Ln1/l;[I)V
    :try_end_0
    .catch Ln1/w; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v5, p3

    move-object/from16 v4, v18

    move/from16 v3, v20

    const/4 v6, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while merging to block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/d;->a(Ljava/lang/String;)V

    throw v0

    :cond_5
    move/from16 v20, v3

    move-object/from16 v18, v4

    const/4 v15, 0x1

    if-nez v20, :cond_6

    iget-object v1, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v1}, Ln1/v;->U()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x2

    invoke-virtual {v7, v1}, Ln1/u;->D(I)I

    move-result v1

    invoke-static {v1}, Lb2/j;->F(I)Lb2/j;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v4, v18

    move/from16 v6, v20

    :goto_4
    if-nez v6, :cond_7

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_5

    :cond_7
    iget-object v1, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v1}, Ln1/v;->L()I

    move-result v1

    if-ltz v1, :cond_8

    invoke-virtual {v4, v1}, Lb2/j;->B(I)I

    move-result v1

    :cond_8
    move v5, v1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ln1/u;->I()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v7, Ln1/u;->e:Ln1/v;

    invoke-virtual {v1}, Ln1/v;->I()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    if-nez v16, :cond_b

    if-eqz v13, :cond_a

    goto :goto_7

    :cond_a
    move v1, v5

    goto/16 :goto_b

    :cond_b
    :goto_7
    new-instance v4, Lb2/j;

    invoke-direct {v4, v6}, Lb2/j;-><init>(I)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_e

    invoke-virtual {v0, v6}, Ln1/g;->x(I)Ln1/g$a;

    move-result-object v2

    invoke-virtual {v2}, Ln1/g$a;->c()Lx1/e0;

    move-result-object v3

    invoke-virtual {v2}, Ln1/g$a;->d()I

    move-result v17

    sget-object v2, Lx1/e0;->k:Lx1/e0;

    if-ne v3, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    or-int v18, v1, v2

    invoke-virtual {v8, v3}, Ln1/l;->h(Lx1/e0;)Ln1/l;

    move-result-object v19

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ln1/e;->a()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object/from16 v22, v3

    move/from16 v3, v20

    move-object v15, v4

    move-object/from16 v4, v21

    move/from16 v23, v5

    move-object/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Ln1/u;->L(IILn1/u$g;Ln1/l;[I)V
    :try_end_1
    .catch Ln1/w; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, v7, Ln1/u;->j:[Ln1/u$c;

    aget-object v1, v1, v17

    if-nez v1, :cond_d

    new-instance v1, Ln1/u$c;

    invoke-direct {v1, v7, v14}, Ln1/u$c;-><init>(Ln1/u;Ln1/u$a;)V

    iget-object v2, v7, Ln1/u;->j:[Ln1/u$c;

    aput-object v1, v2, v17

    :cond_d
    invoke-virtual/range {v22 .. v22}, Lx1/e0;->x()Ly1/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/u$c;->a(Ly1/c;)Ln1/u$d;

    move-result-object v1

    invoke-virtual {v1}, Ln1/u$d;->b()I

    move-result v1

    invoke-virtual {v15, v1}, Lb2/j;->x(I)V

    add-int/lit8 v6, v19, 0x1

    move-object v4, v15

    move/from16 v1, v18

    move/from16 v5, v23

    const/4 v15, 0x1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while merging exception to block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/d;->a(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v15, v4

    move/from16 v23, v5

    if-eqz v16, :cond_10

    if-nez v1, :cond_10

    const/4 v0, -0x6

    invoke-virtual {v7, v0}, Ln1/u;->D(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lb2/j;->x(I)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Ln1/u;->k:Z

    sub-int v1, v12, v10

    sub-int/2addr v1, v0

    :goto_a
    if-ge v1, v12, :cond_10

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/h;

    invoke-virtual {v0}, Lw1/h;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Ly1/c;->K:Ly1/c;

    invoke-virtual {v0, v2}, Lw1/h;->q(Ly1/c;)Lw1/h;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    move/from16 v1, v23

    if-ltz v1, :cond_11

    invoke-virtual {v15, v1}, Lb2/j;->x(I)V

    :cond_11
    invoke-virtual {v15}, Lb2/o;->setImmutable()V

    move-object v4, v15

    :goto_b
    invoke-virtual {v4, v1}, Lb2/j;->D(I)I

    move-result v0

    move v5, v1

    :goto_c
    if-lez v10, :cond_15

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/h;

    invoke-virtual {v1}, Lw1/h;->i()Lw1/t;

    move-result-object v2

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const/4 v6, 0x1

    goto :goto_d

    :cond_12
    const/4 v6, 0x0

    :goto_d
    new-instance v2, Lw1/i;

    if-eqz v6, :cond_13

    const/4 v3, 0x2

    goto :goto_e

    :cond_13
    const/4 v3, 0x1

    :goto_e
    invoke-direct {v2, v3}, Lw1/i;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lw1/i;->C(ILw1/h;)V

    if-eqz v6, :cond_14

    new-instance v6, Lw1/o;

    sget-object v13, Lw1/v;->s:Lw1/t;

    invoke-virtual {v1}, Lw1/h;->j()Lw1/w;

    move-result-object v1

    sget-object v15, Lw1/r;->a:Lw1/r;

    invoke-direct {v6, v13, v1, v14, v15}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v6}, Lw1/i;->C(ILw1/h;)V

    invoke-static {v5}, Lb2/j;->F(I)Lb2/j;

    move-result-object v1

    goto :goto_f

    :cond_14
    move-object v1, v4

    :goto_f
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    invoke-virtual/range {p0 .. p0}, Ln1/u;->y()I

    move-result v6

    new-instance v13, Lw1/b;

    invoke-direct {v13, v6, v2, v1, v5}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    invoke-virtual {v8}, Ln1/l;->f()Lb2/j;

    move-result-object v1

    invoke-virtual {v7, v13, v1}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    invoke-virtual {v4}, Lb2/j;->I()Lb2/j;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Lb2/j;->L(II)V

    invoke-virtual {v4}, Lb2/o;->setImmutable()V

    add-int/lit8 v10, v10, -0x1

    move v5, v6

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    if-nez v12, :cond_16

    move-object v0, v14

    goto :goto_10

    :cond_16
    add-int/lit8 v0, v12, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/h;

    :goto_10
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {v1}, Lw1/t;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    :cond_17
    if-nez v0, :cond_18

    sget-object v0, Lw1/w;->d:Lw1/w;

    goto :goto_11

    :cond_18
    invoke-virtual {v0}, Lw1/h;->j()Lw1/w;

    move-result-object v0

    :goto_11
    new-instance v1, Lw1/o;

    sget-object v2, Lw1/v;->s:Lw1/t;

    sget-object v6, Lw1/r;->a:Lw1/r;

    invoke-direct {v1, v2, v0, v14, v6}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    :cond_19
    new-instance v0, Lw1/i;

    invoke-direct {v0, v12}, Lw1/i;-><init>(I)V

    const/4 v15, 0x0

    :goto_12
    if-ge v15, v12, :cond_1a

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/h;

    invoke-virtual {v0, v15, v1}, Lw1/i;->C(ILw1/h;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    :cond_1a
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    new-instance v1, Lw1/b;

    invoke-virtual/range {p1 .. p1}, Ln1/e;->a()I

    move-result v2

    invoke-direct {v1, v2, v0, v4, v5}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    invoke-virtual {v8}, Ln1/l;->f()Lb2/j;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ln1/u;->n(Lw1/b;Lb2/j;)Z

    return-void
.end method

.method public final N(I)V
    .locals 5

    invoke-virtual {p0}, Ln1/u;->A()I

    move-result v0

    iget-object v1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/b;

    invoke-virtual {v1}, Lw1/b;->h()Lb2/j;

    move-result-object v1

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v2

    iget-object v3, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Ln1/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_2

    invoke-virtual {v1, p1}, Lb2/j;->B(I)I

    move-result v3

    if-lt v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ln1/u;->K(I)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p0, v4}, Ln1/u;->N(I)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid label "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final O()V
    .locals 3

    iget-object v0, p0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v0}, Ln1/j;->b()Ly1/a;

    move-result-object v0

    iget-object v1, p0, Ln1/u;->g:[Ln1/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ly1/a;->l()Ly1/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln1/l;->g(Ly1/b;)V

    iget-object v0, p0, Ln1/u;->g:[Ln1/l;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ln1/l;->n()V

    return-void
.end method

.method public final P(I)Ln1/u$g;
    .locals 3

    iget-object v0, p0, Ln1/u;->l:[Ln1/u$g;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Ln1/u;->l:[Ln1/u$g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ln1/u$g;->b(Ln1/u$g;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(Lw1/b;Lb2/j;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lb2/o;->throwIfMutable()V

    iget-object p1, p0, Ln1/u;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()V
    .locals 11

    iget-object v0, p0, Ln1/u;->j:[Ln1/u$c;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Ln1/u;->j:[Ln1/u$c;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ln1/u$c;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/u$d;

    invoke-virtual {p0, v2}, Ln1/u;->J(I)Lw1/b;

    move-result-object v5

    invoke-virtual {v5}, Lw1/b;->c()Lw1/h;

    move-result-object v5

    invoke-virtual {v5}, Lw1/h;->j()Lw1/w;

    move-result-object v5

    new-instance v6, Lw1/i;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lw1/i;-><init>(I)V

    new-instance v7, Lw1/o;

    invoke-virtual {v4}, Ln1/u$d;->a()Ly1/c;

    move-result-object v8

    invoke-static {v8}, Lw1/v;->B(Ly1/d;)Lw1/t;

    move-result-object v8

    iget v9, p0, Ln1/u;->c:I

    invoke-virtual {v4}, Ln1/u$d;->a()Ly1/c;

    move-result-object v10

    invoke-static {v9, v10}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v9

    sget-object v10, Lw1/r;->a:Lw1/r;

    invoke-direct {v7, v8, v5, v9, v10}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {v6, v1, v7}, Lw1/i;->C(ILw1/h;)V

    new-instance v7, Lw1/o;

    sget-object v8, Lw1/v;->s:Lw1/t;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v5, v9, v10}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5, v7}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v6}, Lb2/o;->setImmutable()V

    new-instance v5, Lw1/b;

    invoke-virtual {v4}, Ln1/u$d;->b()I

    move-result v4

    invoke-static {v2}, Lb2/j;->F(I)Lb2/j;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7, v2}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    iget-object v4, p0, Ln1/u;->g:[Ln1/l;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ln1/l;->f()Lb2/j;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n(Lw1/b;Lb2/j;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ln1/u;->K(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ln1/u;->N(I)V

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lb2/o;->throwIfMutable()V

    iget-object p1, p0, Ln1/u;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Lw1/b;Lb2/j;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ln1/u;->K(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Ln1/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lb2/o;->throwIfMutable()V

    iget-object p1, p0, Ln1/u;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()V
    .locals 10

    iget-object v0, p0, Ln1/u;->e:Ln1/v;

    invoke-virtual {v0}, Ln1/v;->N()Lw1/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ln1/u;->e:Ln1/v;

    invoke-virtual {v1}, Ln1/v;->O()Lw1/w;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Ln1/u;->D(I)I

    move-result v2

    invoke-virtual {p0}, Ln1/u;->I()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    new-instance v3, Lw1/i;

    invoke-direct {v3, v4}, Lw1/i;-><init>(I)V

    new-instance v6, Lw1/z;

    sget-object v7, Lw1/v;->F1:Lw1/t;

    invoke-virtual {p0}, Ln1/u;->E()Lw1/q;

    move-result-object v8

    invoke-static {v8}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v8

    sget-object v9, Ly1/b;->a:Ly1/b;

    invoke-direct {v6, v7, v1, v8, v9}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    invoke-virtual {v3, v5, v6}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v3}, Lb2/o;->setImmutable()V

    const/4 v6, -0x3

    invoke-virtual {p0, v6}, Ln1/u;->D(I)I

    move-result v6

    new-instance v7, Lw1/b;

    invoke-static {v6}, Lb2/j;->F(I)Lb2/j;

    move-result-object v8

    invoke-direct {v7, v2, v3, v8, v6}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    sget-object v2, Lb2/j;->k:Lb2/j;

    invoke-virtual {p0, v7, v2}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    move v2, v6

    :cond_1
    new-instance v3, Lw1/i;

    invoke-direct {v3, v4}, Lw1/i;-><init>(I)V

    invoke-virtual {v0}, Lw1/t;->f()Ly1/e;

    move-result-object v4

    invoke-interface {v4}, Ly1/e;->size()I

    move-result v6

    if-nez v6, :cond_2

    sget-object v4, Lw1/r;->a:Lw1/r;

    goto :goto_0

    :cond_2
    invoke-interface {v4, v5}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v4

    invoke-static {v5, v4}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v4

    invoke-static {v4}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v4

    :goto_0
    new-instance v6, Lw1/o;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7, v4}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {v3, v5, v6}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v3}, Lb2/o;->setImmutable()V

    new-instance v0, Lw1/b;

    sget-object v1, Lb2/j;->k:Lb2/j;

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    invoke-virtual {p0, v0, v1}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    return-void
.end method

.method public final q()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->h()Ln1/n;

    move-result-object v1

    iget-object v2, v0, Ln1/u;->a:Ln1/j;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ln1/j;->n(I)Lw1/w;

    move-result-object v2

    iget-object v4, v0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v4}, Ln1/j;->b()Ly1/a;

    move-result-object v4

    invoke-virtual {v4}, Ly1/a;->l()Ly1/b;

    move-result-object v10

    invoke-virtual {v10}, Lb2/f;->size()I

    move-result v11

    new-instance v12, Lw1/i;

    add-int/lit8 v4, v11, 0x1

    invoke-direct {v12, v4}, Lw1/i;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v13, v11, :cond_1

    invoke-virtual {v10, v13}, Ly1/b;->A(I)Ly1/c;

    move-result-object v15

    invoke-virtual {v1, v3, v14}, Ln1/n;->C(II)Ln1/n$a;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {v14, v15}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ln1/n$a;->b()Lw1/k;

    move-result-object v4

    invoke-static {v14, v15, v4}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object v4

    :goto_1
    move-object v7, v4

    new-instance v9, Lw1/n;

    invoke-static {v15}, Lw1/v;->C(Ly1/d;)Lw1/t;

    move-result-object v5

    sget-object v8, Lw1/r;->a:Lw1/r;

    invoke-static {v14}, Lx1/p;->C(I)Lx1/p;

    move-result-object v16

    move-object v4, v9

    move-object v6, v2

    move-object v3, v9

    move-object/from16 v9, v16

    invoke-direct/range {v4 .. v9}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    invoke-virtual {v12, v13, v3}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v15}, Ly1/c;->n()I

    move-result v3

    add-int/2addr v14, v3

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lw1/o;

    sget-object v3, Lw1/v;->s:Lw1/t;

    sget-object v10, Lw1/r;->a:Lw1/r;

    const/4 v13, 0x0

    invoke-direct {v1, v3, v2, v13, v10}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {v12, v11, v1}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v12}, Lb2/o;->setImmutable()V

    invoke-virtual/range {p0 .. p0}, Ln1/u;->I()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, -0x4

    invoke-virtual {v0, v4}, Ln1/u;->D(I)I

    move-result v4

    move v11, v4

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    new-instance v4, Lw1/b;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Ln1/u;->D(I)I

    move-result v5

    invoke-static {v11}, Lb2/j;->F(I)Lb2/j;

    move-result-object v6

    invoke-direct {v4, v5, v12, v6, v11}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    sget-object v12, Lb2/j;->k:Lb2/j;

    invoke-virtual {v0, v4, v12}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Ln1/u;->E()Lw1/q;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ln1/u;->G()Z

    move-result v4

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v4, :cond_3

    new-instance v3, Lw1/y;

    sget-object v5, Lw1/v;->q:Lw1/t;

    sget-object v8, Ly1/b;->a:Ly1/b;

    iget-object v4, v0, Ln1/u;->a:Ln1/j;

    invoke-virtual {v4}, Ln1/j;->c()Lx1/e0;

    move-result-object v9

    move-object v4, v3

    move-object v6, v2

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lw1/y;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;Lx1/a;)V

    new-instance v4, Lw1/i;

    invoke-direct {v4, v15}, Lw1/i;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lw1/i;->C(ILw1/h;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    new-instance v9, Lw1/i;

    invoke-direct {v9, v14}, Lw1/i;-><init>(I)V

    new-instance v8, Lw1/n;

    sget-object v5, Lw1/v;->l:Lw1/t;

    sget-object v16, Lx1/p;->k:Lx1/p;

    move-object v4, v8

    move-object v6, v2

    move-object v7, v1

    move-object v14, v8

    move-object v8, v10

    move-object v15, v9

    move-object/from16 v9, v16

    invoke-direct/range {v4 .. v9}, Lw1/n;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4, v14}, Lw1/i;->C(ILw1/h;)V

    new-instance v4, Lw1/o;

    invoke-direct {v4, v3, v2, v13, v10}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    const/4 v3, 0x1

    invoke-virtual {v15, v3, v4}, Lw1/i;->C(ILw1/h;)V

    move-object v4, v15

    :goto_3
    const/4 v5, -0x5

    invoke-virtual {v0, v5}, Ln1/u;->D(I)I

    move-result v5

    invoke-virtual {v4}, Lb2/o;->setImmutable()V

    new-instance v6, Lw1/b;

    invoke-static {v5}, Lb2/j;->F(I)Lb2/j;

    move-result-object v7

    invoke-direct {v6, v11, v4, v7, v5}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    invoke-virtual {v0, v6, v12}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    new-instance v4, Lw1/i;

    invoke-virtual/range {p0 .. p0}, Ln1/u;->G()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v14, 0x2

    goto :goto_4

    :cond_4
    const/4 v14, 0x1

    :goto_4
    invoke-direct {v4, v14}, Lw1/i;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Ln1/u;->G()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lw1/o;

    invoke-static {v1}, Lw1/v;->E(Ly1/d;)Lw1/t;

    move-result-object v6

    invoke-direct {v3, v6, v2, v1, v10}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lw1/i;->C(ILw1/h;)V

    :cond_5
    new-instance v3, Lw1/z;

    sget-object v6, Lw1/v;->E1:Lw1/t;

    invoke-static {v1}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v1

    sget-object v7, Ly1/b;->a:Ly1/b;

    invoke-direct {v3, v6, v2, v1, v7}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    invoke-virtual/range {p0 .. p0}, Ln1/u;->G()Z

    move-result v1

    invoke-virtual {v4, v1, v3}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v4}, Lb2/o;->setImmutable()V

    new-instance v1, Lw1/b;

    const/4 v2, 0x0

    invoke-static {v2}, Lb2/j;->F(I)Lb2/j;

    move-result-object v3

    invoke-direct {v1, v5, v4, v3, v2}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    invoke-virtual {v0, v1, v12}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    :cond_6
    return-void
.end method

.method public final r()V
    .locals 10

    iget-boolean v0, p0, Ln1/u;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln1/u;->a:Ln1/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln1/j;->n(I)Lw1/w;

    move-result-object v0

    sget-object v2, Ly1/c;->N:Ly1/c;

    invoke-static {v1, v2}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v3

    new-instance v4, Lw1/i;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lw1/i;-><init>(I)V

    new-instance v5, Lw1/o;

    invoke-static {v2}, Lw1/v;->B(Ly1/d;)Lw1/t;

    move-result-object v2

    sget-object v6, Lw1/r;->a:Lw1/r;

    invoke-direct {v5, v2, v0, v3, v6}, Lw1/o;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {v4, v1, v5}, Lw1/i;->C(ILw1/h;)V

    new-instance v2, Lw1/z;

    sget-object v5, Lw1/v;->F1:Lw1/t;

    invoke-virtual {p0}, Ln1/u;->E()Lw1/q;

    move-result-object v6

    invoke-static {v6}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v6

    sget-object v7, Ly1/b;->a:Ly1/b;

    invoke-direct {v2, v5, v0, v6, v7}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v4}, Lb2/o;->setImmutable()V

    const/4 v2, -0x7

    invoke-virtual {p0, v2}, Ln1/u;->D(I)I

    move-result v2

    new-instance v6, Lw1/b;

    const/4 v8, -0x6

    invoke-virtual {p0, v8}, Ln1/u;->D(I)I

    move-result v8

    invoke-static {v2}, Lb2/j;->F(I)Lb2/j;

    move-result-object v9

    invoke-direct {v6, v8, v4, v9, v2}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    sget-object v4, Lb2/j;->k:Lb2/j;

    invoke-virtual {p0, v6, v4}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    new-instance v6, Lw1/i;

    invoke-direct {v6, v5}, Lw1/i;-><init>(I)V

    new-instance v5, Lw1/z;

    sget-object v8, Lw1/v;->D1:Lw1/t;

    invoke-static {v3}, Lw1/r;->D(Lw1/q;)Lw1/r;

    move-result-object v3

    invoke-direct {v5, v8, v0, v3, v7}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    invoke-virtual {v6, v1, v5}, Lw1/i;->C(ILw1/h;)V

    invoke-virtual {v6}, Lb2/o;->setImmutable()V

    new-instance v0, Lw1/b;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v6, v4, v1}, Lw1/b;-><init>(ILw1/i;Lb2/j;I)V

    invoke-virtual {p0, v0, v4}, Ln1/u;->l(Lw1/b;Lb2/j;)V

    return-void
.end method

.method public final t()V
    .locals 3

    new-instance v0, Lb2/j;

    iget-object v1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lb2/j;-><init>(I)V

    iget-object v1, p0, Ln1/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ln1/u;->D(I)I

    move-result v1

    new-instance v2, Ln1/u$b;

    invoke-direct {v2, p0, v0}, Ln1/u$b;-><init>(Ln1/u;Lb2/j;)V

    invoke-virtual {p0, v1, v2}, Ln1/u;->w(ILw1/b$a;)V

    invoke-virtual {v0}, Lb2/j;->N()V

    iget-object v1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/b;

    invoke-virtual {v2}, Lw1/b;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lb2/j;->D(I)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 5

    iget v0, p0, Ln1/u;->d:I

    invoke-static {v0}, Lb2/c;->i(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb2/c;->k([II)V

    invoke-virtual {p0}, Ln1/u;->q()V

    invoke-virtual {p0}, Ln1/u;->O()V

    :goto_0
    invoke-static {v0, v1}, Lb2/c;->e([II)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0}, Ln1/u;->p()V

    invoke-virtual {p0}, Ln1/u;->r()V

    invoke-virtual {p0}, Ln1/u;->m()V

    iget-boolean v0, p0, Ln1/u;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln1/u;->F()V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0, v2}, Lb2/c;->c([II)V

    iget-object v3, p0, Ln1/u;->b:Ln1/f;

    invoke-virtual {v3, v2}, Ln1/f;->F(I)Ln1/e;

    move-result-object v3

    iget-object v4, p0, Ln1/u;->g:[Ln1/l;

    aget-object v4, v4, v2

    :try_start_0
    invoke-virtual {p0, v3, v4, v0}, Ln1/u;->M(Ln1/e;Ln1/l;[I)V
    :try_end_0
    .catch Ln1/w; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while working on block "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/d;->a(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final v(Lw1/i;)Lw1/i;
    .locals 7

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lw1/i;->A(I)Lw1/h;

    move-result-object v4

    invoke-virtual {v4}, Lw1/h;->i()Lw1/t;

    move-result-object v4

    sget-object v5, Lw1/v;->g:Lw1/t;

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    return-object p1

    :cond_2
    new-instance v2, Lw1/i;

    invoke-direct {v2, v3}, Lw1/i;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lw1/i;->A(I)Lw1/h;

    move-result-object v4

    invoke-virtual {v4}, Lw1/h;->i()Lw1/t;

    move-result-object v5

    sget-object v6, Lw1/v;->g:Lw1/t;

    if-eq v5, v6, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v3, v4}, Lw1/i;->C(ILw1/h;)V

    move v3, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    return-object v2
.end method

.method public final w(ILw1/b$a;)V
    .locals 2

    invoke-virtual {p0, p1}, Ln1/u;->J(I)Lw1/b;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Ln1/u;->d:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Ln1/u;->x(Lw1/b;Lw1/b$a;Ljava/util/BitSet;)V

    return-void
.end method

.method public final x(Lw1/b;Lw1/b$a;Ljava/util/BitSet;)V
    .locals 5

    invoke-interface {p2, p1}, Lw1/b$a;->a(Lw1/b;)V

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lw1/b;->h()Lb2/j;

    move-result-object v0

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lb2/j;->B(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Ln1/u;->H(Lw1/b;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Ln1/u;->K(I)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v4, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/b;

    invoke-virtual {p0, v3, p2, p3}, Ln1/u;->x(Lw1/b;Lw1/b$a;Ljava/util/BitSet;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final y()I
    .locals 3

    invoke-virtual {p0}, Ln1/u;->A()I

    move-result v0

    iget-object v1, p0, Ln1/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/b;

    invoke-virtual {v2}, Lw1/b;->a()I

    move-result v2

    if-lt v2, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public z()I
    .locals 2

    invoke-virtual {p0}, Ln1/u;->B()I

    move-result v0

    invoke-virtual {p0}, Ln1/u;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
