.class public final Lr4/c41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/w6;
.implements Lr4/wm1;
.implements Lr4/zy3;
.implements Lr4/pt3;
.implements Lr4/jw3;
.implements Lr4/qp2;


# instance fields
.field public final a:Lr4/ka;

.field public final b:Lr4/b8;

.field public final d:Lr4/d8;

.field public final k:Lr4/b31;

.field public final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/d51;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lr4/db;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/db<",
            "Lr4/f61;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lr4/a7;

.field public s:Lr4/xa;

.field public t:Z


# direct methods
.method public constructor <init>(Lr4/ka;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c41;->a:Lr4/ka;

    new-instance v0, Lr4/db;

    invoke-static {}, Lr4/lc;->P()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lr4/jr;->a:Lr4/bb;

    invoke-direct {v0, v1, p1, v2}, Lr4/db;-><init>(Landroid/os/Looper;Lr4/ka;Lr4/bb;)V

    iput-object v0, p0, Lr4/c41;->q:Lr4/db;

    new-instance p1, Lr4/b8;

    invoke-direct {p1}, Lr4/b8;-><init>()V

    iput-object p1, p0, Lr4/c41;->b:Lr4/b8;

    new-instance v0, Lr4/d8;

    invoke-direct {v0}, Lr4/d8;-><init>()V

    iput-object v0, p0, Lr4/c41;->d:Lr4/d8;

    new-instance v0, Lr4/b31;

    invoke-direct {v0, p1}, Lr4/b31;-><init>(Lr4/b8;)V

    iput-object v0, p0, Lr4/c41;->k:Lr4/b31;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/c41;->p:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final A(Lr4/gp;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->L()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/mt;

    invoke-direct {v1, v0, p1}, Lr4/mt;-><init>(Lr4/d51;Lr4/gp;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final A0(Z)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/op0;

    invoke-direct {v1, v0, p1}, Lr4/op0;-><init>(Lr4/d51;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final B(IZ)V
    .locals 0

    return-void
.end method

.method public final B0()V
    .locals 3

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/tv0;

    invoke-direct {v1, v0}, Lr4/tv0;-><init>(Lr4/d51;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final C(Lr4/gp;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->L()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/f40;

    invoke-direct {v1, v0, p1}, Lr4/f40;-><init>(Lr4/d51;Lr4/gp;)V

    const/16 p1, 0x401

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final C0(Lr4/q6;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/rs0;

    invoke-direct {v1, v0, p1}, Lr4/rs0;-><init>(Lr4/d51;Lr4/q6;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final D(IJJ)V
    .locals 9

    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    invoke-virtual {v0}, Lr4/b31;->e()Lr4/ft3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/c41;->K(Lr4/ft3;)Lr4/d51;

    move-result-object v0

    new-instance v8, Lr4/uw0;

    move-object v1, v8

    move-object v2, v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lr4/uw0;-><init>(Lr4/d51;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v0, p1, v8}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final D0(Z)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/gi0;

    invoke-direct {v1, v0, p1}, Lr4/gi0;-><init>(Lr4/d51;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final E(Lr4/d51;ILr4/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/d51;",
            "I",
            "Lr4/ab<",
            "Lr4/f61;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/c41;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lr4/c41;->q:Lr4/db;

    invoke-virtual {p1, p2, p3}, Lr4/db;->d(ILr4/ab;)V

    invoke-virtual {p1}, Lr4/db;->e()V

    return-void
.end method

.method public final E0(Lr4/z6;Lr4/z6;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Lr4/c41;->t:Z

    const/4 p3, 0x1

    :cond_0
    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    iget-object v1, p0, Lr4/c41;->r:Lr4/a7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lr4/b31;->g(Lr4/a7;)V

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/qr0;

    invoke-direct {v1, v0, p3, p1, p2}, Lr4/qr0;-><init>(Lr4/d51;ILr4/z6;Lr4/z6;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final F()Lr4/d51;
    .locals 1

    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    invoke-virtual {v0}, Lr4/b31;->b()Lr4/ft3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/c41;->K(Lr4/ft3;)Lr4/d51;

    move-result-object v0

    return-object v0
.end method

.method public final F0(Lr4/u5;I)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/eg0;

    invoke-direct {v1, v0, p1, p2}, Lr4/eg0;-><init>(Lr4/d51;Lr4/u5;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final G(Lr4/e8;ILr4/ft3;)Lr4/d51;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {p1 .. p1}, Lr4/e8;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->G()Lr4/e8;

    move-result-object v1

    invoke-virtual {v4, v1}, Lr4/e8;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->E()I

    move-result v1

    if-ne v5, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lr4/f04;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_5

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->P()I

    move-result v1

    iget v2, v6, Lr4/f04;->b:I

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->y()I

    move-result v1

    iget v2, v6, Lr4/f04;->c:I

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->O()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->L()J

    move-result-wide v1

    move-wide v9, v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lr4/e8;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lr4/c41;->d:Lr4/d8;

    invoke-virtual {v4, v5, v1, v9, v10}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v1

    iget-wide v1, v1, Lr4/d8;->k:J

    invoke-static {v9, v10}, Lr4/e3;->a(J)J

    move-result-wide v9

    :cond_5
    :goto_2
    iget-object v1, v0, Lr4/c41;->k:Lr4/b31;

    invoke-virtual {v1}, Lr4/b31;->b()Lr4/ft3;

    move-result-object v11

    new-instance v16, Lr4/d51;

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->G()Lr4/e8;

    move-result-object v12

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->E()I

    move-result v13

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->O()J

    move-result-wide v14

    iget-object v1, v0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->v()J

    move-result-wide v17

    move-object/from16 v1, v16

    move-wide v2, v7

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide v7, v9

    move-object v9, v12

    move v10, v13

    move-wide v12, v14

    move-wide/from16 v14, v17

    invoke-direct/range {v1 .. v15}, Lr4/d51;-><init>(JLr4/e8;ILr4/ft3;JLr4/e8;ILr4/ft3;JJ)V

    return-object v16
.end method

.method public final G0(ZI)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/kn0;

    invoke-direct {v1, v0, p1, p2}, Lr4/kn0;-><init>(Lr4/d51;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final H(Lr4/f61;)V
    .locals 1

    iget-object v0, p0, Lr4/c41;->q:Lr4/db;

    invoke-virtual {v0, p1}, Lr4/db;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final H0(Lr4/n6;)V
    .locals 2

    instance-of v0, p1, Lr4/o3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lr4/o3;

    iget-object v0, v0, Lr4/o3;->t:Lr4/f04;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/ft3;

    invoke-direct {v1, v0}, Lr4/ft3;-><init>(Lr4/f04;)V

    invoke-virtual {p0, v1}, Lr4/c41;->K(Lr4/ft3;)Lr4/d51;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v1

    :cond_1
    new-instance v0, Lr4/pq0;

    invoke-direct {v0, v1, p1}, Lr4/pq0;-><init>(Lr4/d51;Lr4/n6;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v1, p1, v0}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final synthetic I()V
    .locals 1

    iget-object v0, p0, Lr4/c41;->q:Lr4/db;

    invoke-virtual {v0}, Lr4/db;->f()V

    return-void
.end method

.method public final I0(Lr4/t6;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/gj0;

    invoke-direct {v1, v0, p1}, Lr4/gj0;-><init>(Lr4/d51;Lr4/t6;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final synthetic J(Lr4/a7;Lr4/f61;Lr4/va;)V
    .locals 3

    iget-object p1, p0, Lr4/c41;->p:Landroid/util/SparseArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-virtual {p3}, Lr4/va;->a()I

    move-result v0

    invoke-direct {p2, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Lr4/va;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Lr4/va;->b(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/d51;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final J0(I)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/no0;

    invoke-direct {v1, v0, p1}, Lr4/no0;-><init>(Lr4/d51;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final K(Lr4/ft3;)Lr4/d51;
    .locals 3

    iget-object v0, p0, Lr4/c41;->r:Lr4/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/c41;->k:Lr4/b31;

    invoke-virtual {v1, p1}, Lr4/b31;->f(Lr4/ft3;)Lr4/e8;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v2, p0, Lr4/c41;->b:Lr4/b8;

    invoke-virtual {v1, v0, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget v0, v0, Lr4/b8;->c:I

    invoke-virtual {p0, v1, v0, p1}, Lr4/c41;->G(Lr4/e8;ILr4/ft3;)Lr4/d51;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {p1}, Lr4/a7;->E()I

    move-result p1

    iget-object v1, p0, Lr4/c41;->r:Lr4/a7;

    invoke-interface {v1}, Lr4/a7;->G()Lr4/e8;

    move-result-object v1

    invoke-virtual {v1}, Lr4/e8;->a()I

    move-result v2

    if-lt p1, v2, :cond_3

    sget-object v1, Lr4/e8;->a:Lr4/e8;

    :cond_3
    invoke-virtual {p0, v1, p1, v0}, Lr4/c41;->G(Lr4/e8;ILr4/ft3;)Lr4/d51;

    move-result-object p1

    return-object p1
.end method

.method public final K0(ZI)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/il0;

    invoke-direct {v1, v0, p1, p2}, Lr4/il0;-><init>(Lr4/d51;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final L()Lr4/d51;
    .locals 1

    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    invoke-virtual {v0}, Lr4/b31;->c()Lr4/ft3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/c41;->K(Lr4/ft3;)Lr4/d51;

    move-result-object v0

    return-object v0
.end method

.method public final L0(Lr4/y5;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/su0;

    invoke-direct {v1, v0, p1}, Lr4/su0;-><init>(Lr4/d51;Lr4/y5;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final M()Lr4/d51;
    .locals 1

    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    invoke-virtual {v0}, Lr4/b31;->d()Lr4/ft3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/c41;->K(Lr4/ft3;)Lr4/d51;

    move-result-object v0

    return-object v0
.end method

.method public final M0(Lr4/e8;I)V
    .locals 1

    iget-object p1, p0, Lr4/c41;->k:Lr4/b31;

    iget-object v0, p0, Lr4/c41;->r:Lr4/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lr4/b31;->h(Lr4/a7;)V

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object p1

    new-instance v0, Lr4/hf0;

    invoke-direct {v0, p1, p2}, Lr4/hf0;-><init>(Lr4/d51;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final N(ILr4/ft3;)Lr4/d51;
    .locals 1

    iget-object v0, p0, Lr4/c41;->r:Lr4/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    invoke-virtual {v0, p2}, Lr4/b31;->f(Lr4/ft3;)Lr4/e8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lr4/c41;->K(Lr4/ft3;)Lr4/d51;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lr4/e8;->a:Lr4/e8;

    invoke-virtual {p0, v0, p1, p2}, Lr4/c41;->G(Lr4/e8;ILr4/ft3;)Lr4/d51;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-interface {v0}, Lr4/a7;->G()Lr4/e8;

    move-result-object p2

    invoke-virtual {p2}, Lr4/e8;->a()I

    move-result v0

    if-lt p1, v0, :cond_2

    sget-object p2, Lr4/e8;->a:Lr4/e8;

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lr4/c41;->G(Lr4/e8;ILr4/ft3;)Lr4/d51;

    move-result-object p1

    return-object p1
.end method

.method public final N0(I)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/jm0;

    invoke-direct {v1, v0, p1}, Lr4/jm0;-><init>(Lr4/d51;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final O(Lr4/f61;)V
    .locals 1

    iget-object v0, p0, Lr4/c41;->q:Lr4/db;

    invoke-virtual {v0, p1}, Lr4/db;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final O0(Lr4/j44;Lr4/k54;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/fh0;

    invoke-direct {v1, v0, p1, p2}, Lr4/fh0;-><init>(Lr4/d51;Lr4/j44;Lr4/k54;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final P(Lr4/a7;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Lr4/c41;->r:Lr4/a7;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    invoke-static {v0}, Lr4/b31;->a(Lr4/b31;)Lr4/o33;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lr4/ja;->d(Z)V

    iput-object p1, p0, Lr4/c41;->r:Lr4/a7;

    iget-object v0, p0, Lr4/c41;->a:Lr4/ka;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lr4/ka;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lr4/xa;

    move-result-object v0

    iput-object v0, p0, Lr4/c41;->s:Lr4/xa;

    iget-object v0, p0, Lr4/c41;->q:Lr4/db;

    new-instance v1, Lr4/g00;

    invoke-direct {v1, p0, p1}, Lr4/g00;-><init>(Lr4/c41;Lr4/a7;)V

    invoke-virtual {v0, p2, v1}, Lr4/db;->a(Landroid/os/Looper;Lr4/bb;)Lr4/db;

    move-result-object p1

    iput-object p1, p0, Lr4/c41;->q:Lr4/db;

    return-void
.end method

.method public final Q()V
    .locals 3

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    iget-object v1, p0, Lr4/c41;->p:Landroid/util/SparseArray;

    const/16 v2, 0x40c

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lr4/ya0;

    invoke-direct {v1, v0}, Lr4/ya0;-><init>(Lr4/d51;)V

    invoke-virtual {p0, v0, v2, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    iget-object v0, p0, Lr4/c41;->s:Lr4/xa;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lr4/hk0;

    invoke-direct {v1, p0}, Lr4/hk0;-><init>(Lr4/c41;)V

    invoke-interface {v0, v1}, Lr4/xa;->g(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final R(Ljava/util/List;Lr4/ft3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/ft3;",
            ">;",
            "Lr4/ft3;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lr4/c41;->k:Lr4/b31;

    iget-object v1, p0, Lr4/c41;->r:Lr4/a7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lr4/b31;->i(Ljava/util/List;Lr4/ft3;Lr4/a7;)V

    return-void
.end method

.method public final S()V
    .locals 3

    iget-boolean v0, p0, Lr4/c41;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/c41;->F()Lr4/d51;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/c41;->t:Z

    new-instance v1, Lr4/tt0;

    invoke-direct {v1, v0}, Lr4/tt0;-><init>(Lr4/d51;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    :cond_0
    return-void
.end method

.method public final a(ILr4/ft3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/c41;->N(ILr4/ft3;)Lr4/d51;

    move-result-object p1

    new-instance p2, Lr4/he0;

    invoke-direct {p2, p1, p3}, Lr4/he0;-><init>(Lr4/d51;Lr4/ct3;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final b(JI)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->L()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/u60;

    invoke-direct {v1, v0, p1, p2, p3}, Lr4/u60;-><init>(Lr4/d51;JI)V

    const/16 p1, 0x402

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final c(Lr4/e5;Lr4/iq;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/h10;

    invoke-direct {v1, v0, p1, p2}, Lr4/h10;-><init>(Lr4/d51;Lr4/e5;Lr4/iq;)V

    const/16 p1, 0x3fe

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/ks;

    invoke-direct {v1, v0, p1}, Lr4/ks;-><init>(Lr4/d51;Ljava/lang/String;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final e(Lr4/gp;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/vx0;

    invoke-direct {v1, v0, p1}, Lr4/vx0;-><init>(Lr4/d51;Lr4/gp;)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final f(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/v70;

    invoke-direct {v1, v0, p1}, Lr4/v70;-><init>(Lr4/d51;Ljava/lang/Exception;)V

    const/16 p1, 0x40e

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final g(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/c41;->N(ILr4/ft3;)Lr4/d51;

    move-result-object p1

    new-instance p2, Lr4/x90;

    invoke-direct {p2, p1, p3, p4}, Lr4/x90;-><init>(Lr4/d51;Lr4/ws3;Lr4/ct3;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final h(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/c41;->N(ILr4/ft3;)Lr4/d51;

    move-result-object p1

    new-instance p2, Lr4/yb0;

    invoke-direct {p2, p1, p3, p4}, Lr4/yb0;-><init>(Lr4/d51;Lr4/ws3;Lr4/ct3;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final i(IJJ)V
    .locals 9

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v7

    new-instance v8, Lr4/a21;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lr4/a21;-><init>(Lr4/d51;IJJ)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v7, p1, v8}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final j(Lr4/e5;Lr4/iq;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/yz0;

    invoke-direct {v1, v0, p1, p2}, Lr4/yz0;-><init>(Lr4/d51;Lr4/e5;Lr4/iq;)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final k(ILr4/ft3;Lr4/ws3;Lr4/ct3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/c41;->N(ILr4/ft3;)Lr4/d51;

    move-result-object p1

    new-instance p2, Lr4/qc0;

    invoke-direct {p2, p1, p3, p4}, Lr4/qc0;-><init>(Lr4/d51;Lr4/ws3;Lr4/ct3;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;J)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/d60;

    invoke-direct {v1, v0, p1, p2, p3}, Lr4/d60;-><init>(Lr4/d51;Ljava/lang/Object;J)V

    const/16 p1, 0x403

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final m(Lr4/gp;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/iy;

    invoke-direct {v1, v0, p1}, Lr4/iy;-><init>(Lr4/d51;Lr4/gp;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final n(Ljava/lang/String;JJ)V
    .locals 9

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v7

    new-instance v8, Lr4/fz;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lr4/fz;-><init>(Lr4/d51;Ljava/lang/String;JJ)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v7, p1, v8}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final o(Ljava/lang/String;JJ)V
    .locals 9

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v7

    new-instance v8, Lr4/wy0;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lr4/wy0;-><init>(Lr4/d51;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v7, p1, v8}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final p(Z)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/nu;

    invoke-direct {v1, v0, p1}, Lr4/nu;-><init>(Lr4/d51;Z)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final q(Lr4/pa4;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/c50;

    invoke-direct {v1, v0, p1}, Lr4/c50;-><init>(Lr4/d51;Lr4/pa4;)V

    const/16 p1, 0x404

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final r(II)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/w80;

    invoke-direct {v1, v0, p1, p2}, Lr4/w80;-><init>(Lr4/d51;II)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final t(Lr4/m3;)V
    .locals 0

    return-void
.end method

.method public final u(F)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/ix;

    invoke-direct {v1, v0, p1}, Lr4/ix;-><init>(Lr4/d51;F)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final v(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/iw;

    invoke-direct {v1, v0, p1}, Lr4/iw;-><init>(Lr4/d51;Ljava/lang/Exception;)V

    const/16 p1, 0x40d

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final w(J)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/z01;

    invoke-direct {v1, v0, p1, p2}, Lr4/z01;-><init>(Lr4/d51;J)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final x(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/hv;

    invoke-direct {v1, v0, p1}, Lr4/hv;-><init>(Lr4/d51;Ljava/lang/Exception;)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->M()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/e30;

    invoke-direct {v1, v0, p1}, Lr4/e30;-><init>(Lr4/d51;Ljava/lang/String;)V

    const/16 p1, 0x400

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final y(ILr4/ft3;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lr4/c41;->N(ILr4/ft3;)Lr4/d51;

    move-result-object p1

    new-instance p2, Lr4/qd0;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lr4/qd0;-><init>(Lr4/d51;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method

.method public final z(IJ)V
    .locals 2

    invoke-virtual {p0}, Lr4/c41;->L()Lr4/d51;

    move-result-object v0

    new-instance v1, Lr4/i20;

    invoke-direct {v1, v0, p1, p2, p3}, Lr4/i20;-><init>(Lr4/d51;IJ)V

    const/16 p1, 0x3ff

    invoke-virtual {p0, v0, p1, v1}, Lr4/c41;->E(Lr4/d51;ILr4/ab;)V

    return-void
.end method
