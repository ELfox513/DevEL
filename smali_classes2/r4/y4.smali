.class public final Lr4/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lr4/dt3;
.implements Lr4/zv3;
.implements Lr4/i6;
.implements Lr4/j3;
.implements Lr4/b7;


# instance fields
.field public final A:Lr4/ka;

.field public final B:Lr4/w4;

.field public final C:Lr4/c6;

.field public final D:Lr4/j6;

.field public E:Lr4/k7;

.field public F:Lr4/o6;

.field public G:Lr4/v4;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:Lr4/x4;

.field public T:J

.field public U:I

.field public V:Z

.field public W:Lr4/o3;

.field public final X:Lr4/g3;

.field public final a:[Lr4/g7;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr4/g7;",
            ">;"
        }
    .end annotation
.end field

.field public final d:[Lr4/h7;

.field public final k:Lr4/aw3;

.field public final p:Lr4/cw3;

.field public final q:Lr4/h5;

.field public final r:Lr4/kw3;

.field public final s:Lr4/xa;

.field public final t:Landroid/os/HandlerThread;

.field public final u:Landroid/os/Looper;

.field public final v:Lr4/d8;

.field public final w:Lr4/b8;

.field public final x:J

.field public final y:Lr4/k3;

.field public final z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/u4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lr4/g7;Lr4/aw3;Lr4/cw3;Lr4/h5;Lr4/kw3;IZLr4/c41;Lr4/k7;Lr4/g3;JZLandroid/os/Looper;Lr4/ka;Lr4/w4;[B)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p16

    iput-object v6, v0, Lr4/y4;->B:Lr4/w4;

    iput-object v1, v0, Lr4/y4;->a:[Lr4/g7;

    iput-object v2, v0, Lr4/y4;->k:Lr4/aw3;

    move-object v6, p3

    iput-object v6, v0, Lr4/y4;->p:Lr4/cw3;

    move-object v7, p4

    iput-object v7, v0, Lr4/y4;->q:Lr4/h5;

    iput-object v3, v0, Lr4/y4;->r:Lr4/kw3;

    const/4 v8, 0x0

    iput v8, v0, Lr4/y4;->M:I

    iput-boolean v8, v0, Lr4/y4;->N:Z

    move-object/from16 v9, p9

    iput-object v9, v0, Lr4/y4;->E:Lr4/k7;

    move-object/from16 v9, p10

    iput-object v9, v0, Lr4/y4;->X:Lr4/g3;

    iput-boolean v8, v0, Lr4/y4;->I:Z

    iput-object v5, v0, Lr4/y4;->A:Lr4/ka;

    invoke-interface {p4}, Lr4/h5;->e()J

    move-result-wide v9

    iput-wide v9, v0, Lr4/y4;->x:J

    invoke-interface {p4}, Lr4/h5;->c()Z

    invoke-static {p3}, Lr4/o6;->a(Lr4/cw3;)Lr4/o6;

    move-result-object v6

    iput-object v6, v0, Lr4/y4;->F:Lr4/o6;

    new-instance v7, Lr4/v4;

    invoke-direct {v7, v6}, Lr4/v4;-><init>(Lr4/o6;)V

    iput-object v7, v0, Lr4/y4;->G:Lr4/v4;

    const/4 v6, 0x2

    new-array v7, v6, [Lr4/h7;

    iput-object v7, v0, Lr4/y4;->d:[Lr4/h7;

    :goto_0
    if-ge v8, v6, :cond_0

    aget-object v7, v1, v8

    invoke-interface {v7, v8}, Lr4/g7;->T(I)V

    iget-object v7, v0, Lr4/y4;->d:[Lr4/h7;

    aget-object v9, v1, v8

    invoke-interface {v9}, Lr4/g7;->Y()Lr4/h7;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/k3;

    invoke-direct {v1, p0, v5}, Lr4/k3;-><init>(Lr4/j3;Lr4/ka;)V

    iput-object v1, v0, Lr4/y4;->y:Lr4/k3;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lr4/y4;->z:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lr4/y4;->b:Ljava/util/Set;

    new-instance v1, Lr4/d8;

    invoke-direct {v1}, Lr4/d8;-><init>()V

    iput-object v1, v0, Lr4/y4;->v:Lr4/d8;

    new-instance v1, Lr4/b8;

    invoke-direct {v1}, Lr4/b8;-><init>()V

    iput-object v1, v0, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {p2, p0, v3}, Lr4/aw3;->c(Lr4/zv3;Lr4/kw3;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/y4;->V:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lr4/c6;

    invoke-direct {v2, v4, v1}, Lr4/c6;-><init>(Lr4/c41;Landroid/os/Handler;)V

    iput-object v2, v0, Lr4/y4;->C:Lr4/c6;

    new-instance v2, Lr4/j6;

    invoke-direct {v2, p0, v4, v1}, Lr4/j6;-><init>(Lr4/i6;Lr4/c41;Landroid/os/Handler;)V

    iput-object v2, v0, Lr4/y4;->D:Lr4/j6;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lr4/y4;->t:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lr4/y4;->u:Landroid/os/Looper;

    invoke-interface {v5, v1, p0}, Lr4/ka;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lr4/xa;

    move-result-object v1

    iput-object v1, v0, Lr4/y4;->s:Lr4/xa;

    return-void
.end method

.method public static I(Lr4/o6;Lr4/b8;)Z
    .locals 2

    iget-object v0, p0, Lr4/o6;->b:Lr4/ft3;

    iget-object p0, p0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {p0}, Lr4/e8;->k()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object p0

    iget-boolean p0, p0, Lr4/b8;->f:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static J(Lr4/e8;Lr4/x4;ZIZLr4/d8;Lr4/b8;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/e8;",
            "Lr4/x4;",
            "ZIZ",
            "Lr4/d8;",
            "Lr4/b8;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Lr4/x4;->a:Lr4/e8;

    invoke-virtual {p0}, Lr4/e8;->k()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    :try_start_0
    iget v4, v0, Lr4/x4;->b:I

    iget-wide v5, v0, Lr4/x4;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v10}, Lr4/e8;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v2

    iget-boolean v2, v2, Lr4/b8;->f:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lr4/b8;->c:I

    const-wide/16 v3, 0x0

    move-object/from16 v11, p5

    invoke-virtual {v10, v2, v11, v3, v4}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v2

    iget v2, v2, Lr4/d8;->m:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v1

    iget v3, v1, Lr4/b8;->c:I

    iget-wide v4, v0, Lr4/x4;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lr4/y4;->X(Lr4/d8;Lr4/b8;IZLjava/lang/Object;Lr4/e8;Lr4/e8;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v8}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget v3, v0, Lr4/b8;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method public static K(Lr4/g7;)Z
    .locals 0

    invoke-interface {p0}, Lr4/g7;->F0()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final L(Lr4/d7;)V
    .locals 4

    invoke-virtual {p0}, Lr4/d7;->h()Z

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lr4/d7;->a()Lr4/c7;

    move-result-object v1

    invoke-virtual {p0}, Lr4/d7;->c()I

    move-result v2

    invoke-virtual {p0}, Lr4/d7;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lr4/c7;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lr4/d7;->i(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lr4/d7;->i(Z)V

    throw v1
.end method

.method public static final M(Lr4/g7;)V
    .locals 2

    invoke-interface {p0}, Lr4/g7;->F0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lr4/g7;->C()V

    :cond_0
    return-void
.end method

.method public static final N(Lr4/g7;J)V
    .locals 0

    invoke-interface {p0}, Lr4/g7;->X()V

    instance-of p1, p0, Lr4/ia;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p0, Lr4/ia;

    const/4 p0, 0x0

    throw p0
.end method

.method public static O(Lr4/hv3;)[Lr4/e5;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr4/hv3;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v1, [Lr4/e5;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lr4/hv3;->c(I)Lr4/e5;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static synthetic P(Lr4/y4;)Lr4/xa;
    .locals 0

    iget-object p0, p0, Lr4/y4;->s:Lr4/xa;

    return-object p0
.end method

.method public static synthetic Q(Lr4/y4;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/y4;->P:Z

    return p1
.end method

.method public static X(Lr4/d8;Lr4/b8;IZLjava/lang/Object;Lr4/e8;Lr4/e8;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p5, p4}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5}, Lr4/e8;->g()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lr4/e8;->l(ILr4/b8;Lr4/d8;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 p4, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p5, v4}, Lr4/e8;->j(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p6, p4}, Lr4/e8;->j(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a0(Lr4/d7;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lr4/y4;->L(Lr4/d7;)V
    :try_end_0
    .catch Lr4/o3; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    invoke-static {v0, v1, p0}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final A(Lr4/ft3;JJJZI)Lr4/o6;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    iget-boolean v1, v0, Lr4/y4;->V:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lr4/y4;->F:Lr4/o6;

    iget-wide v7, v1, Lr4/o6;->s:J

    cmp-long v1, p2, v7

    if-nez v1, :cond_1

    iget-object v1, v0, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v2, v1}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lr4/y4;->V:Z

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->u()V

    iget-object v1, v0, Lr4/y4;->F:Lr4/o6;

    iget-object v7, v1, Lr4/o6;->h:Lr4/j44;

    iget-object v8, v1, Lr4/o6;->i:Lr4/cw3;

    iget-object v1, v1, Lr4/o6;->j:Ljava/util/List;

    iget-object v9, v0, Lr4/y4;->D:Lr4/j6;

    invoke-virtual {v9}, Lr4/j6;->c()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v1, v0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->k()Lr4/z5;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v7, Lr4/j44;->d:Lr4/j44;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lr4/z5;->p()Lr4/j44;

    move-result-object v7

    :goto_2
    if-nez v1, :cond_3

    iget-object v8, v0, Lr4/y4;->p:Lr4/cw3;

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v8

    :goto_3
    iget-object v9, v8, Lr4/cw3;->d:[Lr4/hv3;

    new-instance v10, Lr4/l33;

    invoke-direct {v10}, Lr4/l33;-><init>()V

    array-length v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v14, v9, v12

    if-eqz v14, :cond_5

    invoke-virtual {v14, v3}, Lr4/hv3;->c(I)Lr4/e5;

    move-result-object v14

    iget-object v14, v14, Lr4/e5;->j:Lr4/j8;

    if-nez v14, :cond_4

    new-instance v14, Lr4/j8;

    new-array v15, v3, [Lr4/i8;

    invoke-direct {v14, v15}, Lr4/j8;-><init>([Lr4/i8;)V

    invoke-virtual {v10, v14}, Lr4/l33;->f(Ljava/lang/Object;)Lr4/l33;

    goto :goto_5

    :cond_4
    invoke-virtual {v10, v14}, Lr4/l33;->f(Ljava/lang/Object;)Lr4/l33;

    const/4 v13, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v10}, Lr4/l33;->g()Lr4/o33;

    move-result-object v3

    goto :goto_6

    :cond_7
    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v3

    :goto_6
    if-eqz v1, :cond_8

    iget-object v4, v1, Lr4/z5;->f:Lr4/a6;

    iget-wide v9, v4, Lr4/a6;->c:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_8

    invoke-virtual {v4, v5, v6}, Lr4/a6;->b(J)Lr4/a6;

    move-result-object v4

    iput-object v4, v1, Lr4/z5;->f:Lr4/a6;

    :cond_8
    move-object v13, v3

    goto :goto_7

    :cond_9
    iget-object v3, v0, Lr4/y4;->F:Lr4/o6;

    iget-object v3, v3, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v2, v3}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v1, Lr4/j44;->d:Lr4/j44;

    iget-object v3, v0, Lr4/y4;->p:Lr4/cw3;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_8

    :cond_a
    move-object v13, v1

    :goto_7
    move-object v11, v7

    move-object v12, v8

    :goto_8
    if-eqz p8, :cond_b

    iget-object v1, v0, Lr4/y4;->G:Lr4/v4;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lr4/v4;->d(I)V

    :cond_b
    iget-object v1, v0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->E()J

    move-result-wide v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v13}, Lr4/o6;->c(Lr4/ft3;JJJJLr4/j44;Lr4/cw3;Ljava/util/List;)Lr4/o6;

    move-result-object v1

    return-object v1
.end method

.method public final B()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lr4/y4;->C([Z)V

    return-void
.end method

.method public final C([Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->l()Lr4/z5;

    move-result-object v1

    invoke-virtual {v1}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Lr4/cw3;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lr4/y4;->b:Ljava/util/Set;

    iget-object v6, v0, Lr4/y4;->a:[Lr4/g7;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lr4/y4;->a:[Lr4/g7;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lr4/g7;->R()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v5, :cond_7

    invoke-virtual {v2, v4}, Lr4/cw3;->a(I)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-boolean v7, p1, v4

    iget-object v8, v0, Lr4/y4;->a:[Lr4/g7;

    aget-object v8, v8, v4

    invoke-static {v8}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v9, v0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v9}, Lr4/c6;->l()Lr4/z5;

    move-result-object v9

    iget-object v10, v0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v10}, Lr4/c6;->k()Lr4/z5;

    move-result-object v10

    if-ne v9, v10, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v9}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v10

    iget-object v11, v10, Lr4/cw3;->b:[Lr4/i7;

    aget-object v11, v11, v4

    iget-object v10, v10, Lr4/cw3;->d:[Lr4/hv3;

    aget-object v10, v10, v4

    invoke-static {v10}, Lr4/y4;->O(Lr4/hv3;)[Lr4/e5;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->H()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lr4/y4;->F:Lr4/o6;

    iget v10, v10, Lr4/o6;->e:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    const/16 v21, 0x1

    goto :goto_3

    :cond_4
    const/16 v21, 0x0

    :goto_3
    if-nez v7, :cond_5

    if-eqz v21, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    iget v7, v0, Lr4/y4;->R:I

    add-int/2addr v7, v6

    iput v7, v0, Lr4/y4;->R:I

    iget-object v6, v0, Lr4/y4;->b:Ljava/util/Set;

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, v9, Lr4/z5;->c:[Lr4/vu3;

    aget-object v6, v6, v4

    iget-wide v13, v0, Lr4/y4;->T:J

    invoke-virtual {v9}, Lr4/z5;->c()J

    move-result-wide v17

    invoke-virtual {v9}, Lr4/z5;->a()J

    move-result-wide v19

    move-object v9, v8

    move-object v10, v11

    move-object v11, v12

    move-object v12, v6

    invoke-interface/range {v9 .. v20}, Lr4/g7;->V(Lr4/i7;[Lr4/e5;Lr4/vu3;JZZJJ)V

    new-instance v6, Lr4/q4;

    invoke-direct {v6, v0}, Lr4/q4;-><init>(Lr4/y4;)V

    const/16 v7, 0xb

    invoke-interface {v8, v7, v6}, Lr4/c7;->a(ILjava/lang/Object;)V

    iget-object v6, v0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v6, v8}, Lr4/k3;->e(Lr4/g7;)V

    if-eqz v21, :cond_6

    invoke-interface {v8}, Lr4/g7;->E()V

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    iput-boolean v6, v1, Lr4/z5;->g:Z

    return-void
.end method

.method public final D(Z)V
    .locals 5

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->j()Lr4/z5;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->b:Lr4/ft3;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lr4/z5;->f:Lr4/a6;

    iget-object v1, v1, Lr4/a6;->a:Lr4/ft3;

    :goto_0
    iget-object v2, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v2, v2, Lr4/o6;->k:Lr4/ft3;

    invoke-virtual {v2, v1}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v3, v1}, Lr4/o6;->g(Lr4/ft3;)Lr4/o6;

    move-result-object v1

    iput-object v1, p0, Lr4/y4;->F:Lr4/o6;

    :cond_1
    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lr4/o6;->s:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lr4/z5;->e()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lr4/o6;->q:J

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {p0}, Lr4/y4;->E()J

    move-result-wide v3

    iput-wide v3, v1, Lr4/o6;->r:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lr4/z5;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lr4/z5;->p()Lr4/j44;

    move-result-object p1

    invoke-virtual {v0}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lr4/y4;->G(Lr4/j44;Lr4/cw3;)V

    :cond_4
    return-void
.end method

.method public final E()J
    .locals 2

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-wide v0, v0, Lr4/o6;->q:J

    invoke-virtual {p0, v0, v1}, Lr4/y4;->F(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final F(J)J
    .locals 7

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->j()Lr4/z5;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lr4/y4;->T:J

    invoke-virtual {v0}, Lr4/z5;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final G(Lr4/j44;Lr4/cw3;)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->q:Lr4/h5;

    iget-object v1, p0, Lr4/y4;->a:[Lr4/g7;

    iget-object p2, p2, Lr4/cw3;->d:[Lr4/hv3;

    invoke-interface {v0, v1, p1, p2}, Lr4/h5;->h([Lr4/g7;Lr4/j44;[Lr4/hv3;)V

    return-void
.end method

.method public final H()Z
    .locals 2

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-boolean v1, v0, Lr4/o6;->l:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lr4/o6;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/xa;->x(I)Lr4/wa;

    move-result-object v0

    invoke-interface {v0}, Lr4/wa;->zza()V

    return-void
.end method

.method public final S(ZI)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lr4/xa;->d(III)Lr4/wa;

    move-result-object p1

    invoke-interface {p1}, Lr4/wa;->zza()V

    return-void
.end method

.method public final T(Lr4/e8;IJ)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    new-instance v1, Lr4/x4;

    invoke-direct {v1, p1, p2, p3, p4}, Lr4/x4;-><init>(Lr4/e8;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object p1

    invoke-interface {p1}, Lr4/wa;->zza()V

    return-void
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lr4/xa;->x(I)Lr4/wa;

    move-result-object v0

    invoke-interface {v0}, Lr4/wa;->zza()V

    return-void
.end method

.method public final declared-synchronized V()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/y4;->H:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/y4;->t:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lr4/xa;->C(I)Z

    new-instance v0, Lr4/o4;

    invoke-direct {v0, p0}, Lr4/o4;-><init>(Lr4/y4;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lr4/y4;->c0(Lr4/m13;J)V

    iget-boolean v0, p0, Lr4/y4;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final W()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lr4/y4;->u:Landroid/os/Looper;

    return-object v0
.end method

.method public final synthetic Y()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lr4/y4;->H:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final Z(Ljava/util/List;IJLr4/yu3;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/h6;",
            ">;IJ",
            "Lr4/yu3;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    new-instance v9, Lr4/r4;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v8}, Lr4/r4;-><init>(Ljava/util/List;Lr4/yu3;IJLr4/t4;[B)V

    const/16 p1, 0x11

    invoke-interface {v0, p1, v9}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object p1

    invoke-interface {p1}, Lr4/wa;->zza()V

    return-void
.end method

.method public final declared-synchronized a(Lr4/d7;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/y4;->H:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/y4;->t:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object p1

    invoke-interface {p1}, Lr4/wa;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/d7;->i(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lr4/q6;)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object p1

    invoke-interface {p1}, Lr4/wa;->zza()V

    return-void
.end method

.method public final b0(Ljava/io/IOException;I)V
    .locals 1

    invoke-static {p1, p2}, Lr4/o3;->a(Ljava/io/IOException;I)Lr4/o3;

    move-result-object p1

    iget-object p2, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p2}, Lr4/c6;->k()Lr4/z5;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lr4/z5;->f:Lr4/a6;

    iget-object p2, p2, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {p1, p2}, Lr4/o3;->d(Lr4/f04;)Lr4/o3;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Lr4/y4;->m(ZZ)V

    iget-object p2, p0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {p2, p1}, Lr4/o6;->f(Lr4/o3;)Lr4/o6;

    move-result-object p1

    iput-object p1, p0, Lr4/y4;->F:Lr4/o6;

    return-void
.end method

.method public final c()V
    .locals 11

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->k()Lr4/z5;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lr4/z5;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v1}, Lr4/et3;->g()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6, v7}, Lr4/y4;->l(J)V

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-wide v0, v0, Lr4/o6;->s:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_b

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v0, Lr4/o6;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v9}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v0

    iput-object v0, p0, Lr4/y4;->F:Lr4/o6;

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lr4/y4;->y:Lr4/k3;

    iget-object v2, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->l()Lr4/z5;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lr4/k3;->g(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lr4/y4;->T:J

    invoke-virtual {v0}, Lr4/z5;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-wide v3, v0, Lr4/o6;->s:J

    iget-object v0, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v0}, Lr4/f04;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lr4/y4;->V:Z

    if-eqz v0, :cond_5

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    iput-boolean v10, p0, Lr4/y4;->V:Z

    :cond_5
    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v5, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v0

    iget v5, p0, Lr4/y4;->U:I

    iget-object v6, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_6

    iget-object v7, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr4/u4;

    goto :goto_2

    :cond_6
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_8

    if-ltz v0, :cond_7

    if-nez v0, :cond_8

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gez v9, :cond_8

    :cond_7
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_6

    iget-object v7, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr4/u4;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/u4;

    :cond_9
    iput v5, p0, Lr4/y4;->U:I

    :cond_a
    :goto_3
    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iput-wide v1, v0, Lr4/o6;->s:J

    :cond_b
    :goto_4
    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->j()Lr4/z5;

    move-result-object v0

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v0}, Lr4/z5;->e()J

    move-result-wide v2

    iput-wide v2, v1, Lr4/o6;->q:J

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {p0}, Lr4/y4;->E()J

    move-result-wide v1

    iput-wide v1, v0, Lr4/o6;->r:J

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-boolean v1, v0, Lr4/o6;->l:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lr4/o6;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {p0, v1, v0}, Lr4/y4;->e(Lr4/e8;Lr4/ft3;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->n:Lr4/q6;

    iget v1, v1, Lr4/q6;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c

    iget-object v1, p0, Lr4/y4;->X:Lr4/g3;

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v3, v3, Lr4/f04;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lr4/o6;->s:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lr4/y4;->d(Lr4/e8;Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-virtual {p0}, Lr4/y4;->E()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lr4/g3;->d(JJ)F

    move-result v0

    iget-object v1, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v1}, Lr4/k3;->z()Lr4/q6;

    move-result-object v1

    iget v1, v1, Lr4/q6;->a:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lr4/y4;->y:Lr4/k3;

    iget-object v2, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v2, v2, Lr4/o6;->n:Lr4/q6;

    new-instance v3, Lr4/q6;

    iget v2, v2, Lr4/q6;->b:F

    invoke-direct {v3, v0, v2}, Lr4/q6;-><init>(FF)V

    invoke-virtual {v1, v3}, Lr4/k3;->c(Lr4/q6;)V

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->n:Lr4/q6;

    iget-object v1, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v1}, Lr4/k3;->z()Lr4/q6;

    move-result-object v1

    iget v1, v1, Lr4/q6;->a:F

    invoke-virtual {p0, v0, v1, v10, v10}, Lr4/y4;->w(Lr4/q6;FZZ)V

    :cond_c
    return-void
.end method

.method public final declared-synchronized c0(Lr4/m13;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/m13<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x1f4

    add-long/2addr p2, v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lr4/m13;->zza()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final d(Lr4/e8;Ljava/lang/Object;J)J
    .locals 4

    iget-object v0, p0, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {p1, p2, v0}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object p2

    iget p2, p2, Lr4/b8;->c:I

    iget-object v0, p0, Lr4/y4;->v:Lr4/d8;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    iget-object p1, p0, Lr4/y4;->v:Lr4/d8;

    iget-wide v0, p1, Lr4/d8;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lr4/d8;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/y4;->v:Lr4/d8;

    iget-boolean p2, p1, Lr4/d8;->g:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p1, Lr4/d8;->e:J

    invoke-static {p1, p2}, Lr4/lc;->C(J)J

    move-result-wide p1

    iget-object v0, p0, Lr4/y4;->v:Lr4/d8;

    iget-wide v0, v0, Lr4/d8;->d:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lr4/e3;->b(J)J

    move-result-wide p1

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final d0(I)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget v1, v0, Lr4/o6;->e:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lr4/o6;->e(I)Lr4/o6;

    move-result-object p1

    iput-object p1, p0, Lr4/y4;->F:Lr4/o6;

    :cond_0
    return-void
.end method

.method public final e(Lr4/e8;Lr4/ft3;)Z
    .locals 4

    invoke-virtual {p2}, Lr4/f04;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lr4/e8;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v0, p0, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {p1, p2, v0}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object p2

    iget p2, p2, Lr4/b8;->c:I

    iget-object v0, p0, Lr4/y4;->v:Lr4/d8;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    iget-object p1, p0, Lr4/y4;->v:Lr4/d8;

    invoke-virtual {p1}, Lr4/d8;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/y4;->v:Lr4/d8;

    iget-boolean p2, p1, Lr4/d8;->g:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lr4/d8;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final e0()V
    .locals 2

    iget-object v0, p0, Lr4/y4;->G:Lr4/v4;

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v0, v1}, Lr4/v4;->c(Lr4/o6;)V

    iget-object v0, p0, Lr4/y4;->G:Lr4/v4;

    invoke-static {v0}, Lr4/v4;->a(Lr4/v4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/y4;->B:Lr4/w4;

    iget-object v1, p0, Lr4/y4;->G:Lr4/v4;

    invoke-interface {v0, v1}, Lr4/w4;->a(Lr4/v4;)V

    new-instance v0, Lr4/v4;

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    invoke-direct {v0, v1}, Lr4/v4;-><init>(Lr4/o6;)V

    iput-object v0, p0, Lr4/y4;->G:Lr4/v4;

    :cond_0
    return-void
.end method

.method public final f(JJ)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lr4/xa;->Y(I)V

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lr4/xa;->f(IJ)Z

    return-void
.end method

.method public final f0(ZIZI)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {v0, p3}, Lr4/v4;->b(I)V

    iget-object p3, p0, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {p3, p4}, Lr4/v4;->e(I)V

    iget-object p3, p0, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {p3, p1, p2}, Lr4/o6;->h(ZI)Lr4/o6;

    move-result-object p1

    iput-object p1, p0, Lr4/y4;->F:Lr4/o6;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/y4;->K:Z

    iget-object p2, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p2}, Lr4/c6;->k()Lr4/z5;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lr4/z5;->q()Lr4/cw3;

    move-result-object p3

    iget-object p3, p3, Lr4/cw3;->d:[Lr4/hv3;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_0

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lr4/z5;->o()Lr4/z5;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lr4/y4;->H()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lr4/y4;->i0()V

    invoke-virtual {p0}, Lr4/y4;->c()V

    return-void

    :cond_2
    iget-object p1, p0, Lr4/y4;->F:Lr4/o6;

    iget p1, p1, Lr4/o6;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lr4/y4;->h0()V

    iget-object p1, p0, Lr4/y4;->s:Lr4/xa;

    invoke-interface {p1, p3}, Lr4/xa;->C(I)Z

    return-void

    :cond_3
    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lr4/y4;->s:Lr4/xa;

    invoke-interface {p1, p3}, Lr4/xa;->C(I)Z

    :cond_4
    return-void
.end method

.method public final g(Lr4/ft3;JZ)J
    .locals 7

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->k()Lr4/z5;

    move-result-object v0

    iget-object v1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->l()Lr4/z5;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lr4/y4;->i(Lr4/ft3;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final g0(Z)V
    .locals 11

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->k()Lr4/z5;

    move-result-object v0

    iget-object v0, v0, Lr4/z5;->f:Lr4/a6;

    iget-object v0, v0, Lr4/a6;->a:Lr4/ft3;

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    iget-wide v3, v1, Lr4/o6;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lr4/y4;->i(Lr4/ft3;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    iget-wide v1, v1, Lr4/o6;->s:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    iget-object v1, p0, Lr4/y4;->F:Lr4/o6;

    iget-wide v5, v1, Lr4/o6;->c:J

    iget-wide v7, v1, Lr4/o6;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object p1

    iput-object p1, p0, Lr4/y4;->F:Lr4/o6;

    :cond_0
    return-void
.end method

.method public final h(Lr4/et3;)V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object p1

    invoke-interface {p1}, Lr4/wa;->zza()V

    return-void
.end method

.method public final h0()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/y4;->K:Z

    iget-object v1, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v1}, Lr4/k3;->a()V

    iget-object v1, p0, Lr4/y4;->a:[Lr4/g7;

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-static {v2}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lr4/g7;->E()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 48

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/4 v15, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    invoke-virtual {v11, v14}, Lr4/y4;->g0(Z)V

    goto/16 :goto_41

    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v14, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v11, Lr4/y4;->Q:Z

    if-eq v1, v2, :cond_70

    iput-boolean v1, v11, Lr4/y4;->Q:Z

    iget-object v2, v11, Lr4/y4;->F:Lr4/o6;

    iget v3, v2, Lr4/o6;->e:I

    if-nez v1, :cond_2

    if-eq v3, v9, :cond_2

    if-ne v3, v14, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v11, Lr4/y4;->s:Lr4/xa;

    invoke-interface {v1, v7}, Lr4/xa;->C(I)Z

    goto/16 :goto_41

    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Lr4/o6;->i(Z)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    goto/16 :goto_41

    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v11, Lr4/y4;->I:Z

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->u()V

    iget-boolean v1, v11, Lr4/y4;->J:Z

    if-eqz v1, :cond_70

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->l()Lr4/z5;

    move-result-object v1

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->k()Lr4/z5;

    move-result-object v2

    if-eq v1, v2, :cond_70

    invoke-virtual {v11, v14}, Lr4/y4;->g0(Z)V

    invoke-virtual {v11, v13}, Lr4/y4;->D(Z)V

    goto/16 :goto_41

    :pswitch_3
    iget-object v1, v11, Lr4/y4;->D:Lr4/j6;

    invoke-virtual {v1}, Lr4/j6;->h()Lr4/e8;

    move-result-object v1

    invoke-virtual {v11, v1, v14}, Lr4/y4;->s(Lr4/e8;Z)V

    goto/16 :goto_41

    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/yu3;

    iget-object v2, v11, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {v2, v14}, Lr4/v4;->b(I)V

    iget-object v2, v11, Lr4/y4;->D:Lr4/j6;

    invoke-virtual {v2, v1}, Lr4/j6;->n(Lr4/yu3;)Lr4/e8;

    move-result-object v1

    invoke-virtual {v11, v1, v13}, Lr4/y4;->s(Lr4/e8;Z)V

    goto/16 :goto_41

    :pswitch_5
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/yu3;

    iget-object v4, v11, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {v4, v14}, Lr4/v4;->b(I)V

    iget-object v4, v11, Lr4/y4;->D:Lr4/j6;

    invoke-virtual {v4, v2, v3, v1}, Lr4/j6;->l(IILr4/yu3;)Lr4/e8;

    move-result-object v1

    invoke-virtual {v11, v1, v13}, Lr4/y4;->s(Lr4/e8;Z)V

    goto/16 :goto_41

    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/s4;

    iget-object v2, v11, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {v2, v14}, Lr4/v4;->b(I)V

    iget-object v2, v11, Lr4/y4;->D:Lr4/j6;

    iget v1, v1, Lr4/s4;->a:I

    invoke-virtual {v2, v13, v13, v13, v15}, Lr4/j6;->m(IIILr4/yu3;)Lr4/e8;

    move-result-object v1

    invoke-virtual {v11, v1, v13}, Lr4/y4;->s(Lr4/e8;Z)V

    goto/16 :goto_41

    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lr4/r4;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v4, v11, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {v4, v14}, Lr4/v4;->b(I)V

    iget-object v4, v11, Lr4/y4;->D:Lr4/j6;

    if-ne v1, v3, :cond_4

    invoke-virtual {v4}, Lr4/j6;->d()I

    move-result v1

    :cond_4
    invoke-static {v2}, Lr4/r4;->a(Lr4/r4;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lr4/r4;->d(Lr4/r4;)Lr4/yu3;

    move-result-object v2

    invoke-virtual {v4, v1, v3, v2}, Lr4/j6;->k(ILjava/util/List;Lr4/yu3;)Lr4/e8;

    move-result-object v1

    invoke-virtual {v11, v1, v13}, Lr4/y4;->s(Lr4/e8;Z)V

    goto/16 :goto_41

    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/r4;

    iget-object v2, v11, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {v2, v14}, Lr4/v4;->b(I)V

    invoke-static {v1}, Lr4/r4;->b(Lr4/r4;)I

    move-result v2

    if-eq v2, v3, :cond_5

    new-instance v2, Lr4/x4;

    new-instance v3, Lr4/e7;

    invoke-static {v1}, Lr4/r4;->a(Lr4/r4;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lr4/r4;->d(Lr4/r4;)Lr4/yu3;

    move-result-object v5

    invoke-direct {v3, v4, v5, v15}, Lr4/e7;-><init>(Ljava/util/Collection;Lr4/yu3;[B)V

    invoke-static {v1}, Lr4/r4;->b(Lr4/r4;)I

    move-result v4

    invoke-static {v1}, Lr4/r4;->c(Lr4/r4;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lr4/x4;-><init>(Lr4/e8;IJ)V

    iput-object v2, v11, Lr4/y4;->S:Lr4/x4;

    :cond_5
    iget-object v2, v11, Lr4/y4;->D:Lr4/j6;

    invoke-static {v1}, Lr4/r4;->a(Lr4/r4;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Lr4/r4;->d(Lr4/r4;)Lr4/yu3;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lr4/j6;->j(Ljava/util/List;Lr4/yu3;)Lr4/e8;

    move-result-object v1

    invoke-virtual {v11, v1, v13}, Lr4/y4;->s(Lr4/e8;Z)V

    goto/16 :goto_41

    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/q6;

    invoke-virtual {v11, v1, v13}, Lr4/y4;->v(Lr4/q6;Z)V

    goto/16 :goto_41

    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/d7;

    invoke-virtual {v1}, Lr4/d7;->f()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v2, "TAG"

    const-string v3, "Trying to send message on a dead thread."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v13}, Lr4/d7;->i(Z)V

    goto/16 :goto_41

    :cond_6
    iget-object v3, v11, Lr4/y4;->A:Lr4/ka;

    invoke-interface {v3, v2, v15}, Lr4/ka;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lr4/xa;

    move-result-object v2

    new-instance v3, Lr4/p4;

    invoke-direct {v3, v11, v1}, Lr4/p4;-><init>(Lr4/y4;Lr4/d7;)V

    invoke-interface {v2, v3}, Lr4/xa;->g(Ljava/lang/Runnable;)Z

    goto/16 :goto_41

    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/d7;

    invoke-virtual {v1}, Lr4/d7;->f()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v11, Lr4/y4;->u:Landroid/os/Looper;

    if-ne v2, v3, :cond_8

    invoke-static {v1}, Lr4/y4;->L(Lr4/d7;)V

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget v1, v1, Lr4/o6;->e:I

    if-eq v1, v10, :cond_7

    if-ne v1, v7, :cond_70

    :cond_7
    iget-object v1, v11, Lr4/y4;->s:Lr4/xa;

    invoke-interface {v1, v7}, Lr4/xa;->C(I)Z

    goto/16 :goto_41

    :cond_8
    iget-object v2, v11, Lr4/y4;->s:Lr4/xa;

    const/16 v3, 0xf

    invoke-interface {v2, v3, v1}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object v1

    invoke-interface {v1}, Lr4/wa;->zza()V

    goto/16 :goto_41

    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, v11, Lr4/y4;->O:Z

    if-eq v3, v2, :cond_b

    iput-boolean v2, v11, Lr4/y4;->O:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Lr4/y4;->a:[Lr4/g7;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v7, :cond_b

    aget-object v4, v2, v3

    invoke-static {v4}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v11, Lr4/y4;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Lr4/g7;->R()V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_70

    monitor-enter p0
    :try_end_0
    .catch Lr4/o3; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lr4/mm2; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lr4/l6; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lr4/p9; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto/16 :goto_41

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :pswitch_d
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v11, Lr4/y4;->N:Z

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v3, v3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v2, v3, v1}, Lr4/c6;->e(Lr4/e8;Z)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v11, v14}, Lr4/y4;->g0(Z)V

    :cond_d
    invoke-virtual {v11, v13}, Lr4/y4;->D(Z)V

    goto/16 :goto_41

    :pswitch_e
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v11, Lr4/y4;->M:I

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v3, v3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v2, v3, v1}, Lr4/c6;->d(Lr4/e8;I)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v11, v14}, Lr4/y4;->g0(Z)V

    :cond_e
    invoke-virtual {v11, v13}, Lr4/y4;->D(Z)V

    goto/16 :goto_41

    :pswitch_f
    iget-object v1, v11, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v1}, Lr4/k3;->z()Lr4/q6;

    move-result-object v1

    iget v1, v1, Lr4/q6;->a:F

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->k()Lr4/z5;

    move-result-object v2

    iget-object v3, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v3}, Lr4/c6;->l()Lr4/z5;

    move-result-object v3

    const/4 v4, 0x1

    :goto_6
    if-eqz v2, :cond_70

    iget-boolean v5, v2, Lr4/z5;->d:Z

    if-eqz v5, :cond_70

    iget-object v5, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v5, v5, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v2, v1, v5}, Lr4/z5;->j(FLr4/e8;)Lr4/cw3;

    move-result-object v5

    invoke-virtual {v2}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-object v8, v6, Lr4/cw3;->d:[Lr4/hv3;

    array-length v8, v8

    iget-object v10, v5, Lr4/cw3;->d:[Lr4/hv3;

    array-length v10, v10

    if-eq v8, v10, :cond_f

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    :goto_7
    iget-object v10, v5, Lr4/cw3;->d:[Lr4/hv3;

    array-length v10, v10

    if-ge v8, v10, :cond_10

    invoke-virtual {v5, v6, v8}, Lr4/cw3;->b(Lr4/cw3;I)Z

    move-result v10

    if-eqz v10, :cond_12

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_10
    if-ne v2, v3, :cond_11

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    const/4 v5, 0x1

    :goto_8
    and-int/2addr v4, v5

    invoke-virtual {v2}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    goto :goto_6

    :cond_12
    :goto_9
    if-eqz v4, :cond_18

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->k()Lr4/z5;

    move-result-object v10

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1, v10}, Lr4/c6;->o(Lr4/z5;)Z

    move-result v19

    new-array v8, v7, [Z

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-wide v1, v1, Lr4/o6;->s:J

    move-object v15, v10

    move-object/from16 v16, v5

    move-wide/from16 v17, v1

    move-object/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Lr4/z5;->l(Lr4/cw3;JZ[Z)J

    move-result-wide v5

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget v2, v1, Lr4/o6;->e:I

    if-eq v2, v9, :cond_13

    iget-wide v1, v1, Lr4/o6;->s:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_13

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    :goto_a
    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v2, v1, Lr4/o6;->b:Lr4/ft3;

    iget-wide v3, v1, Lr4/o6;->c:J

    move-object/from16 v16, v8

    iget-wide v7, v1, Lr4/o6;->d:J

    const/16 v17, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v19, v3

    move-wide v3, v5

    move-wide v12, v5

    move-wide/from16 v5, v19

    const/4 v14, 0x2

    move v9, v15

    move-object/from16 v22, v10

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    if-eqz v15, :cond_14

    invoke-virtual {v11, v12, v13}, Lr4/y4;->l(J)V

    :cond_14
    new-array v1, v14, [Z

    const/4 v2, 0x0

    :goto_b
    iget-object v3, v11, Lr4/y4;->a:[Lr4/g7;

    if-ge v2, v14, :cond_17

    aget-object v3, v3, v2

    invoke-static {v3}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v4

    aput-boolean v4, v1, v2

    move-object/from16 v5, v22

    iget-object v6, v5, Lr4/z5;->c:[Lr4/vu3;

    aget-object v6, v6, v2

    if-eqz v4, :cond_16

    invoke-interface {v3}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v4

    if-eq v6, v4, :cond_15

    invoke-virtual {v11, v3}, Lr4/y4;->q(Lr4/g7;)V

    goto :goto_c

    :cond_15
    aget-boolean v4, v16, v2

    if-eqz v4, :cond_16

    iget-wide v6, v11, Lr4/y4;->T:J

    invoke-interface {v3, v6, v7}, Lr4/g7;->c0(J)V

    :cond_16
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v5

    goto :goto_b

    :cond_17
    invoke-virtual {v11, v1}, Lr4/y4;->C([Z)V

    goto :goto_d

    :cond_18
    const/4 v14, 0x2

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1, v2}, Lr4/c6;->o(Lr4/z5;)Z

    iget-boolean v1, v2, Lr4/z5;->d:Z

    if-eqz v1, :cond_19

    iget-object v1, v2, Lr4/z5;->f:Lr4/a6;

    iget-wide v3, v1, Lr4/a6;->b:J

    iget-wide v6, v11, Lr4/y4;->T:J

    invoke-virtual {v2}, Lr4/z5;->a()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {v2, v5, v3, v4, v1}, Lr4/z5;->k(Lr4/cw3;JZ)J

    :cond_19
    :goto_d
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lr4/y4;->D(Z)V

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget v1, v1, Lr4/o6;->e:I

    const/4 v12, 0x4

    if-eq v1, v12, :cond_70

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->x()V

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->c()V

    iget-object v1, v11, Lr4/y4;->s:Lr4/xa;

    invoke-interface {v1, v14}, Lr4/xa;->C(I)Z

    goto/16 :goto_41

    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/et3;

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2, v1}, Lr4/c6;->f(Lr4/et3;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    iget-wide v2, v11, Lr4/y4;->T:J

    invoke-virtual {v1, v2, v3}, Lr4/c6;->g(J)V

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->x()V

    goto/16 :goto_41

    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/et3;

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2, v1}, Lr4/c6;->f(Lr4/et3;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->j()Lr4/z5;

    move-result-object v1

    iget-object v2, v11, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v2}, Lr4/k3;->z()Lr4/q6;

    move-result-object v2

    iget v2, v2, Lr4/q6;->a:F

    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v3, v3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v1, v2, v3}, Lr4/z5;->g(FLr4/e8;)V

    invoke-virtual {v1}, Lr4/z5;->p()Lr4/j44;

    move-result-object v2

    invoke-virtual {v1}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lr4/y4;->G(Lr4/j44;Lr4/cw3;)V

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->k()Lr4/z5;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    iget-object v2, v1, Lr4/z5;->f:Lr4/a6;

    iget-wide v2, v2, Lr4/a6;->b:J

    invoke-virtual {v11, v2, v3}, Lr4/y4;->l(J)V

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->B()V

    iget-object v2, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v3, v2, Lr4/o6;->b:Lr4/ft3;

    iget-object v1, v1, Lr4/z5;->f:Lr4/a6;

    iget-wide v7, v1, Lr4/a6;->b:J

    iget-wide v5, v2, Lr4/o6;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v7

    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->x()V

    goto/16 :goto_41

    :pswitch_12
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v11, v2, v1, v2, v1}, Lr4/y4;->n(ZZZZ)V

    iget-object v1, v11, Lr4/y4;->q:Lr4/h5;

    invoke-interface {v1}, Lr4/h5;->b()V

    invoke-virtual {v11, v2}, Lr4/y4;->d0(I)V

    iget-object v1, v11, Lr4/y4;->t:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0
    :try_end_2
    .catch Lr4/o3; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lr4/mm2; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lr4/l6; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lr4/p9; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-boolean v2, v11, Lr4/y4;->H:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :pswitch_13
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lr4/y4;->m(ZZ)V

    goto/16 :goto_41

    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/k7;

    iput-object v1, v11, Lr4/y4;->E:Lr4/k7;

    goto/16 :goto_41

    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/q6;

    iget-object v2, v11, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v2, v1}, Lr4/k3;->c(Lr4/q6;)V

    iget-object v1, v11, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v1}, Lr4/k3;->z()Lr4/q6;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lr4/y4;->v(Lr4/q6;Z)V

    goto/16 :goto_41

    :pswitch_16
    const/4 v12, 0x4

    const/4 v14, 0x2

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lr4/x4;

    iget-object v2, v11, Lr4/y4;->G:Lr4/v4;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lr4/v4;->b(I)V

    iget-object v2, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v2, v2, Lr4/o6;->a:Lr4/e8;

    const/4 v4, 0x1

    iget v5, v11, Lr4/y4;->M:I

    iget-boolean v6, v11, Lr4/y4;->N:Z

    iget-object v7, v11, Lr4/y4;->v:Lr4/d8;

    iget-object v8, v11, Lr4/y4;->w:Lr4/b8;

    move-object v3, v1

    invoke-static/range {v2 .. v8}, Lr4/y4;->J(Lr4/e8;Lr4/x4;ZIZLr4/d8;Lr4/b8;)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1b

    iget-object v5, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v5, v5, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v11, v5}, Lr4/y4;->o(Lr4/e8;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lr4/ft3;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v5, v5, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v5}, Lr4/e8;->k()Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    move v9, v5

    move-wide/from16 v14, v16

    move-wide/from16 v46, v7

    move-object v8, v6

    :goto_e
    move-wide/from16 v5, v46

    goto :goto_11

    :cond_1b
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v14, v1, Lr4/x4;->c:J

    cmp-long v6, v14, v16

    if-nez v6, :cond_1c

    move-wide/from16 v14, v16

    goto :goto_f

    :cond_1c
    move-wide v14, v7

    :goto_f
    iget-object v6, v11, Lr4/y4;->C:Lr4/c6;

    iget-object v9, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v9, v9, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v6, v9, v5, v7, v8}, Lr4/c6;->s(Lr4/e8;Ljava/lang/Object;J)Lr4/ft3;

    move-result-object v5

    invoke-virtual {v5}, Lr4/f04;->b()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v6, v6, Lr4/o6;->a:Lr4/e8;

    iget-object v7, v5, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v8, v11, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {v6, v7, v8}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object v6, v11, Lr4/y4;->w:Lr4/b8;

    iget v7, v5, Lr4/f04;->b:I

    invoke-virtual {v6, v7}, Lr4/b8;->c(I)I

    move-result v6

    iget v7, v5, Lr4/f04;->c:I

    if-ne v6, v7, :cond_1d

    iget-object v6, v11, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {v6}, Lr4/b8;->i()J

    :cond_1d
    move-object v8, v5

    const/4 v9, 0x1

    move-wide v5, v3

    goto :goto_11

    :cond_1e
    move-wide/from16 v19, v14

    iget-wide v13, v1, Lr4/x4;->c:J
    :try_end_4
    .catch Lr4/o3; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lr4/mm2; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lr4/l6; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lr4/p9; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    cmp-long v6, v13, v16

    if-nez v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    :goto_10
    move v9, v6

    move-wide/from16 v14, v19

    move-wide/from16 v46, v7

    move-object v8, v5

    goto :goto_e

    :goto_11
    :try_start_5
    iget-object v7, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v7, v7, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v7}, Lr4/e8;->k()Z

    move-result v7

    if-eqz v7, :cond_20

    iput-object v1, v11, Lr4/y4;->S:Lr4/x4;

    goto :goto_12

    :cond_20
    if-nez v2, :cond_22

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget v1, v1, Lr4/o6;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    invoke-virtual {v11, v12}, Lr4/y4;->d0(I)V

    :cond_21
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v2, v1, v2}, Lr4/y4;->n(ZZZZ)V

    :goto_12
    move-wide v12, v5

    goto/16 :goto_17

    :cond_22
    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v8, v1}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->k()Lr4/z5;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-boolean v2, v1, Lr4/z5;->d:Z

    if-eqz v2, :cond_23

    cmp-long v2, v5, v3

    if-eqz v2, :cond_23

    iget-object v1, v1, Lr4/z5;->a:Lr4/et3;

    iget-object v2, v11, Lr4/y4;->E:Lr4/k7;

    invoke-interface {v1, v5, v6, v2}, Lr4/et3;->o(JLr4/k7;)J

    move-result-wide v1

    goto :goto_13

    :cond_23
    move-wide v1, v5

    :goto_13
    invoke-static {v1, v2}, Lr4/e3;->a(J)J

    move-result-wide v3

    iget-object v7, v11, Lr4/y4;->F:Lr4/o6;

    iget-wide v12, v7, Lr4/o6;->s:J

    invoke-static {v12, v13}, Lr4/e3;->a(J)J

    move-result-wide v12

    cmp-long v7, v3, v12

    if-nez v7, :cond_26

    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget v4, v3, Lr4/o6;->e:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_24

    if-ne v4, v10, :cond_26

    :cond_24
    iget-wide v12, v3, Lr4/o6;->s:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    :try_start_6
    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v1

    :goto_14
    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;
    :try_end_6
    .catch Lr4/o3; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lr4/mm2; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lr4/l6; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lr4/p9; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_41

    :cond_25
    move-wide v1, v5

    :cond_26
    :try_start_7
    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget v3, v3, Lr4/o6;->e:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    goto :goto_15

    :cond_27
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v11, v8, v1, v2, v3}, Lr4/y4;->g(Lr4/ft3;JZ)J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    cmp-long v1, v5, v12

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_16

    :cond_28
    const/4 v1, 0x0

    :goto_16
    or-int/2addr v9, v1

    :try_start_8
    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v4, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v5, v1, Lr4/o6;->b:Lr4/ft3;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v8

    move-wide v6, v14

    invoke-virtual/range {v1 .. v7}, Lr4/y4;->t(Lr4/e8;Lr4/ft3;Lr4/e8;Lr4/ft3;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_17
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    :try_start_9
    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v1

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-wide/from16 v46, v12

    move-object v12, v1

    move v13, v9

    move-wide/from16 v9, v46

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v12, v1

    move v13, v9

    move-wide v9, v5

    :goto_18
    const/16 v16, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v9

    move-wide v5, v14

    move-wide v7, v9

    move v9, v13

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    throw v12

    :pswitch_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, v11, Lr4/y4;->D:Lr4/j6;

    invoke-virtual {v1}, Lr4/j6;->c()Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_25

    :cond_29
    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    iget-wide v2, v11, Lr4/y4;->T:J

    invoke-virtual {v1, v2, v3}, Lr4/c6;->g(J)V

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->h()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    iget-wide v2, v11, Lr4/y4;->T:J

    iget-object v4, v11, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v1, v2, v3, v4}, Lr4/c6;->i(JLr4/o6;)Lr4/a6;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    iget-object v3, v11, Lr4/y4;->d:[Lr4/h7;

    iget-object v4, v11, Lr4/y4;->k:Lr4/aw3;

    iget-object v5, v11, Lr4/y4;->q:Lr4/h5;

    invoke-interface {v5}, Lr4/h5;->f()Lr4/qw3;

    move-result-object v25

    iget-object v5, v11, Lr4/y4;->D:Lr4/j6;

    iget-object v6, v11, Lr4/y4;->p:Lr4/cw3;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v1

    move-object/from16 v28, v6

    invoke-virtual/range {v22 .. v28}, Lr4/c6;->u([Lr4/h7;Lr4/aw3;Lr4/qw3;Lr4/j6;Lr4/a6;Lr4/cw3;)Lr4/z5;

    move-result-object v2

    iget-object v3, v2, Lr4/z5;->a:Lr4/et3;

    iget-wide v4, v1, Lr4/a6;->b:J

    invoke-interface {v3, v11, v4, v5}, Lr4/et3;->m(Lr4/dt3;J)V

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->k()Lr4/z5;

    move-result-object v1

    if-ne v1, v2, :cond_2a

    invoke-virtual {v2}, Lr4/z5;->c()J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lr4/y4;->l(J)V

    :cond_2a
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lr4/y4;->D(Z)V

    :cond_2b
    iget-boolean v1, v11, Lr4/y4;->L:Z

    if-eqz v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->y()Z

    move-result v1

    iput-boolean v1, v11, Lr4/y4;->L:Z

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->z()V

    goto :goto_19

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->x()V

    :goto_19
    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->l()Lr4/z5;

    move-result-object v1

    if-nez v1, :cond_2d

    goto/16 :goto_20

    :cond_2d
    invoke-virtual {v1}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-boolean v2, v11, Lr4/y4;->J:Z

    if-eqz v2, :cond_2e

    goto/16 :goto_1d

    :cond_2e
    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->l()Lr4/z5;

    move-result-object v2

    iget-boolean v3, v2, Lr4/z5;->d:Z

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    :goto_1a
    iget-object v4, v11, Lr4/y4;->a:[Lr4/g7;

    const/4 v5, 0x2

    if-ge v3, v5, :cond_30

    aget-object v4, v4, v3

    iget-object v5, v2, Lr4/z5;->c:[Lr4/vu3;

    aget-object v5, v5, v3

    invoke-interface {v4}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v6

    if-ne v6, v5, :cond_3a

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Lr4/g7;->H()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v2}, Lr4/z5;->o()Lr4/z5;

    iget-object v1, v2, Lr4/z5;->f:Lr4/a6;

    iget-boolean v1, v1, Lr4/a6;->f:Z

    goto/16 :goto_20

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    invoke-virtual {v1}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    iget-boolean v2, v2, Lr4/z5;->d:Z

    if-nez v2, :cond_31

    iget-wide v2, v11, Lr4/y4;->T:J

    invoke-virtual {v1}, Lr4/z5;->o()Lr4/z5;

    move-result-object v4

    invoke-virtual {v4}, Lr4/z5;->c()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3a

    :cond_31
    invoke-virtual {v1}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v1

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->m()Lr4/z5;

    move-result-object v2

    invoke-virtual {v2}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v3

    iget-boolean v4, v2, Lr4/z5;->d:Z

    if-eqz v4, :cond_33

    iget-object v4, v2, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v4}, Lr4/et3;->g()J

    move-result-wide v4

    cmp-long v6, v4, v16

    if-eqz v6, :cond_33

    invoke-virtual {v2}, Lr4/z5;->c()J

    move-result-wide v1

    iget-object v3, v11, Lr4/y4;->a:[Lr4/g7;

    const/4 v4, 0x0

    :goto_1b
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    aget-object v5, v3, v4

    invoke-interface {v5}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v6

    if-eqz v6, :cond_32

    invoke-static {v5, v1, v2}, Lr4/y4;->N(Lr4/g7;J)V

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_33
    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    invoke-virtual {v1, v4}, Lr4/cw3;->a(I)Z

    move-result v5

    invoke-virtual {v3, v4}, Lr4/cw3;->a(I)Z

    move-result v6

    if-eqz v5, :cond_35

    iget-object v5, v11, Lr4/y4;->a:[Lr4/g7;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lr4/g7;->F()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, v11, Lr4/y4;->d:[Lr4/h7;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lr4/h7;->G()I

    iget-object v5, v1, Lr4/cw3;->b:[Lr4/i7;

    aget-object v5, v5, v4

    iget-object v9, v3, Lr4/cw3;->b:[Lr4/i7;

    aget-object v9, v9, v4

    if-eqz v6, :cond_34

    invoke-virtual {v9, v5}, Lr4/i7;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    :cond_34
    iget-object v5, v11, Lr4/y4;->a:[Lr4/g7;

    aget-object v5, v5, v4

    invoke-virtual {v2}, Lr4/z5;->c()J

    move-result-wide v13

    invoke-static {v5, v13, v14}, Lr4/y4;->N(Lr4/g7;J)V

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_36
    :goto_1d
    iget-object v2, v1, Lr4/z5;->f:Lr4/a6;

    iget-boolean v2, v2, Lr4/a6;->i:Z

    if-nez v2, :cond_37

    iget-boolean v2, v11, Lr4/y4;->J:Z

    if-eqz v2, :cond_3a

    :cond_37
    const/4 v2, 0x0

    :goto_1e
    iget-object v3, v11, Lr4/y4;->a:[Lr4/g7;

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3a

    aget-object v3, v3, v2

    iget-object v4, v1, Lr4/z5;->c:[Lr4/vu3;

    aget-object v4, v4, v2

    if-eqz v4, :cond_39

    invoke-interface {v3}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v5

    if-ne v5, v4, :cond_39

    invoke-interface {v3}, Lr4/g7;->H()Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v1, Lr4/z5;->f:Lr4/a6;

    iget-wide v4, v4, Lr4/a6;->e:J

    cmp-long v6, v4, v16

    if-eqz v6, :cond_38

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v6, v4, v19

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Lr4/z5;->a()J

    move-result-wide v4

    iget-object v6, v1, Lr4/z5;->f:Lr4/a6;

    iget-wide v13, v6, Lr4/a6;->e:J

    add-long/2addr v4, v13

    goto :goto_1f

    :cond_38
    move-wide/from16 v4, v16

    :goto_1f
    invoke-static {v3, v4, v5}, Lr4/y4;->N(Lr4/g7;J)V

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3a
    :goto_20
    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->l()Lr4/z5;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->k()Lr4/z5;

    move-result-object v2

    if-eq v2, v1, :cond_41

    iget-boolean v1, v1, Lr4/z5;->g:Z

    if-eqz v1, :cond_3b

    goto :goto_23

    :cond_3b
    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->l()Lr4/z5;

    move-result-object v1

    invoke-virtual {v1}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    iget-object v5, v11, Lr4/y4;->a:[Lr4/g7;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_40

    aget-object v5, v5, v3

    invoke-static {v5}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v5}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v6

    iget-object v9, v1, Lr4/z5;->c:[Lr4/vu3;

    aget-object v9, v9, v3

    invoke-virtual {v2, v3}, Lr4/cw3;->a(I)Z

    move-result v12

    if-eqz v12, :cond_3c

    if-ne v6, v9, :cond_3c

    goto :goto_22

    :cond_3c
    invoke-interface {v5}, Lr4/g7;->F()Z

    move-result v6

    if-nez v6, :cond_3d

    iget-object v6, v2, Lr4/cw3;->d:[Lr4/hv3;

    aget-object v6, v6, v3

    invoke-static {v6}, Lr4/y4;->O(Lr4/hv3;)[Lr4/e5;

    move-result-object v23

    iget-object v6, v1, Lr4/z5;->c:[Lr4/vu3;

    aget-object v24, v6, v3

    invoke-virtual {v1}, Lr4/z5;->c()J

    move-result-wide v25

    invoke-virtual {v1}, Lr4/z5;->a()J

    move-result-wide v27

    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v28}, Lr4/g7;->S([Lr4/e5;Lr4/vu3;JJ)V

    goto :goto_22

    :cond_3d
    invoke-interface {v5}, Lr4/g7;->K()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v11, v5}, Lr4/y4;->q(Lr4/g7;)V

    goto :goto_22

    :cond_3e
    const/4 v4, 0x1

    :cond_3f
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_40
    if-nez v4, :cond_41

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->B()V

    :cond_41
    :goto_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->H()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-boolean v2, v11, Lr4/y4;->J:Z

    if-nez v2, :cond_43

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->k()Lr4/z5;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-wide v3, v11, Lr4/y4;->T:J

    invoke-virtual {v2}, Lr4/z5;->c()J

    move-result-wide v5

    cmp-long v9, v3, v5

    if-ltz v9, :cond_43

    iget-boolean v2, v2, Lr4/z5;->g:Z

    if-eqz v2, :cond_43

    if-eqz v1, :cond_42

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->e0()V

    :cond_42
    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->k()Lr4/z5;

    move-result-object v12

    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->n()Lr4/z5;

    move-result-object v14

    iget-object v1, v14, Lr4/z5;->f:Lr4/a6;

    iget-object v2, v1, Lr4/a6;->a:Lr4/ft3;

    iget-wide v5, v1, Lr4/a6;->b:J

    iget-wide v3, v1, Lr4/a6;->c:J

    const/4 v9, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v22, v3

    move-wide v3, v5

    move-wide/from16 v24, v5

    move-wide/from16 v5, v22

    move-wide/from16 v29, v7

    move-wide/from16 v7, v24

    const/4 v13, 0x3

    move/from16 v10, v19

    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v4, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v1, v14, Lr4/z5;->f:Lr4/a6;

    iget-object v3, v1, Lr4/a6;->a:Lr4/ft3;

    iget-object v1, v12, Lr4/z5;->f:Lr4/a6;

    iget-object v5, v1, Lr4/a6;->a:Lr4/ft3;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual/range {v1 .. v7}, Lr4/y4;->t(Lr4/e8;Lr4/ft3;Lr4/e8;Lr4/ft3;J)V

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->u()V

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->c()V

    move-wide/from16 v7, v29

    const/4 v1, 0x1

    const/4 v10, 0x3

    goto :goto_24

    :cond_43
    :goto_25
    move-wide/from16 v29, v7

    const/4 v13, 0x3

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget v1, v1, Lr4/o6;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    const/4 v2, 0x4

    if-ne v1, v2, :cond_44

    goto/16 :goto_3b

    :cond_44
    iget-object v1, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->k()Lr4/z5;

    move-result-object v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_45

    move-wide/from16 v4, v29

    invoke-virtual {v11, v4, v5, v2, v3}, Lr4/y4;->f(JJ)V

    goto/16 :goto_41

    :cond_45
    move-wide/from16 v4, v29

    const-string v6, "doSomeWork"

    invoke-static {v6}, Lr4/gc;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->c()V

    iget-boolean v6, v1, Lr4/z5;->d:Z

    const-wide/16 v7, 0x3e8

    if-eqz v6, :cond_4d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    mul-long v9, v9, v7

    iget-object v6, v1, Lr4/z5;->a:Lr4/et3;

    iget-object v12, v11, Lr4/y4;->F:Lr4/o6;

    iget-wide v7, v12, Lr4/o6;->s:J

    iget-wide v2, v11, Lr4/y4;->x:J

    sub-long/2addr v7, v2

    const/4 v2, 0x0

    invoke-interface {v6, v7, v8, v2}, Lr4/et3;->q(JZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_26
    iget-object v7, v11, Lr4/y4;->a:[Lr4/g7;

    const/4 v8, 0x2

    if-ge v6, v8, :cond_4e

    aget-object v7, v7, v6

    invoke-static {v7}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v12

    if-nez v12, :cond_46

    goto :goto_2c

    :cond_46
    iget-wide v13, v11, Lr4/y4;->T:J

    invoke-interface {v7, v13, v14, v9, v10}, Lr4/g7;->U(JJ)V

    if-eqz v3, :cond_47

    invoke-interface {v7}, Lr4/g7;->K()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x1

    goto :goto_27

    :cond_47
    const/4 v3, 0x0

    :goto_27
    iget-object v13, v1, Lr4/z5;->c:[Lr4/vu3;

    aget-object v13, v13, v6

    invoke-interface {v7}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v14

    if-ne v13, v14, :cond_48

    invoke-interface {v7}, Lr4/g7;->H()Z

    move-result v24

    if-eqz v24, :cond_48

    const/16 v24, 0x1

    goto :goto_28

    :cond_48
    const/16 v24, 0x0

    :goto_28
    if-ne v13, v14, :cond_4a

    if-nez v24, :cond_4a

    invoke-interface {v7}, Lr4/g7;->O()Z

    move-result v13

    if-nez v13, :cond_4a

    invoke-interface {v7}, Lr4/g7;->K()Z

    move-result v13

    if-eqz v13, :cond_49

    goto :goto_29

    :cond_49
    const/4 v13, 0x0

    goto :goto_2a

    :cond_4a
    :goto_29
    const/4 v13, 0x1

    :goto_2a
    if-eqz v2, :cond_4b

    if-eqz v13, :cond_4b

    const/4 v2, 0x1

    goto :goto_2b

    :cond_4b
    const/4 v2, 0x0

    :goto_2b
    if-nez v13, :cond_4c

    invoke-interface {v7}, Lr4/g7;->t()V

    :cond_4c
    :goto_2c
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x3

    goto :goto_26

    :cond_4d
    iget-object v2, v1, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v2}, Lr4/et3;->b()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    :cond_4e
    iget-object v6, v1, Lr4/z5;->f:Lr4/a6;

    iget-wide v6, v6, Lr4/a6;->e:J

    if-eqz v3, :cond_51

    iget-boolean v3, v1, Lr4/z5;->d:Z

    if-eqz v3, :cond_51

    cmp-long v3, v6, v16

    if-eqz v3, :cond_4f

    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget-wide v9, v3, Lr4/o6;->s:J

    cmp-long v3, v6, v9

    if-gtz v3, :cond_51

    :cond_4f
    iget-boolean v3, v11, Lr4/y4;->J:Z

    if-eqz v3, :cond_50

    const/4 v3, 0x0

    iput-boolean v3, v11, Lr4/y4;->J:Z

    iget-object v6, v11, Lr4/y4;->F:Lr4/o6;

    iget v6, v6, Lr4/o6;->m:I

    const/4 v7, 0x5

    invoke-virtual {v11, v3, v6, v3, v7}, Lr4/y4;->f0(ZIZI)V

    :cond_50
    iget-object v3, v1, Lr4/z5;->f:Lr4/a6;

    iget-boolean v3, v3, Lr4/a6;->i:Z

    if-eqz v3, :cond_51

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lr4/y4;->d0(I)V

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->i0()V

    goto/16 :goto_35

    :cond_51
    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget v6, v3, Lr4/o6;->e:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_58

    iget v7, v11, Lr4/y4;->R:I

    if-nez v7, :cond_53

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->r()Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_52
    :goto_2d
    const/4 v2, 0x3

    goto/16 :goto_30

    :cond_53
    if-nez v2, :cond_54

    goto/16 :goto_31

    :cond_54
    iget-boolean v7, v3, Lr4/o6;->g:Z

    if-eqz v7, :cond_52

    iget-object v3, v3, Lr4/o6;->a:Lr4/e8;

    iget-object v7, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v7}, Lr4/c6;->k()Lr4/z5;

    move-result-object v7

    iget-object v7, v7, Lr4/z5;->f:Lr4/a6;

    iget-object v7, v7, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {v11, v3, v7}, Lr4/y4;->e(Lr4/e8;Lr4/ft3;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, v11, Lr4/y4;->X:Lr4/g3;

    invoke-virtual {v3}, Lr4/g3;->e()J

    move-result-wide v16

    :cond_55
    move-wide/from16 v29, v16

    iget-object v3, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v3}, Lr4/c6;->j()Lr4/z5;

    move-result-object v3

    invoke-virtual {v3}, Lr4/z5;->d()Z

    move-result v7

    if-eqz v7, :cond_56

    iget-object v7, v3, Lr4/z5;->f:Lr4/a6;

    iget-boolean v7, v7, Lr4/a6;->i:Z

    if-eqz v7, :cond_56

    const/4 v7, 0x1

    goto :goto_2e

    :cond_56
    const/4 v7, 0x0

    :goto_2e
    iget-object v8, v3, Lr4/z5;->f:Lr4/a6;

    iget-object v8, v8, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {v8}, Lr4/f04;->b()Z

    move-result v8

    if-eqz v8, :cond_57

    iget-boolean v3, v3, Lr4/z5;->d:Z

    if-nez v3, :cond_57

    const/4 v3, 0x1

    goto :goto_2f

    :cond_57
    const/4 v3, 0x0

    :goto_2f
    if-nez v7, :cond_52

    if-nez v3, :cond_52

    iget-object v3, v11, Lr4/y4;->q:Lr4/h5;

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->E()J

    move-result-wide v25

    iget-object v7, v11, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v7}, Lr4/k3;->z()Lr4/q6;

    move-result-object v7

    iget v7, v7, Lr4/q6;->a:F

    iget-boolean v8, v11, Lr4/y4;->K:Z

    move-object/from16 v24, v3

    move/from16 v27, v7

    move/from16 v28, v8

    invoke-interface/range {v24 .. v30}, Lr4/h5;->d(JFZJ)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_2d

    :goto_30
    invoke-virtual {v11, v2}, Lr4/y4;->d0(I)V

    iput-object v15, v11, Lr4/y4;->W:Lr4/o3;

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->H()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->h0()V

    goto :goto_35

    :cond_58
    :goto_31
    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget v3, v3, Lr4/o6;->e:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5d

    iget v3, v11, Lr4/y4;->R:I

    if-nez v3, :cond_59

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->r()Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_32

    :cond_59
    if-nez v2, :cond_5d

    :goto_32
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->H()Z

    move-result v2

    iput-boolean v2, v11, Lr4/y4;->K:Z

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lr4/y4;->d0(I)V

    iget-boolean v3, v11, Lr4/y4;->K:Z

    if-eqz v3, :cond_5c

    iget-object v3, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v3}, Lr4/c6;->k()Lr4/z5;

    move-result-object v3

    :goto_33
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v6

    iget-object v6, v6, Lr4/cw3;->d:[Lr4/hv3;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v7, :cond_5a

    aget-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_5a
    invoke-virtual {v3}, Lr4/z5;->o()Lr4/z5;

    move-result-object v3

    goto :goto_33

    :cond_5b
    iget-object v3, v11, Lr4/y4;->X:Lr4/g3;

    invoke-virtual {v3}, Lr4/g3;->c()V

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->i0()V

    :cond_5d
    :goto_35
    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget v3, v3, Lr4/o6;->e:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_61

    const/4 v3, 0x0

    :goto_36
    iget-object v6, v11, Lr4/y4;->a:[Lr4/g7;

    if-ge v3, v2, :cond_5f

    aget-object v6, v6, v3

    invoke-static {v6}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-object v6, v11, Lr4/y4;->a:[Lr4/g7;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v6

    iget-object v7, v1, Lr4/z5;->c:[Lr4/vu3;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_5e

    iget-object v6, v11, Lr4/y4;->a:[Lr4/g7;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lr4/g7;->t()V

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_36

    :cond_5f
    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-boolean v3, v1, Lr4/o6;->g:Z

    if-nez v3, :cond_61

    iget-wide v6, v1, Lr4/o6;->r:J

    const-wide/32 v8, 0x7a120

    cmp-long v1, v6, v8

    if-gez v1, :cond_61

    invoke-virtual/range {p0 .. p0}, Lr4/y4;->y()Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_37

    :cond_60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    :goto_37
    iget-boolean v1, v11, Lr4/y4;->Q:Z

    iget-object v3, v11, Lr4/y4;->F:Lr4/o6;

    iget-boolean v6, v3, Lr4/o6;->o:Z

    if-eq v1, v6, :cond_62

    invoke-virtual {v3, v1}, Lr4/o6;->i(Z)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    :cond_62
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->H()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget v1, v1, Lr4/o6;->e:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_64

    :cond_63
    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget v1, v1, Lr4/o6;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    :cond_64
    iget-boolean v1, v11, Lr4/y4;->Q:Z

    if-eqz v1, :cond_65

    iget-boolean v1, v11, Lr4/y4;->P:Z

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    const/16 v18, 0x0

    goto :goto_38

    :cond_65
    const-wide/16 v1, 0xa

    invoke-virtual {v11, v4, v5, v1, v2}, Lr4/y4;->f(JJ)V

    const/4 v1, 0x1

    const/16 v18, 0x1

    :goto_38
    xor-int/lit8 v2, v18, 0x1

    goto :goto_3a

    :cond_66
    iget v2, v11, Lr4/y4;->R:I

    if-eqz v2, :cond_67

    const/4 v2, 0x4

    if-eq v1, v2, :cond_67

    const-wide/16 v1, 0x3e8

    invoke-virtual {v11, v4, v5, v1, v2}, Lr4/y4;->f(JJ)V

    goto :goto_39

    :cond_67
    iget-object v1, v11, Lr4/y4;->s:Lr4/xa;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lr4/xa;->Y(I)V

    :goto_39
    const/4 v2, 0x0

    :goto_3a
    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-boolean v3, v1, Lr4/o6;->p:Z

    if-eq v3, v2, :cond_68

    new-instance v3, Lr4/o6;

    iget-object v4, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v5, v1, Lr4/o6;->b:Lr4/ft3;

    iget-wide v6, v1, Lr4/o6;->c:J

    iget-wide v8, v1, Lr4/o6;->d:J

    iget v10, v1, Lr4/o6;->e:I

    iget-object v12, v1, Lr4/o6;->f:Lr4/o3;

    iget-boolean v13, v1, Lr4/o6;->g:Z

    iget-object v14, v1, Lr4/o6;->h:Lr4/j44;

    iget-object v15, v1, Lr4/o6;->i:Lr4/cw3;

    move/from16 v16, v2

    iget-object v2, v1, Lr4/o6;->j:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v1, Lr4/o6;->k:Lr4/ft3;

    move-object/from16 v19, v2

    iget-boolean v2, v1, Lr4/o6;->l:Z

    move/from16 v20, v2

    iget v2, v1, Lr4/o6;->m:I

    move/from16 v36, v2

    iget-object v2, v1, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    iget-wide v14, v1, Lr4/o6;->q:J

    move-wide/from16 v38, v14

    iget-wide v14, v1, Lr4/o6;->r:J

    move-wide/from16 v40, v14

    iget-wide v14, v1, Lr4/o6;->s:J

    iget-boolean v1, v1, Lr4/o6;->o:Z

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move-object/from16 v29, v12

    move/from16 v30, v13

    move-object/from16 v33, v17

    move-object/from16 v34, v19

    move/from16 v35, v20

    move-object/from16 v37, v2

    move-wide/from16 v42, v14

    move/from16 v44, v1

    move/from16 v45, v16

    invoke-direct/range {v21 .. v45}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    iput-object v3, v11, Lr4/y4;->F:Lr4/o6;

    :cond_68
    const/4 v1, 0x0

    iput-boolean v1, v11, Lr4/y4;->P:Z

    invoke-static {}, Lr4/gc;->b()V

    goto/16 :goto_41

    :cond_69
    :goto_3b
    iget-object v1, v11, Lr4/y4;->s:Lr4/xa;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lr4/xa;->Y(I)V

    goto/16 :goto_41

    :pswitch_18
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6a

    const/4 v2, 0x1

    goto :goto_3c

    :cond_6a
    const/4 v2, 0x0

    :goto_3c
    iget v1, v1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v1, v3, v3}, Lr4/y4;->f0(ZIZI)V

    goto/16 :goto_41

    :pswitch_19
    const/4 v2, 0x4

    iget-object v1, v11, Lr4/y4;->G:Lr4/v4;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lr4/v4;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v1, v1, v3}, Lr4/y4;->n(ZZZZ)V

    iget-object v1, v11, Lr4/y4;->q:Lr4/h5;

    invoke-interface {v1}, Lr4/h5;->zza()V

    iget-object v1, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_6b

    const/4 v9, 0x2

    goto :goto_3d

    :cond_6b
    const/4 v9, 0x4

    :goto_3d
    invoke-virtual {v11, v9}, Lr4/y4;->d0(I)V

    iget-object v1, v11, Lr4/y4;->D:Lr4/j6;

    iget-object v2, v11, Lr4/y4;->r:Lr4/kw3;

    invoke-virtual {v1, v2}, Lr4/j6;->e(Lr4/ho;)V

    iget-object v1, v11, Lr4/y4;->s:Lr4/xa;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lr4/xa;->C(I)Z
    :try_end_9
    .catch Lr4/o3; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lr4/mm2; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lr4/l6; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lr4/p9; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_41

    :catch_0
    move-exception v0

    move-object v1, v0

    instance-of v2, v1, Ljava/lang/IllegalStateException;

    const/16 v3, 0x3ec

    if-nez v2, :cond_6d

    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_6c

    goto :goto_3e

    :cond_6c
    const/16 v12, 0x3e8

    goto :goto_3f

    :cond_6d
    :goto_3e
    const/16 v12, 0x3ec

    :goto_3f
    invoke-static {v1, v12}, Lr4/o3;->c(Ljava/lang/RuntimeException;I)Lr4/o3;

    move-result-object v1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    invoke-static {v2, v3, v1}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v11, v3, v2}, Lr4/y4;->m(ZZ)V

    iget-object v2, v11, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v2, v1}, Lr4/o6;->f(Lr4/o3;)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    goto :goto_41

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x7d0

    invoke-virtual {v11, v1, v2}, Lr4/y4;->b0(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_2
    move-exception v0

    move-object v1, v0

    iget v2, v1, Lr4/p9;->a:I

    invoke-virtual {v11, v1, v2}, Lr4/y4;->b0(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_3
    move-exception v0

    move-object v1, v0

    iget v2, v1, Lr4/l6;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6f

    iget-boolean v2, v1, Lr4/l6;->a:Z

    if-eq v3, v2, :cond_6e

    const/16 v12, 0xbbb

    goto :goto_40

    :cond_6e
    const/16 v12, 0xbb9

    goto :goto_40

    :cond_6f
    const/16 v12, 0x3e8

    :goto_40
    invoke-virtual {v11, v1, v12}, Lr4/y4;->b0(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_4
    move-exception v0

    move-object v1, v0

    iget v2, v1, Lr4/mm2;->a:I

    invoke-virtual {v11, v1, v2}, Lr4/y4;->b0(Ljava/io/IOException;I)V

    :cond_70
    :goto_41
    const/4 v3, 0x1

    goto :goto_42

    :catch_5
    move-exception v0

    move-object v1, v0

    iget v2, v1, Lr4/o3;->k:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_71

    iget-object v2, v11, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->l()Lr4/z5;

    move-result-object v2

    if-eqz v2, :cond_71

    iget-object v2, v2, Lr4/z5;->f:Lr4/a6;

    iget-object v2, v2, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {v1, v2}, Lr4/o3;->d(Lr4/f04;)Lr4/o3;

    move-result-object v1

    :cond_71
    iget-boolean v2, v1, Lr4/o3;->u:Z

    if-eqz v2, :cond_72

    iget-object v2, v11, Lr4/y4;->W:Lr4/o3;

    if-nez v2, :cond_72

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Recoverable renderer error"

    invoke-static {v2, v3, v1}, Lr4/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, v11, Lr4/y4;->W:Lr4/o3;

    iget-object v2, v11, Lr4/y4;->s:Lr4/xa;

    const/16 v3, 0x19

    invoke-interface {v2, v3, v1}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object v1

    invoke-interface {v2, v1}, Lr4/xa;->e(Lr4/wa;)Z

    goto :goto_41

    :cond_72
    iget-object v2, v11, Lr4/y4;->W:Lr4/o3;

    if-eqz v2, :cond_73

    invoke-static {v2, v1}, Lr4/rk3;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v1, v11, Lr4/y4;->W:Lr4/o3;

    :cond_73
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    invoke-static {v2, v3, v1}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v11, v3, v2}, Lr4/y4;->m(ZZ)V

    iget-object v2, v11, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v2, v1}, Lr4/o6;->f(Lr4/o3;)Lr4/o6;

    move-result-object v1

    iput-object v1, v11, Lr4/y4;->F:Lr4/o6;

    :goto_42
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->e0()V

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lr4/ft3;JZZ)J
    .locals 5

    invoke-virtual {p0}, Lr4/y4;->i0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/y4;->K:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lr4/y4;->F:Lr4/o6;

    iget p5, p5, Lr4/o6;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lr4/y4;->d0(I)V

    :cond_1
    iget-object p5, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p5}, Lr4/c6;->k()Lr4/z5;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lr4/z5;->f:Lr4/a6;

    iget-object v3, v3, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {p1, v3}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lr4/z5;->a()J

    move-result-wide p4

    add-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lr4/y4;->a:[Lr4/g7;

    const/4 p4, 0x0

    :goto_2
    if-ge p4, v1, :cond_5

    aget-object p5, p1, p4

    invoke-virtual {p0, p5}, Lr4/y4;->q(Lr4/g7;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p1}, Lr4/c6;->k()Lr4/z5;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p1}, Lr4/c6;->n()Lr4/z5;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p1, v2}, Lr4/c6;->o(Lr4/z5;)Z

    invoke-virtual {v2, v3, v4}, Lr4/z5;->b(J)V

    invoke-virtual {p0}, Lr4/y4;->B()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p1, v2}, Lr4/c6;->o(Lr4/z5;)Z

    iget-boolean p1, v2, Lr4/z5;->d:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lr4/z5;->f:Lr4/a6;

    invoke-virtual {p1, p2, p3}, Lr4/a6;->a(J)Lr4/a6;

    move-result-object p1

    iput-object p1, v2, Lr4/z5;->f:Lr4/a6;

    goto :goto_4

    :cond_8
    iget-boolean p1, v2, Lr4/z5;->e:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lr4/z5;->a:Lr4/et3;

    invoke-interface {p1, p2, p3}, Lr4/et3;->p(J)J

    move-result-wide p2

    iget-object p1, v2, Lr4/z5;->a:Lr4/et3;

    iget-wide p4, p0, Lr4/y4;->x:J

    sub-long p4, p2, p4

    invoke-interface {p1, p4, p5, v0}, Lr4/et3;->q(JZ)V

    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, Lr4/y4;->l(J)V

    invoke-virtual {p0}, Lr4/y4;->x()V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p1}, Lr4/c6;->p()V

    invoke-virtual {p0, p2, p3}, Lr4/y4;->l(J)V

    :goto_5
    invoke-virtual {p0, v0}, Lr4/y4;->D(Z)V

    iget-object p1, p0, Lr4/y4;->s:Lr4/xa;

    invoke-interface {p1, v1}, Lr4/xa;->C(I)Z

    return-wide p2
.end method

.method public final i0()V
    .locals 4

    iget-object v0, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v0}, Lr4/k3;->b()V

    iget-object v0, p0, Lr4/y4;->a:[Lr4/g7;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lr4/y4;->M(Lr4/g7;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bridge synthetic j(Lr4/xu3;)V
    .locals 2

    check-cast p1, Lr4/et3;

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lr4/xa;->c(ILjava/lang/Object;)Lr4/wa;

    move-result-object p1

    invoke-interface {p1}, Lr4/wa;->zza()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lr4/xa;->C(I)Z

    return-void
.end method

.method public final l(J)V
    .locals 4

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->k()Lr4/z5;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr4/z5;->a()J

    move-result-wide v0

    add-long/2addr p1, v0

    :goto_0
    iput-wide p1, p0, Lr4/y4;->T:J

    iget-object v0, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v0, p1, p2}, Lr4/k3;->d(J)V

    iget-object p1, p0, Lr4/y4;->a:[Lr4/g7;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-static {v1}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lr4/y4;->T:J

    invoke-interface {v1, v2, v3}, Lr4/g7;->c0(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {p1}, Lr4/c6;->k()Lr4/z5;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v0

    iget-object v0, v0, Lr4/cw3;->d:[Lr4/hv3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lr4/z5;->o()Lr4/z5;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final m(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lr4/y4;->O:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Lr4/y4;->n(ZZZZ)V

    iget-object p1, p0, Lr4/y4;->G:Lr4/v4;

    invoke-virtual {p1, p2}, Lr4/v4;->b(I)V

    iget-object p1, p0, Lr4/y4;->q:Lr4/h5;

    invoke-interface {p1}, Lr4/h5;->a()V

    invoke-virtual {p0, v1}, Lr4/y4;->d0(I)V

    return-void
.end method

.method public final n(ZZZZ)V
    .locals 30

    move-object/from16 v1, p0

    iget-object v0, v1, Lr4/y4;->s:Lr4/xa;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lr4/xa;->Y(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Lr4/y4;->W:Lr4/o3;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lr4/y4;->K:Z

    iget-object v0, v1, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v0}, Lr4/k3;->b()V

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lr4/y4;->T:J

    iget-object v5, v1, Lr4/y4;->a:[Lr4/g7;

    const/4 v6, 0x0

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v2, :cond_0

    aget-object v0, v5, v6

    :try_start_0
    invoke-virtual {v1, v0}, Lr4/y4;->q(Lr4/g7;)V
    :try_end_0
    .catch Lr4/o3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v5, v1, Lr4/y4;->a:[Lr4/g7;

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_2

    aget-object v0, v5, v6

    iget-object v8, v1, Lr4/y4;->b:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v0}, Lr4/g7;->R()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    invoke-static {v7, v0, v8}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    iput v4, v1, Lr4/y4;->R:I

    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    iget-object v2, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v5, v0, Lr4/o6;->s:J

    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v0}, Lr4/f04;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    iget-object v7, v1, Lr4/y4;->w:Lr4/b8;

    invoke-static {v0, v7}, Lr4/y4;->I(Lr4/o6;Lr4/b8;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    iget-wide v7, v0, Lr4/o6;->s:J

    goto :goto_6

    :cond_4
    :goto_5
    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    iget-wide v7, v0, Lr4/o6;->c:J

    :goto_6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_6

    iput-object v3, v1, Lr4/y4;->S:Lr4/x4;

    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v1, v0}, Lr4/y4;->o(Lr4/e8;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lr4/ft3;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v2, v0}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_8

    :cond_5
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_7

    :cond_6
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v7

    :goto_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, v1, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->p()V

    iput-boolean v4, v1, Lr4/y4;->L:Z

    new-instance v2, Lr4/o6;

    iget-object v4, v1, Lr4/y4;->F:Lr4/o6;

    iget-object v6, v4, Lr4/o6;->a:Lr4/e8;

    iget v12, v4, Lr4/o6;->e:I

    if-eqz p4, :cond_7

    goto :goto_9

    :cond_7
    iget-object v3, v4, Lr4/o6;->f:Lr4/o3;

    :goto_9
    move-object v13, v3

    if-eqz v0, :cond_8

    sget-object v3, Lr4/j44;->d:Lr4/j44;

    goto :goto_a

    :cond_8
    iget-object v3, v4, Lr4/o6;->h:Lr4/j44;

    :goto_a
    move-object v15, v3

    if-eqz v0, :cond_9

    iget-object v3, v1, Lr4/y4;->p:Lr4/cw3;

    goto :goto_b

    :cond_9
    iget-object v3, v4, Lr4/o6;->i:Lr4/cw3;

    :goto_b
    move-object/from16 v16, v3

    if-eqz v0, :cond_a

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, v4, Lr4/o6;->j:Ljava/util/List;

    :goto_c
    move-object/from16 v17, v0

    iget-object v0, v1, Lr4/y4;->F:Lr4/o6;

    const/4 v14, 0x0

    iget-boolean v3, v0, Lr4/o6;->l:Z

    move/from16 v19, v3

    iget v3, v0, Lr4/o6;->m:I

    move/from16 v20, v3

    iget-object v0, v0, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    iget-boolean v0, v1, Lr4/y4;->Q:Z

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object v5, v2

    move-object/from16 v7, v18

    move-wide/from16 v10, v26

    move-wide/from16 v22, v26

    invoke-direct/range {v5 .. v29}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    iput-object v2, v1, Lr4/y4;->F:Lr4/o6;

    if-eqz p3, :cond_b

    iget-object v0, v1, Lr4/y4;->D:Lr4/j6;

    invoke-virtual {v0}, Lr4/j6;->g()V

    :cond_b
    return-void
.end method

.method public final o(Lr4/e8;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/e8;",
            ")",
            "Landroid/util/Pair<",
            "Lr4/ft3;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/e8;->k()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lr4/o6;->b()Lr4/ft3;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lr4/y4;->N:Z

    invoke-virtual {p1, v0}, Lr4/e8;->e(Z)I

    move-result v6

    iget-object v4, p0, Lr4/y4;->v:Lr4/d8;

    iget-object v5, p0, Lr4/y4;->w:Lr4/b8;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lr4/y4;->C:Lr4/c6;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v1, v2}, Lr4/c6;->s(Lr4/e8;Ljava/lang/Object;J)Lr4/ft3;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lr4/f04;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v4, p0, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {p1, v0, v4}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget p1, v3, Lr4/f04;->c:I

    iget-object v0, p0, Lr4/y4;->w:Lr4/b8;

    iget v4, v3, Lr4/f04;->b:I

    invoke-virtual {v0, v4}, Lr4/b8;->c(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {p1}, Lr4/b8;->i()J

    goto :goto_0

    :cond_1
    move-wide v1, v4

    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lr4/e8;Lr4/e8;)V
    .locals 0

    invoke-virtual {p1}, Lr4/e8;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lr4/e8;->k()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    iget-object p1, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_2
    iget-object p2, p0, Lr4/y4;->z:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/u4;

    iget-object p1, p1, Lr4/u4;->a:Ljava/lang/Object;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, p2}, Lr4/e3;->b(J)J

    const/4 p1, 0x0

    throw p1
.end method

.method public final q(Lr4/g7;)V
    .locals 1

    invoke-static {p1}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v0, p1}, Lr4/k3;->f(Lr4/g7;)V

    invoke-static {p1}, Lr4/y4;->M(Lr4/g7;)V

    invoke-interface {p1}, Lr4/g7;->b0()V

    iget p1, p0, Lr4/y4;->R:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/y4;->R:I

    return-void
.end method

.method public final r()Z
    .locals 7

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->k()Lr4/z5;

    move-result-object v0

    iget-object v1, v0, Lr4/z5;->f:Lr4/a6;

    iget-wide v1, v1, Lr4/a6;->e:J

    iget-boolean v0, v0, Lr4/z5;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/y4;->F:Lr4/o6;

    iget-wide v5, v0, Lr4/o6;->s:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lr4/y4;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3
.end method

.method public final s(Lr4/e8;Z)V
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Lr4/y4;->F:Lr4/o6;

    iget-object v8, v11, Lr4/y4;->S:Lr4/x4;

    iget-object v9, v11, Lr4/y4;->C:Lr4/c6;

    iget v4, v11, Lr4/y4;->M:I

    iget-boolean v10, v11, Lr4/y4;->N:Z

    iget-object v13, v11, Lr4/y4;->v:Lr4/d8;

    iget-object v14, v11, Lr4/y4;->w:Lr4/b8;

    invoke-virtual/range {p1 .. p1}, Lr4/e8;->k()Z

    move-result v1

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lr4/o6;->b()Lr4/ft3;

    move-result-object v0

    move-object v8, v0

    move-object v15, v11

    move-wide/from16 v13, v16

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_11

    :cond_0
    iget-object v1, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v15, v1, Lr4/f04;->a:Ljava/lang/Object;

    invoke-static {v0, v14}, Lr4/y4;->I(Lr4/o6;Lr4/b8;)Z

    move-result v19

    iget-object v2, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v2}, Lr4/f04;->b()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v19, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, v0, Lr4/o6;->s:J

    goto :goto_1

    :cond_2
    :goto_0
    iget-wide v5, v0, Lr4/o6;->c:J

    :goto_1
    move-wide/from16 v23, v5

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    move-object v6, v1

    move-object/from16 v1, p1

    move-object v2, v8

    const/4 v11, 0x1

    move v3, v5

    const/4 v7, -0x1

    move v5, v10

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v21, v9

    const/4 v9, -0x1

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lr4/y4;->J(Lr4/e8;Lr4/x4;ZIZLr4/d8;Lr4/b8;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v12, v10}, Lr4/e8;->e(Z)I

    move-result v1

    move v5, v1

    move-wide/from16 v1, v23

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    iget-wide v2, v8, Lr4/x4;->c:J

    cmp-long v4, v2, v16

    if-nez v4, :cond_4

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v1, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v1

    iget v5, v1, Lr4/b8;->c:I

    move-wide/from16 v1, v23

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v5, -0x1

    :goto_2
    iget v4, v0, Lr4/o6;->e:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v6, v3

    const/4 v3, 0x0

    :goto_4
    move v10, v4

    move v4, v5

    move/from16 v22, v6

    const-wide/16 v7, 0x0

    :goto_5
    move-object/from16 v27, v15

    move v15, v3

    move-object/from16 v3, v27

    goto/16 :goto_a

    :cond_6
    move-object v11, v1

    move-object/from16 v21, v9

    const/4 v9, -0x1

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12, v10}, Lr4/e8;->e(Z)I

    move-result v1

    :goto_6
    move v4, v1

    move-object v3, v15

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    :goto_7
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v12, v15}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v9, :cond_9

    iget-object v6, v0, Lr4/o6;->a:Lr4/e8;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object v5, v15

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Lr4/y4;->X(Lr4/d8;Lr4/b8;IZLjava/lang/Object;Lr4/e8;Lr4/e8;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {v12, v10}, Lr4/e8;->e(Z)I

    move-result v1

    const/4 v3, 0x1

    goto :goto_8

    :cond_8
    invoke-virtual {v12, v1, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v1

    iget v1, v1, Lr4/b8;->c:I

    const/4 v3, 0x0

    :goto_8
    move v4, v1

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    goto :goto_5

    :cond_9
    cmp-long v1, v23, v16

    if-nez v1, :cond_a

    invoke-virtual {v12, v15, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v1

    iget v1, v1, Lr4/b8;->c:I

    goto :goto_6

    :cond_a
    if-eqz v19, :cond_c

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v2, v11, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget v2, v14, Lr4/b8;->c:I

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v2, v13, v7, v8}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v1

    iget v1, v1, Lr4/d8;->m:I

    iget-object v2, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v11, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    invoke-virtual {v12, v15, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v1

    iget v4, v1, Lr4/b8;->c:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v5, v23

    invoke-virtual/range {v1 .. v6}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_9

    :cond_b
    move-wide/from16 v1, v23

    :goto_9
    move-object v3, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x1

    goto :goto_a

    :cond_c
    const-wide/16 v7, 0x0

    move-object v3, v15

    move-wide/from16 v1, v23

    const/4 v4, -0x1

    goto/16 :goto_7

    :goto_a
    if-eq v4, v9, :cond_d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    invoke-virtual/range {v1 .. v6}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v4, v1

    move-wide/from16 v1, v16

    goto :goto_b

    :cond_d
    move-wide v4, v1

    :goto_b
    move-object/from16 v6, v21

    invoke-virtual {v6, v12, v3, v4, v5}, Lr4/c6;->s(Lr4/e8;Ljava/lang/Object;J)Lr4/ft3;

    move-result-object v6

    iget v13, v6, Lr4/f04;->e:I

    if-eq v13, v9, :cond_f

    iget v13, v11, Lr4/f04;->e:I

    if-eq v13, v9, :cond_e

    iget v7, v6, Lr4/f04;->b:I

    if-lt v7, v13, :cond_e

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v7, 0x1

    :goto_d
    iget-object v8, v11, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v11}, Lr4/f04;->b()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v6}, Lr4/f04;->b()Z

    move-result v13

    if-nez v13, :cond_10

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v12, v3, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    if-eqz v8, :cond_12

    if-nez v19, :cond_12

    cmp-long v3, v23, v1

    if-nez v3, :cond_12

    invoke-virtual {v6}, Lr4/f04;->b()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v6, Lr4/f04;->b:I

    invoke-virtual {v14, v3}, Lr4/b8;->j(I)Z

    :cond_11
    invoke-virtual {v11}, Lr4/f04;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v11, Lr4/f04;->b:I

    invoke-virtual {v14, v3}, Lr4/b8;->j(I)Z

    :cond_12
    const/4 v3, 0x1

    if-eq v3, v7, :cond_13

    goto :goto_f

    :cond_13
    move-object v6, v11

    :goto_f
    invoke-virtual {v6}, Lr4/f04;->b()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v6, v11}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-wide v4, v0, Lr4/o6;->s:J

    goto :goto_10

    :cond_14
    iget-object v0, v6, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget v0, v6, Lr4/f04;->c:I

    iget v4, v6, Lr4/f04;->b:I

    invoke-virtual {v14, v4}, Lr4/b8;->c(I)I

    move-result v4

    if-ne v0, v4, :cond_15

    invoke-virtual {v14}, Lr4/b8;->i()J

    :cond_15
    const-wide/16 v4, 0x0

    :cond_16
    :goto_10
    move-wide v13, v1

    move-object v8, v6

    move v2, v10

    move v3, v15

    move/from16 v7, v22

    move-object/from16 v15, p0

    move-wide v10, v4

    const/4 v5, 0x1

    :goto_11
    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v0, v8}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget-wide v0, v0, Lr4/o6;->s:J

    cmp-long v4, v10, v0

    if-eqz v4, :cond_17

    goto :goto_12

    :cond_17
    const/16 v19, 0x0

    goto :goto_13

    :cond_18
    :goto_12
    const/16 v19, 0x1

    :goto_13
    const/16 v20, 0x3

    if-eqz v3, :cond_1a

    :try_start_0
    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget v0, v0, Lr4/o6;->e:I

    if-eq v0, v5, :cond_19

    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Lr4/y4;->d0(I)V

    goto :goto_14

    :cond_19
    const/4 v3, 0x4

    :goto_14
    const/4 v4, 0x0

    invoke-virtual {v15, v4, v4, v4, v5}, Lr4/y4;->n(ZZZZ)V

    goto :goto_16

    :catchall_0
    move-exception v0

    move-wide/from16 v25, v13

    :goto_15
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1f

    :cond_1a
    const/4 v3, 0x4

    const/4 v4, 0x0

    :goto_16
    if-nez v19, :cond_21

    iget-object v1, v15, Lr4/y4;->C:Lr4/c6;

    iget-wide v3, v15, Lr4/y4;->T:J

    invoke-virtual {v1}, Lr4/c6;->l()Lr4/z5;

    move-result-object v0

    const-wide/high16 v21, -0x8000000000000000L

    if-nez v0, :cond_1b

    move-wide/from16 v25, v13

    const-wide/16 v5, 0x0

    goto :goto_19

    :cond_1b
    invoke-virtual {v0}, Lr4/z5;->a()J

    move-result-wide v23

    iget-boolean v2, v0, Lr4/z5;->d:Z

    if-nez v2, :cond_1c

    move-wide/from16 v25, v13

    move-wide/from16 v5, v23

    goto :goto_19

    :cond_1c
    move-wide/from16 v5, v23

    const/4 v2, 0x0

    :goto_17
    iget-object v9, v15, Lr4/y4;->a:[Lr4/g7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v25, v13

    const/4 v13, 0x2

    if-ge v2, v13, :cond_20

    :try_start_1
    aget-object v9, v9, v2

    invoke-static {v9}, Lr4/y4;->K(Lr4/g7;)Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v15, Lr4/y4;->a:[Lr4/g7;

    aget-object v9, v9, v2

    invoke-interface {v9}, Lr4/g7;->Z()Lr4/vu3;

    move-result-object v9

    iget-object v13, v0, Lr4/z5;->c:[Lr4/vu3;

    aget-object v13, v13, v2

    if-eq v9, v13, :cond_1d

    goto :goto_18

    :cond_1d
    iget-object v9, v15, Lr4/y4;->a:[Lr4/g7;

    aget-object v9, v9, v2

    invoke-interface {v9}, Lr4/g7;->W()J

    move-result-wide v13

    cmp-long v9, v13, v21

    if-nez v9, :cond_1e

    move-wide/from16 v5, v21

    goto :goto_19

    :cond_1e
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1f
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v13, v25

    goto :goto_17

    :catchall_1
    move-exception v0

    goto :goto_15

    :cond_20
    :goto_19
    move-object/from16 v2, p1

    const/4 v9, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x0

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lr4/c6;->q(Lr4/e8;JJ)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v15, v13}, Lr4/y4;->g0(Z)V

    goto :goto_1b

    :cond_21
    move-wide/from16 v25, v13

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lr4/e8;->k()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v15, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->k()Lr4/z5;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_23

    iget-object v1, v0, Lr4/z5;->f:Lr4/a6;

    iget-object v1, v1, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {v1, v8}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v15, Lr4/y4;->C:Lr4/c6;

    iget-object v3, v0, Lr4/z5;->f:Lr4/a6;

    invoke-virtual {v1, v12, v3}, Lr4/c6;->r(Lr4/e8;Lr4/a6;)Lr4/a6;

    move-result-object v1

    iput-object v1, v0, Lr4/z5;->f:Lr4/a6;

    invoke-virtual {v0}, Lr4/z5;->r()V

    :cond_22
    invoke-virtual {v0}, Lr4/z5;->o()Lr4/z5;

    move-result-object v0

    goto :goto_1a

    :cond_23
    invoke-virtual {v15, v8, v10, v11, v2}, Lr4/y4;->g(Lr4/ft3;JZ)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v10, v0

    :cond_24
    :goto_1b
    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget-object v4, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v5, v0, Lr4/o6;->b:Lr4/ft3;

    if-eq v9, v7, :cond_25

    move-wide/from16 v6, v16

    goto :goto_1c

    :cond_25
    move-wide v6, v10

    :goto_1c
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lr4/y4;->t(Lr4/e8;Lr4/ft3;Lr4/e8;Lr4/ft3;J)V

    if-nez v19, :cond_26

    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget-wide v0, v0, Lr4/o6;->c:J

    cmp-long v2, v25, v0

    if-eqz v2, :cond_29

    :cond_26
    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v1, v1, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    if-eqz v19, :cond_27

    if-eqz p2, :cond_27

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v15, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {v0, v1, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget-boolean v0, v0, Lr4/b8;->f:Z

    if-nez v0, :cond_27

    goto :goto_1d

    :cond_27
    const/4 v9, 0x0

    :goto_1d
    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget-wide v5, v0, Lr4/o6;->d:J

    invoke-virtual {v12, v1}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    const/16 v18, 0x4

    goto :goto_1e

    :cond_28
    const/16 v18, 0x3

    :goto_1e
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v0

    iput-object v0, v15, Lr4/y4;->F:Lr4/o6;

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->u()V

    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v15, v12, v0}, Lr4/y4;->p(Lr4/e8;Lr4/e8;)V

    iget-object v0, v15, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v0, v12}, Lr4/o6;->d(Lr4/e8;)Lr4/o6;

    move-result-object v0

    iput-object v0, v15, Lr4/y4;->F:Lr4/o6;

    invoke-virtual/range {p1 .. p1}, Lr4/e8;->k()Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object v14, v15, Lr4/y4;->S:Lr4/x4;

    :cond_2a
    invoke-virtual {v15, v13}, Lr4/y4;->D(Z)V

    return-void

    :catchall_2
    move-exception v0

    :goto_1f
    iget-object v1, v15, Lr4/y4;->F:Lr4/o6;

    iget-object v4, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v5, v1, Lr4/o6;->b:Lr4/ft3;

    if-eq v9, v7, :cond_2b

    move-wide/from16 v6, v16

    goto :goto_20

    :cond_2b
    move-wide v6, v10

    :goto_20
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lr4/y4;->t(Lr4/e8;Lr4/ft3;Lr4/e8;Lr4/ft3;J)V

    if-nez v19, :cond_2c

    iget-object v1, v15, Lr4/y4;->F:Lr4/o6;

    iget-wide v1, v1, Lr4/o6;->c:J

    cmp-long v3, v25, v1

    if-eqz v3, :cond_2f

    :cond_2c
    iget-object v1, v15, Lr4/y4;->F:Lr4/o6;

    iget-object v2, v1, Lr4/o6;->b:Lr4/ft3;

    iget-object v2, v2, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v1, v1, Lr4/o6;->a:Lr4/e8;

    if-eqz v19, :cond_2d

    if-eqz p2, :cond_2d

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v15, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {v1, v2, v3}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v1

    iget-boolean v1, v1, Lr4/b8;->f:Z

    if-nez v1, :cond_2d

    goto :goto_21

    :cond_2d
    const/4 v9, 0x0

    :goto_21
    iget-object v1, v15, Lr4/y4;->F:Lr4/o6;

    iget-wide v5, v1, Lr4/o6;->d:J

    invoke-virtual {v12, v2}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    const/16 v18, 0x4

    goto :goto_22

    :cond_2e
    const/16 v18, 0x3

    :goto_22
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lr4/y4;->A(Lr4/ft3;JJJZI)Lr4/o6;

    move-result-object v1

    iput-object v1, v15, Lr4/y4;->F:Lr4/o6;

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lr4/y4;->u()V

    iget-object v1, v15, Lr4/y4;->F:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v15, v12, v1}, Lr4/y4;->p(Lr4/e8;Lr4/e8;)V

    iget-object v1, v15, Lr4/y4;->F:Lr4/o6;

    invoke-virtual {v1, v12}, Lr4/o6;->d(Lr4/e8;)Lr4/o6;

    move-result-object v1

    iput-object v1, v15, Lr4/y4;->F:Lr4/o6;

    invoke-virtual/range {p1 .. p1}, Lr4/e8;->k()Z

    move-result v1

    if-nez v1, :cond_30

    iput-object v14, v15, Lr4/y4;->S:Lr4/x4;

    :cond_30
    invoke-virtual {v15, v13}, Lr4/y4;->D(Z)V

    goto :goto_24

    :goto_23
    throw v0

    :goto_24
    goto :goto_23
.end method

.method public final t(Lr4/e8;Lr4/ft3;Lr4/e8;Lr4/ft3;J)V
    .locals 5

    invoke-virtual {p1}, Lr4/e8;->k()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lr4/y4;->e(Lr4/e8;Lr4/ft3;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v1, p0, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {p1, v0, v1}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget v0, v0, Lr4/b8;->c:I

    iget-object v1, p0, Lr4/y4;->v:Lr4/d8;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    iget-object v0, p0, Lr4/y4;->X:Lr4/g3;

    iget-object v1, p0, Lr4/y4;->v:Lr4/d8;

    iget-object v1, v1, Lr4/d8;->i:Lr4/r5;

    sget v4, Lr4/lc;->a:I

    invoke-virtual {v0, v1}, Lr4/g3;->a(Lr4/r5;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v0

    if-eqz v4, :cond_1

    iget-object p3, p0, Lr4/y4;->X:Lr4/g3;

    iget-object p2, p2, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p5, p6}, Lr4/y4;->d(Lr4/e8;Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lr4/g3;->b(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lr4/y4;->v:Lr4/d8;

    iget-object p1, p1, Lr4/d8;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Lr4/e8;->k()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p4, Lr4/f04;->a:Ljava/lang/Object;

    iget-object p4, p0, Lr4/y4;->w:Lr4/b8;

    invoke-virtual {p3, p2, p4}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object p2

    iget p2, p2, Lr4/b8;->c:I

    iget-object p4, p0, Lr4/y4;->v:Lr4/d8;

    invoke-virtual {p3, p2, p4, v2, v3}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object p2

    iget-object p2, p2, Lr4/d8;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2, p1}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lr4/y4;->X:Lr4/g3;

    invoke-virtual {p1, v0, v1}, Lr4/g3;->b(J)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {p1}, Lr4/k3;->z()Lr4/q6;

    move-result-object p1

    iget p1, p1, Lr4/q6;->a:F

    iget-object p2, p0, Lr4/y4;->F:Lr4/o6;

    iget-object p2, p2, Lr4/o6;->n:Lr4/q6;

    iget p3, p2, Lr4/q6;->a:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {p1, p2}, Lr4/k3;->c(Lr4/q6;)V

    :cond_5
    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->k()Lr4/z5;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lr4/z5;->f:Lr4/a6;

    iget-boolean v0, v0, Lr4/a6;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr4/y4;->I:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lr4/y4;->J:Z

    return-void
.end method

.method public final v(Lr4/q6;Z)V
    .locals 2

    iget v0, p1, Lr4/q6;->a:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lr4/y4;->w(Lr4/q6;FZZ)V

    return-void
.end method

.method public final w(Lr4/q6;FZZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object v1, v0, Lr4/y4;->G:Lr4/v4;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lr4/v4;->b(I)V

    :cond_0
    iget-object v14, v0, Lr4/y4;->F:Lr4/o6;

    new-instance v13, Lr4/o6;

    move-object v1, v13

    iget-object v2, v14, Lr4/o6;->a:Lr4/e8;

    iget-object v3, v14, Lr4/o6;->b:Lr4/ft3;

    iget-wide v4, v14, Lr4/o6;->c:J

    iget-wide v6, v14, Lr4/o6;->d:J

    iget v8, v14, Lr4/o6;->e:I

    iget-object v9, v14, Lr4/o6;->f:Lr4/o3;

    iget-boolean v10, v14, Lr4/o6;->g:Z

    iget-object v11, v14, Lr4/o6;->h:Lr4/j44;

    iget-object v12, v14, Lr4/o6;->i:Lr4/cw3;

    move-object/from16 p3, v13

    iget-object v13, v14, Lr4/o6;->j:Ljava/util/List;

    move-object/from16 v26, p3

    iget-object v15, v14, Lr4/o6;->k:Lr4/ft3;

    move-object v0, v14

    move-object v14, v15

    iget-boolean v15, v0, Lr4/o6;->l:Z

    move-object/from16 p3, v1

    iget v1, v0, Lr4/o6;->m:I

    move/from16 v16, v1

    move-object/from16 p4, v2

    iget-wide v1, v0, Lr4/o6;->q:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lr4/o6;->r:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lr4/o6;->s:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lr4/o6;->o:Z

    move/from16 v24, v1

    iget-boolean v0, v0, Lr4/o6;->p:Z

    move/from16 v25, v0

    move-object/from16 v17, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v25}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v1, v0, Lr4/y4;->F:Lr4/o6;

    :cond_1
    move-object/from16 v1, p1

    iget v2, v1, Lr4/q6;->a:F

    iget-object v2, v0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v2}, Lr4/c6;->k()Lr4/z5;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lr4/z5;->q()Lr4/cw3;

    move-result-object v4

    iget-object v4, v4, Lr4/cw3;->d:[Lr4/hv3;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lr4/z5;->o()Lr4/z5;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lr4/y4;->a:[Lr4/g7;

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    iget v5, v1, Lr4/q6;->a:F

    move/from16 v6, p2

    invoke-interface {v4, v6, v5}, Lr4/g7;->a0(FF)V

    goto :goto_3

    :cond_4
    move/from16 v6, p2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final x()V
    .locals 9

    invoke-virtual {p0}, Lr4/y4;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->j()Lr4/z5;

    move-result-object v0

    invoke-virtual {v0}, Lr4/z5;->f()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lr4/y4;->F(J)J

    move-result-wide v6

    iget-object v1, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->k()Lr4/z5;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v1, p0, Lr4/y4;->T:J

    invoke-virtual {v0}, Lr4/z5;->a()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lr4/y4;->T:J

    invoke-virtual {v0}, Lr4/z5;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, v0, Lr4/z5;->f:Lr4/a6;

    iget-wide v3, v0, Lr4/a6;->b:J

    :goto_0
    sub-long/2addr v1, v3

    move-wide v4, v1

    iget-object v3, p0, Lr4/y4;->q:Lr4/h5;

    iget-object v0, p0, Lr4/y4;->y:Lr4/k3;

    invoke-virtual {v0}, Lr4/k3;->z()Lr4/q6;

    move-result-object v0

    iget v8, v0, Lr4/q6;->a:F

    invoke-interface/range {v3 .. v8}, Lr4/h5;->g(JJF)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lr4/y4;->L:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->j()Lr4/z5;

    move-result-object v0

    iget-wide v1, p0, Lr4/y4;->T:J

    invoke-virtual {v0, v1, v2}, Lr4/z5;->i(J)V

    :cond_2
    invoke-virtual {p0}, Lr4/y4;->z()V

    return-void
.end method

.method public final y()Z
    .locals 6

    iget-object v0, p0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v0}, Lr4/c6;->j()Lr4/z5;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lr4/z5;->f()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final z()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lr4/y4;->C:Lr4/c6;

    invoke-virtual {v1}, Lr4/c6;->j()Lr4/z5;

    move-result-object v1

    iget-boolean v2, v0, Lr4/y4;->L:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v1}, Lr4/et3;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    iget-object v1, v0, Lr4/y4;->F:Lr4/o6;

    iget-boolean v2, v1, Lr4/o6;->g:Z

    if-eq v14, v2, :cond_2

    new-instance v2, Lr4/o6;

    move-object v5, v2

    iget-object v6, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v7, v1, Lr4/o6;->b:Lr4/ft3;

    iget-wide v8, v1, Lr4/o6;->c:J

    iget-wide v10, v1, Lr4/o6;->d:J

    iget v12, v1, Lr4/o6;->e:I

    iget-object v13, v1, Lr4/o6;->f:Lr4/o3;

    iget-object v15, v1, Lr4/o6;->h:Lr4/j44;

    iget-object v3, v1, Lr4/o6;->i:Lr4/cw3;

    move-object/from16 v16, v3

    iget-object v3, v1, Lr4/o6;->j:Ljava/util/List;

    move-object/from16 v17, v3

    iget-object v3, v1, Lr4/o6;->k:Lr4/ft3;

    move-object/from16 v18, v3

    iget-boolean v3, v1, Lr4/o6;->l:Z

    move/from16 v19, v3

    iget v3, v1, Lr4/o6;->m:I

    move/from16 v20, v3

    iget-object v3, v1, Lr4/o6;->n:Lr4/q6;

    move-object/from16 v21, v3

    iget-wide v3, v1, Lr4/o6;->q:J

    move-wide/from16 v22, v3

    iget-wide v3, v1, Lr4/o6;->r:J

    move-wide/from16 v24, v3

    iget-wide v3, v1, Lr4/o6;->s:J

    move-wide/from16 v26, v3

    iget-boolean v3, v1, Lr4/o6;->o:Z

    move/from16 v28, v3

    iget-boolean v1, v1, Lr4/o6;->p:Z

    move/from16 v29, v1

    invoke-direct/range {v5 .. v29}, Lr4/o6;-><init>(Lr4/e8;Lr4/ft3;JJILr4/o3;ZLr4/j44;Lr4/cw3;Ljava/util/List;Lr4/ft3;ZILr4/q6;JJJZZ)V

    iput-object v2, v0, Lr4/y4;->F:Lr4/o6;

    :cond_2
    return-void
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lr4/y4;->s:Lr4/xa;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lr4/xa;->C(I)Z

    return-void
.end method
