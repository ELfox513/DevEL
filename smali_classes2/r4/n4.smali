.class public final Lr4/n4;
.super Lr4/b3;
.source "SourceFile"


# instance fields
.field public A:Lr4/o6;

.field public B:I

.field public C:J

.field public D:Lr4/yu3;

.field public final b:Lr4/cw3;

.field public final c:Lr4/t6;

.field public final d:[Lr4/g7;

.field public final e:Lr4/aw3;

.field public final f:Lr4/xa;

.field public final g:Lr4/w4;

.field public final h:Lr4/y4;

.field public final i:Lr4/db;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/db<",
            "Lr4/u6;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lr4/p3;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lr4/b8;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/m4;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Z

.field public final n:Lr4/qt3;

.field public final o:Lr4/c41;

.field public final p:Landroid/os/Looper;

.field public final q:Lr4/kw3;

.field public final r:Lr4/ka;

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:Lr4/k7;

.field public x:Lr4/t6;

.field public y:Lr4/y5;

.field public z:Lr4/y5;


# direct methods
.method public constructor <init>([Lr4/g7;Lr4/aw3;Lr4/qt3;Lr4/h5;Lr4/kw3;Lr4/c41;ZLr4/k7;JJLr4/g3;JZLr4/ka;Landroid/os/Looper;Lr4/a7;Lr4/t6;[B)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p17

    move-object/from16 v11, p18

    move-object/from16 v1, p19

    invoke-direct/range {p0 .. p0}, Lr4/b3;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lr4/lc;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1e

    add-int/2addr v5, v7

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Init "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [ExoPlayerLib/2.15.0] ["

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExoPlayerImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    move-object v3, v2

    check-cast v3, [Lr4/g7;

    iput-object v3, v0, Lr4/n4;->d:[Lr4/g7;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p2

    iput-object v3, v0, Lr4/n4;->e:Lr4/aw3;

    move-object/from16 v4, p3

    iput-object v4, v0, Lr4/n4;->n:Lr4/qt3;

    iput-object v6, v0, Lr4/n4;->q:Lr4/kw3;

    iput-object v9, v0, Lr4/n4;->o:Lr4/c41;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lr4/n4;->m:Z

    move-object/from16 v10, p8

    iput-object v10, v0, Lr4/n4;->w:Lr4/k7;

    iput-object v11, v0, Lr4/n4;->p:Landroid/os/Looper;

    iput-object v15, v0, Lr4/n4;->r:Lr4/ka;

    new-instance v7, Lr4/db;

    new-instance v4, Lr4/r3;

    invoke-direct {v4, v1}, Lr4/r3;-><init>(Lr4/a7;)V

    invoke-direct {v7, v11, v15, v4}, Lr4/db;-><init>(Landroid/os/Looper;Lr4/ka;Lr4/bb;)V

    iput-object v7, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v0, Lr4/n4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lr4/n4;->l:Ljava/util/List;

    new-instance v4, Lr4/yu3;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lr4/yu3;-><init>(I)V

    iput-object v4, v0, Lr4/n4;->D:Lr4/yu3;

    new-instance v8, Lr4/cw3;

    move-object v4, v8

    const/4 v12, 0x2

    new-array v13, v12, [Lr4/i7;

    new-array v12, v12, [Lr4/hv3;

    const/4 v14, 0x0

    invoke-direct {v8, v13, v12, v14, v14}, Lr4/cw3;-><init>([Lr4/i7;[Lr4/hv3;Ljava/lang/Object;[B)V

    iput-object v8, v0, Lr4/n4;->b:Lr4/cw3;

    new-instance v12, Lr4/b8;

    invoke-direct {v12}, Lr4/b8;-><init>()V

    iput-object v12, v0, Lr4/n4;->k:Lr4/b8;

    new-instance v12, Lr4/s6;

    invoke-direct {v12}, Lr4/s6;-><init>()V

    const/16 v13, 0xa

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    invoke-virtual {v12, v13}, Lr4/s6;->c([I)Lr4/s6;

    const/16 v13, 0x1c

    invoke-virtual {v12, v13, v5}, Lr4/s6;->b(IZ)Lr4/s6;

    move-object/from16 v5, p20

    invoke-virtual {v12, v5}, Lr4/s6;->d(Lr4/t6;)Lr4/s6;

    invoke-virtual {v12}, Lr4/s6;->e()Lr4/t6;

    move-result-object v5

    iput-object v5, v0, Lr4/n4;->c:Lr4/t6;

    new-instance v12, Lr4/s6;

    invoke-direct {v12}, Lr4/s6;-><init>()V

    invoke-virtual {v12, v5}, Lr4/s6;->d(Lr4/t6;)Lr4/s6;

    const/4 v5, 0x3

    invoke-virtual {v12, v5}, Lr4/s6;->a(I)Lr4/s6;

    const/16 v5, 0x9

    invoke-virtual {v12, v5}, Lr4/s6;->a(I)Lr4/s6;

    invoke-virtual {v12}, Lr4/s6;->e()Lr4/t6;

    move-result-object v5

    iput-object v5, v0, Lr4/n4;->x:Lr4/t6;

    sget-object v5, Lr4/y5;->t:Lr4/y5;

    iput-object v5, v0, Lr4/n4;->y:Lr4/y5;

    iput-object v5, v0, Lr4/n4;->z:Lr4/y5;

    const/4 v5, -0x1

    iput v5, v0, Lr4/n4;->B:I

    invoke-interface {v15, v11, v14}, Lr4/ka;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lr4/xa;

    move-result-object v5

    iput-object v5, v0, Lr4/n4;->f:Lr4/xa;

    new-instance v5, Lr4/c4;

    move-object/from16 v17, v5

    invoke-direct {v5, v0}, Lr4/c4;-><init>(Lr4/n4;)V

    iput-object v5, v0, Lr4/n4;->g:Lr4/w4;

    invoke-static {v8}, Lr4/o6;->a(Lr4/cw3;)Lr4/o6;

    move-result-object v5

    iput-object v5, v0, Lr4/n4;->A:Lr4/o6;

    invoke-virtual {v9, v1, v11}, Lr4/c41;->P(Lr4/a7;Landroid/os/Looper;)V

    invoke-virtual {v7, v9}, Lr4/db;->b(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v9}, Lr4/kw3;->b(Landroid/os/Handler;Lr4/jw3;)V

    new-instance v5, Lr4/y4;

    move-object v1, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x1f4

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v19, v5

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p13

    move-object/from16 v15, p18

    move-object/from16 v16, p17

    invoke-direct/range {v1 .. v18}, Lr4/y4;-><init>([Lr4/g7;Lr4/aw3;Lr4/cw3;Lr4/h5;Lr4/kw3;IZLr4/c41;Lr4/k7;Lr4/g3;JZLandroid/os/Looper;Lr4/ka;Lr4/w4;[B)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lr4/n4;->h:Lr4/y4;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public static final synthetic i(Lr4/o6;Lr4/u6;)V
    .locals 0

    invoke-static {p0}, Lr4/n4;->w(Lr4/o6;)Z

    move-result p0

    invoke-interface {p1, p0}, Lr4/u6;->A0(Z)V

    return-void
.end method

.method public static o(Lr4/o6;)J
    .locals 7

    new-instance v0, Lr4/d8;

    invoke-direct {v0}, Lr4/d8;-><init>()V

    new-instance v1, Lr4/b8;

    invoke-direct {v1}, Lr4/b8;-><init>()V

    iget-object v2, p0, Lr4/o6;->a:Lr4/e8;

    iget-object v3, p0, Lr4/o6;->b:Lr4/ft3;

    iget-object v3, v3, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-wide v2, p0, Lr4/o6;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object p0, p0, Lr4/o6;->a:Lr4/e8;

    iget v1, v1, Lr4/b8;->c:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object p0

    iget-wide v0, p0, Lr4/d8;->k:J

    :cond_0
    return-wide v2
.end method

.method public static w(Lr4/o6;)Z
    .locals 2

    iget v0, p0, Lr4/o6;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lr4/o6;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lr4/o6;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lr4/n4;->p:Landroid/os/Looper;

    return-object v0
.end method

.method public final B(Lr4/u6;)V
    .locals 1

    iget-object v0, p0, Lr4/n4;->i:Lr4/db;

    invoke-virtual {v0, p1}, Lr4/db;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Lr4/p3;)V
    .locals 1

    iget-object v0, p0, Lr4/n4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final D()I
    .locals 1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget v0, v0, Lr4/o6;->e:I

    return v0
.end method

.method public final E()I
    .locals 2

    invoke-virtual {p0}, Lr4/n4;->l()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final F()V
    .locals 13

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget v1, v0, Lr4/o6;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/o6;->f(Lr4/o3;)Lr4/o6;

    move-result-object v0

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lr4/o6;->e(I)Lr4/o6;

    move-result-object v4

    iget v0, p0, Lr4/n4;->s:I

    add-int/2addr v0, v2

    iput v0, p0, Lr4/n4;->s:I

    iget-object v0, p0, Lr4/n4;->h:Lr4/y4;

    invoke-virtual {v0}, Lr4/y4;->R()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Lr4/n4;->n(Lr4/o6;IIZZIJI)V

    return-void
.end method

.method public final G()Lr4/e8;
    .locals 1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    return-object v0
.end method

.method public final H(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/ht3;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/n4;->l()I

    invoke-virtual {p0}, Lr4/n4;->O()J

    iget v0, p0, Lr4/n4;->s:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr4/n4;->s:I

    iget-object v0, p0, Lr4/n4;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/n4;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lr4/n4;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lr4/n4;->D:Lr4/yu3;

    invoke-virtual {v3, v2, v0}, Lr4/yu3;->g(II)Lr4/yu3;

    move-result-object v0

    iput-object v0, p0, Lr4/n4;->D:Lr4/yu3;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lr4/h6;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr4/ht3;

    iget-boolean v7, p0, Lr4/n4;->m:Z

    invoke-direct {v3, v6, v7}, Lr4/h6;-><init>(Lr4/ht3;Z)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lr4/n4;->l:Ljava/util/List;

    new-instance v7, Lr4/m4;

    iget-object v8, v3, Lr4/h6;->b:Ljava/lang/Object;

    iget-object v3, v3, Lr4/h6;->a:Lr4/bt3;

    invoke-virtual {v3}, Lr4/bt3;->F()Lr4/e8;

    move-result-object v3

    invoke-direct {v7, v8, v3}, Lr4/m4;-><init>(Ljava/lang/Object;Lr4/e8;)V

    invoke-interface {v6, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lr4/n4;->D:Lr4/yu3;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lr4/yu3;->f(II)Lr4/yu3;

    move-result-object v0

    iput-object v0, p0, Lr4/n4;->D:Lr4/yu3;

    new-instance v0, Lr4/e7;

    iget-object v3, p0, Lr4/n4;->l:Ljava/util/List;

    iget-object v5, p0, Lr4/n4;->D:Lr4/yu3;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v5, v6}, Lr4/e7;-><init>(Ljava/util/Collection;Lr4/yu3;[B)V

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lr4/e8;->a()I

    move-result v3

    if-ltz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lr4/g5;

    invoke-direct {v1, v0, v7, v5, v6}, Lr4/g5;-><init>(Lr4/e8;IJ)V

    throw v1

    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Lr4/e8;->e(Z)I

    move-result v8

    iget-object v3, p0, Lr4/n4;->A:Lr4/o6;

    invoke-virtual {p0, v0, v8, v5, v6}, Lr4/n4;->s(Lr4/e8;IJ)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {p0, v3, v0, v9}, Lr4/n4;->r(Lr4/o6;Lr4/e8;Landroid/util/Pair;)Lr4/o6;

    move-result-object v3

    iget v9, v3, Lr4/o6;->e:I

    const/4 v10, 0x4

    if-eq v8, v7, :cond_7

    if-eq v9, v1, :cond_7

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lr4/e8;->a()I

    move-result v0

    if-lt v8, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x4

    :cond_7
    :goto_4
    invoke-virtual {v3, v9}, Lr4/o6;->e(I)Lr4/o6;

    move-result-object v9

    iget-object v3, p0, Lr4/n4;->h:Lr4/y4;

    invoke-static {v5, v6}, Lr4/e3;->b(J)J

    move-result-wide v6

    iget-object v0, p0, Lr4/n4;->D:Lr4/yu3;

    move v5, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lr4/y4;->Z(Ljava/util/List;IJLr4/yu3;)V

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v3, v9, Lr4/o6;->b:Lr4/ft3;

    iget-object v3, v3, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual {p0, v9}, Lr4/n4;->m(Lr4/o6;)J

    move-result-wide v7

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v9

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lr4/n4;->n(Lr4/o6;IIZZIJI)V

    return-void
.end method

.method public final I(ZII)V
    .locals 12

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-boolean v1, v0, Lr4/o6;->l:Z

    if-ne v1, p1, :cond_0

    iget v1, v0, Lr4/o6;->m:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lr4/n4;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr4/n4;->s:I

    invoke-virtual {v0, p1, p2}, Lr4/o6;->h(ZI)Lr4/o6;

    move-result-object v3

    iget-object v0, p0, Lr4/n4;->h:Lr4/y4;

    invoke-virtual {v0, p1, p2}, Lr4/y4;->S(ZI)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    move-object v2, p0

    move v5, p3

    invoke-virtual/range {v2 .. v11}, Lr4/n4;->n(Lr4/o6;IIZZIJI)V

    return-void
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-boolean v0, v0, Lr4/o6;->l:Z

    return v0
.end method

.method public final K(ZLr4/o3;)V
    .locals 11

    iget-object p1, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, p1, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {p1, v0}, Lr4/o6;->g(Lr4/ft3;)Lr4/o6;

    move-result-object p1

    iget-wide v0, p1, Lr4/o6;->s:J

    iput-wide v0, p1, Lr4/o6;->q:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lr4/o6;->r:J

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lr4/o6;->e(I)Lr4/o6;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lr4/o6;->f(Lr4/o3;)Lr4/o6;

    move-result-object p1

    :cond_0
    move-object v2, p1

    iget p1, p0, Lr4/n4;->s:I

    add-int/2addr p1, v0

    iput p1, p0, Lr4/n4;->s:I

    iget-object p1, p0, Lr4/n4;->h:Lr4/y4;

    invoke-virtual {p1}, Lr4/y4;->U()V

    iget-object p1, v2, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {p1}, Lr4/e8;->k()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/n4;->A:Lr4/o6;

    iget-object p1, p1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {p1}, Lr4/e8;->k()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0, v2}, Lr4/n4;->m(Lr4/o6;)J

    move-result-wide v8

    const/4 v10, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lr4/n4;->n(Lr4/o6;IIZZIJI)V

    return-void
.end method

.method public final L()J
    .locals 8

    invoke-virtual {p0}, Lr4/n4;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v2, p0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v1, v0, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-wide v1, v0, Lr4/o6;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {p0}, Lr4/n4;->E()I

    move-result v1

    iget-object v2, p0, Lr4/b3;->a:Lr4/d8;

    invoke-virtual {v0, v1, v2, v5, v6}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v0

    iget-wide v0, v0, Lr4/d8;->k:J

    invoke-static {v5, v6}, Lr4/e3;->a(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {v5, v6}, Lr4/e3;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lr4/n4;->A:Lr4/o6;

    iget-wide v2, v2, Lr4/o6;->c:J

    invoke-static {v2, v3}, Lr4/e3;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lr4/n4;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public final M()V
    .locals 7

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lr4/lc;->e:Ljava/lang/String;

    invoke-static {}, Lr4/z4;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x24

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [ExoPlayerLib/2.15.0] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lr4/n4;->h:Lr4/y4;

    invoke-virtual {v0}, Lr4/y4;->V()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/n4;->i:Lr4/db;

    const/16 v1, 0xa

    sget-object v2, Lr4/j4;->a:Lr4/ab;

    invoke-virtual {v0, v1, v2}, Lr4/db;->d(ILr4/ab;)V

    invoke-virtual {v0}, Lr4/db;->e()V

    :cond_0
    iget-object v0, p0, Lr4/n4;->i:Lr4/db;

    invoke-virtual {v0}, Lr4/db;->f()V

    iget-object v0, p0, Lr4/n4;->f:Lr4/xa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/xa;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lr4/n4;->o:Lr4/c41;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lr4/n4;->q:Lr4/kw3;

    invoke-interface {v1, v0}, Lr4/kw3;->c(Lr4/jw3;)V

    :cond_1
    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/o6;->e(I)Lr4/o6;

    move-result-object v0

    iput-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v0, v1}, Lr4/o6;->g(Lr4/ft3;)Lr4/o6;

    move-result-object v0

    iput-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-wide v1, v0, Lr4/o6;->s:J

    iput-wide v1, v0, Lr4/o6;->q:J

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lr4/o6;->r:J

    return-void
.end method

.method public final N(Lr4/c7;)Lr4/d7;
    .locals 8

    new-instance v7, Lr4/d7;

    iget-object v1, p0, Lr4/n4;->h:Lr4/y4;

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v3, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {p0}, Lr4/n4;->E()I

    move-result v4

    iget-object v5, p0, Lr4/n4;->r:Lr4/ka;

    iget-object v0, p0, Lr4/n4;->h:Lr4/y4;

    invoke-virtual {v0}, Lr4/y4;->W()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lr4/d7;-><init>(Lr4/b7;Lr4/c7;Lr4/e8;ILr4/ka;Landroid/os/Looper;)V

    return-object v7
.end method

.method public final O()J
    .locals 2

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    invoke-virtual {p0, v0}, Lr4/n4;->m(Lr4/o6;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lr4/e3;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final P()I
    .locals 1

    invoke-virtual {p0}, Lr4/n4;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    iget v0, v0, Lr4/f04;->b:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final Q()J
    .locals 5

    invoke-virtual {p0}, Lr4/n4;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-interface {p0}, Lr4/a7;->E()I

    move-result v1

    iget-object v2, p0, Lr4/b3;->a:Lr4/d8;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v0

    iget-wide v0, v0, Lr4/d8;->l:J

    invoke-static {v0, v1}, Lr4/e3;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v2, v1, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v3, p0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v0, v2, v3}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object v0, p0, Lr4/n4;->k:Lr4/b8;

    iget v2, v1, Lr4/f04;->b:I

    iget v1, v1, Lr4/f04;->c:I

    invoke-virtual {v0, v2, v1}, Lr4/b8;->h(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lr4/e3;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final R()J
    .locals 8

    invoke-virtual {p0}, Lr4/n4;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->k:Lr4/ft3;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v1, v0}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-wide v0, v0, Lr4/o6;->q:J

    invoke-static {v0, v1}, Lr4/e3;->a(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr4/n4;->Q()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lr4/n4;->C:J

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->k:Lr4/ft3;

    iget-wide v1, v1, Lr4/f04;->d:J

    iget-object v3, v0, Lr4/o6;->b:Lr4/ft3;

    iget-wide v3, v3, Lr4/f04;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {p0}, Lr4/n4;->E()I

    move-result v1

    iget-object v2, p0, Lr4/b3;->a:Lr4/d8;

    invoke-virtual {v0, v1, v2, v5, v6}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v0

    iget-wide v0, v0, Lr4/d8;->l:J

    invoke-static {v0, v1}, Lr4/e3;->a(J)J

    move-result-wide v0

    goto :goto_2

    :cond_3
    iget-wide v0, v0, Lr4/o6;->q:J

    iget-object v2, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v2, v2, Lr4/o6;->k:Lr4/ft3;

    invoke-virtual {v2}, Lr4/f04;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v0, v0, Lr4/o6;->k:Lr4/ft3;

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v2, p0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v1, v0, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget-object v1, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->k:Lr4/ft3;

    iget v1, v1, Lr4/f04;->b:I

    invoke-virtual {v0, v1}, Lr4/b8;->b(I)J

    goto :goto_1

    :cond_4
    move-wide v5, v0

    :goto_1
    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v0, v0, Lr4/o6;->k:Lr4/ft3;

    invoke-virtual {p0, v1, v0, v5, v6}, Lr4/n4;->u(Lr4/e8;Lr4/ft3;J)J

    invoke-static {v5, v6}, Lr4/e3;->a(J)J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public final a(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    move-wide v1, p2

    iget-object v3, v10, Lr4/n4;->A:Lr4/o6;

    iget-object v3, v3, Lr4/o6;->a:Lr4/e8;

    if-ltz v0, :cond_3

    invoke-virtual {v3}, Lr4/e8;->k()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lr4/e8;->a()I

    move-result v4

    if-ge v0, v4, :cond_3

    :cond_0
    iget v4, v10, Lr4/n4;->s:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lr4/n4;->s:I

    invoke-virtual {p0}, Lr4/n4;->z()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v10, Lr4/n4;->A:Lr4/o6;

    iget v4, v4, Lr4/o6;->e:I

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    invoke-virtual {p0}, Lr4/n4;->E()I

    move-result v9

    iget-object v4, v10, Lr4/n4;->A:Lr4/o6;

    invoke-virtual {v4, v5}, Lr4/o6;->e(I)Lr4/o6;

    move-result-object v4

    invoke-virtual {p0, v3, p1, v1, v2}, Lr4/n4;->s(Lr4/e8;IJ)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v5}, Lr4/n4;->r(Lr4/o6;Lr4/e8;Landroid/util/Pair;)Lr4/o6;

    move-result-object v4

    iget-object v5, v10, Lr4/n4;->h:Lr4/y4;

    invoke-static/range {p2 .. p3}, Lr4/e3;->b(J)J

    move-result-wide v1

    invoke-virtual {v5, v3, p1, v1, v2}, Lr4/y4;->T(Lr4/e8;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {p0, v4}, Lr4/n4;->m(Lr4/o6;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    invoke-virtual/range {v0 .. v9}, Lr4/n4;->n(Lr4/o6;IIZZIJI)V

    return-void

    :cond_2
    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lr4/v4;

    iget-object v1, v10, Lr4/n4;->A:Lr4/o6;

    invoke-direct {v0, v1}, Lr4/v4;-><init>(Lr4/o6;)V

    invoke-virtual {v0, v5}, Lr4/v4;->b(I)V

    iget-object v1, v10, Lr4/n4;->g:Lr4/w4;

    invoke-interface {v1, v0}, Lr4/w4;->a(Lr4/v4;)V

    return-void

    :cond_3
    new-instance v4, Lr4/g5;

    invoke-direct {v4, v3, p1, v1, v2}, Lr4/g5;-><init>(Lr4/e8;IJ)V

    throw v4
.end method

.method public final b(Z)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lr4/n4;->d:[Lr4/g7;

    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final synthetic h(Lr4/u6;)V
    .locals 1

    iget-object v0, p0, Lr4/n4;->x:Lr4/t6;

    invoke-interface {p1, v0}, Lr4/u6;->I0(Lr4/t6;)V

    return-void
.end method

.method public final synthetic j(Lr4/v4;)V
    .locals 2

    iget-object v0, p0, Lr4/n4;->f:Lr4/xa;

    new-instance v1, Lr4/h4;

    invoke-direct {v1, p0, p1}, Lr4/h4;-><init>(Lr4/n4;Lr4/v4;)V

    invoke-interface {v0, v1}, Lr4/xa;->g(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic k(Lr4/v4;)V
    .locals 12

    iget v1, p0, Lr4/n4;->s:I

    iget v2, p1, Lr4/v4;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lr4/n4;->s:I

    iget-boolean v2, p1, Lr4/v4;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p1, Lr4/v4;->e:I

    iput v2, p0, Lr4/n4;->t:I

    iput-boolean v3, p0, Lr4/n4;->u:Z

    :cond_0
    iget-boolean v2, p1, Lr4/v4;->f:Z

    if-eqz v2, :cond_1

    iget v2, p1, Lr4/v4;->g:I

    iput v2, p0, Lr4/n4;->v:I

    :cond_1
    if-nez v1, :cond_b

    iget-object v1, p1, Lr4/v4;->b:Lr4/o6;

    iget-object v1, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v2, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v2, v2, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v2}, Lr4/e8;->k()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Lr4/n4;->B:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lr4/n4;->C:J

    :cond_2
    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    move-object v2, v1

    check-cast v2, Lr4/e7;

    invoke-virtual {v2}, Lr4/e7;->y()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lr4/n4;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lr4/ja;->d(Z)V

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lr4/n4;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr4/m4;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr4/e8;

    invoke-static {v6, v7}, Lr4/m4;->c(Lr4/m4;Lr4/e8;)Lr4/e8;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lr4/n4;->u:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_a

    iget-object v2, p1, Lr4/v4;->b:Lr4/o6;

    iget-object v2, v2, Lr4/o6;->b:Lr4/ft3;

    iget-object v7, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v7, v7, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v2, v7}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lr4/v4;->b:Lr4/o6;

    iget-wide v7, v2, Lr4/o6;->d:J

    iget-object v2, p0, Lr4/n4;->A:Lr4/o6;

    iget-wide v10, v2, Lr4/o6;->s:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lr4/e8;->k()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Lr4/v4;->b:Lr4/o6;

    iget-object v2, v2, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v2}, Lr4/f04;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, p1, Lr4/v4;->b:Lr4/o6;

    iget-object v5, v2, Lr4/o6;->b:Lr4/ft3;

    iget-wide v6, v2, Lr4/o6;->d:J

    invoke-virtual {p0, v1, v5, v6, v7}, Lr4/n4;->u(Lr4/e8;Lr4/ft3;J)J

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v1, p1, Lr4/v4;->b:Lr4/o6;

    iget-wide v6, v1, Lr4/o6;->d:J

    :goto_4
    move v5, v3

    move-wide v7, v6

    goto :goto_5

    :cond_9
    move-wide v7, v5

    move v5, v3

    goto :goto_5

    :cond_a
    move-wide v7, v5

    const/4 v5, 0x0

    :goto_5
    iput-boolean v4, p0, Lr4/n4;->u:Z

    iget-object v1, p1, Lr4/v4;->b:Lr4/o6;

    const/4 v2, 0x1

    iget v3, p0, Lr4/n4;->v:I

    const/4 v4, 0x0

    iget v6, p0, Lr4/n4;->t:I

    const/4 v9, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lr4/n4;->n(Lr4/o6;IIZZIJI)V

    :cond_b
    return-void
.end method

.method public final l()I
    .locals 3

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lr4/n4;->B:I

    return v0

    :cond_0
    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v2, p0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v1, v0, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v0

    iget v0, v0, Lr4/b8;->c:I

    return v0
.end method

.method public final m(Lr4/o6;)J
    .locals 4

    iget-object v0, p1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lr4/n4;->C:J

    invoke-static {v0, v1}, Lr4/e3;->b(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p1, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v0}, Lr4/f04;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lr4/o6;->s:J

    return-wide v0

    :cond_1
    iget-object v0, p1, Lr4/o6;->a:Lr4/e8;

    iget-object v1, p1, Lr4/o6;->b:Lr4/ft3;

    iget-wide v2, p1, Lr4/o6;->s:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lr4/n4;->u(Lr4/e8;Lr4/ft3;J)J

    return-wide v2
.end method

.method public final n(Lr4/o6;IIZZIJI)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    iget-object v3, v0, Lr4/n4;->A:Lr4/o6;

    iput-object v1, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v4, v3, Lr4/o6;->a:Lr4/e8;

    iget-object v5, v1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v4, v5}, Lr4/e8;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, v3, Lr4/o6;->a:Lr4/e8;

    iget-object v7, v1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v7}, Lr4/e8;->k()Z

    move-result v8

    const/4 v10, 0x3

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lr4/e8;->k()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7}, Lr4/e8;->k()Z

    move-result v8

    invoke-virtual {v6}, Lr4/e8;->k()Z

    move-result v9

    if-eq v8, v9, :cond_1

    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object v8, v3, Lr4/o6;->b:Lr4/ft3;

    iget-object v8, v8, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v9, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v6, v8, v9}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v8

    iget v8, v8, Lr4/b8;->c:I

    iget-object v9, v0, Lr4/b3;->a:Lr4/d8;

    invoke-virtual {v6, v8, v9, v11, v12}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v6

    iget-object v6, v6, Lr4/d8;->a:Ljava/lang/Object;

    iget-object v8, v1, Lr4/o6;->b:Lr4/ft3;

    iget-object v8, v8, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v9, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v7, v8, v9}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v8

    iget v8, v8, Lr4/b8;->c:I

    iget-object v9, v0, Lr4/b3;->a:Lr4/d8;

    invoke-virtual {v7, v8, v9, v11, v12}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v7

    iget-object v7, v7, Lr4/d8;->a:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-ne v2, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 v4, 0x3

    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p5, :cond_6

    if-nez v2, :cond_6

    iget-object v4, v3, Lr4/o6;->b:Lr4/ft3;

    iget-wide v6, v4, Lr4/f04;->d:J

    iget-object v4, v1, Lr4/o6;->b:Lr4/ft3;

    iget-wide v8, v4, Lr4/f04;->d:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_6

    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, v0, Lr4/n4;->y:Lr4/y5;

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    iget-object v7, v1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v7}, Lr4/e8;->k()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v9, v1, Lr4/o6;->b:Lr4/ft3;

    iget-object v9, v9, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v14, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v7, v9, v14}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v7

    iget v7, v7, Lr4/b8;->c:I

    iget-object v9, v1, Lr4/o6;->a:Lr4/e8;

    iget-object v14, v0, Lr4/b3;->a:Lr4/d8;

    invoke-virtual {v9, v7, v14, v11, v12}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v7

    iget-object v7, v7, Lr4/d8;->b:Lr4/u5;

    goto :goto_2

    :cond_7
    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_8

    iget-object v9, v7, Lr4/u5;->d:Lr4/y5;

    goto :goto_3

    :cond_8
    sget-object v9, Lr4/y5;->t:Lr4/y5;

    :goto_3
    move-object/from16 v39, v9

    move-object v9, v7

    move-object/from16 v7, v39

    goto :goto_4

    :cond_9
    move-object v9, v8

    :goto_4
    iget-object v14, v3, Lr4/o6;->j:Ljava/util/List;

    iget-object v10, v1, Lr4/o6;->j:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    new-instance v10, Lr4/w5;

    invoke-direct {v10, v7, v8}, Lr4/w5;-><init>(Lr4/y5;Lr4/x5;)V

    iget-object v7, v1, Lr4/o6;->j:Ljava/util/List;

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v14, v13, :cond_b

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lr4/j8;

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v13}, Lr4/j8;->a()I

    move-result v12

    if-ge v11, v12, :cond_a

    invoke-virtual {v13, v11}, Lr4/j8;->h(I)Lr4/i8;

    move-result-object v12

    invoke-interface {v12, v10}, Lr4/i8;->f0(Lr4/w5;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_b
    new-instance v7, Lr4/y5;

    invoke-direct {v7, v10, v8}, Lr4/y5;-><init>(Lr4/w5;Lr4/x5;)V

    :cond_c
    iget-object v10, v0, Lr4/n4;->y:Lr4/y5;

    invoke-virtual {v7, v10}, Lr4/y5;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    iput-object v7, v0, Lr4/n4;->y:Lr4/y5;

    iget-object v7, v3, Lr4/o6;->a:Lr4/e8;

    iget-object v11, v1, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v7, v11}, Lr4/e8;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lr4/n4;->i:Lr4/db;

    new-instance v11, Lr4/k4;

    move/from16 v12, p2

    invoke-direct {v11, v1, v12}, Lr4/k4;-><init>(Lr4/o6;I)V

    invoke-virtual {v7, v15, v11}, Lr4/db;->d(ILr4/ab;)V

    :cond_d
    const/16 v7, 0xb

    if-eqz p5, :cond_15

    new-instance v11, Lr4/b8;

    invoke-direct {v11}, Lr4/b8;-><init>()V

    iget-object v12, v3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v12}, Lr4/e8;->k()Z

    move-result v12

    if-nez v12, :cond_e

    iget-object v12, v3, Lr4/o6;->b:Lr4/ft3;

    iget-object v12, v12, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v13, v3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v13, v12, v11}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget v13, v11, Lr4/b8;->c:I

    iget-object v14, v3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v14, v12}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v14

    iget-object v15, v3, Lr4/o6;->a:Lr4/e8;

    iget-object v8, v0, Lr4/b3;->a:Lr4/d8;

    move/from16 v16, v6

    const-wide/16 v5, 0x0

    invoke-virtual {v15, v13, v8, v5, v6}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v8

    iget-object v5, v8, Lr4/d8;->a:Ljava/lang/Object;

    iget-object v6, v0, Lr4/b3;->a:Lr4/d8;

    iget-object v6, v6, Lr4/d8;->b:Lr4/u5;

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    move/from16 v19, v13

    move/from16 v22, v14

    goto :goto_7

    :cond_e
    move/from16 v16, v6

    move/from16 v19, p9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    :goto_7
    if-nez v2, :cond_10

    iget-wide v5, v11, Lr4/b8;->d:J

    iget-object v8, v3, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v8}, Lr4/f04;->b()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v5, v3, Lr4/o6;->b:Lr4/ft3;

    iget v6, v5, Lr4/f04;->b:I

    iget v5, v5, Lr4/f04;->c:I

    invoke-virtual {v11, v6, v5}, Lr4/b8;->h(II)J

    move-result-wide v5

    invoke-static {v3}, Lr4/n4;->o(Lr4/o6;)J

    move-result-wide v11

    goto :goto_9

    :cond_f
    iget-object v8, v3, Lr4/o6;->b:Lr4/ft3;

    iget v8, v8, Lr4/f04;->e:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_12

    iget-object v8, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v8, v8, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v8}, Lr4/f04;->b()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v5, v0, Lr4/n4;->A:Lr4/o6;

    invoke-static {v5}, Lr4/n4;->o(Lr4/o6;)J

    move-result-wide v5

    goto :goto_8

    :cond_10
    iget-object v5, v3, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v5}, Lr4/f04;->b()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-wide v5, v3, Lr4/o6;->s:J

    invoke-static {v3}, Lr4/n4;->o(Lr4/o6;)J

    move-result-wide v11

    goto :goto_9

    :cond_11
    iget-wide v5, v3, Lr4/o6;->s:J

    :cond_12
    :goto_8
    move-wide v11, v5

    :goto_9
    new-instance v8, Lr4/z6;

    invoke-static {v5, v6}, Lr4/e3;->a(J)J

    move-result-wide v23

    invoke-static {v11, v12}, Lr4/e3;->a(J)J

    move-result-wide v25

    iget-object v5, v3, Lr4/o6;->b:Lr4/ft3;

    iget v6, v5, Lr4/f04;->b:I

    iget v5, v5, Lr4/f04;->c:I

    move-object/from16 v17, v8

    move/from16 v27, v6

    move/from16 v28, v5

    invoke-direct/range {v17 .. v28}, Lr4/z6;-><init>(Ljava/lang/Object;ILr4/u5;Ljava/lang/Object;IJJII)V

    invoke-virtual/range {p0 .. p0}, Lr4/n4;->E()I

    move-result v5

    iget-object v6, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v6, v6, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v6}, Lr4/e8;->k()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v11, v6, Lr4/o6;->b:Lr4/ft3;

    iget-object v11, v11, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v6, v6, Lr4/o6;->a:Lr4/e8;

    iget-object v12, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v6, v11, v12}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    iget-object v6, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v6, v6, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v6, v11}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v6

    iget-object v12, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v12, v12, Lr4/o6;->a:Lr4/e8;

    iget-object v13, v0, Lr4/b3;->a:Lr4/d8;

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v5, v13, v14, v15}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v12

    iget-object v12, v12, Lr4/d8;->a:Ljava/lang/Object;

    iget-object v13, v0, Lr4/b3;->a:Lr4/d8;

    iget-object v13, v13, Lr4/d8;->b:Lr4/u5;

    move/from16 v32, v6

    move-object/from16 v31, v11

    move-object/from16 v28, v12

    move-object/from16 v30, v13

    goto :goto_a

    :cond_13
    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    :goto_a
    invoke-static/range {p7 .. p8}, Lr4/e3;->a(J)J

    move-result-wide v33

    new-instance v6, Lr4/z6;

    iget-object v11, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v11, v11, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v11}, Lr4/f04;->b()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v0, Lr4/n4;->A:Lr4/o6;

    invoke-static {v11}, Lr4/n4;->o(Lr4/o6;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lr4/e3;->a(J)J

    move-result-wide v11

    move-wide/from16 v35, v11

    goto :goto_b

    :cond_14
    move-wide/from16 v35, v33

    :goto_b
    iget-object v11, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v11, v11, Lr4/o6;->b:Lr4/ft3;

    iget v12, v11, Lr4/f04;->b:I

    iget v11, v11, Lr4/f04;->c:I

    move-object/from16 v27, v6

    move/from16 v29, v5

    move/from16 v37, v12

    move/from16 v38, v11

    invoke-direct/range {v27 .. v38}, Lr4/z6;-><init>(Ljava/lang/Object;ILr4/u5;Ljava/lang/Object;IJJII)V

    iget-object v5, v0, Lr4/n4;->i:Lr4/db;

    new-instance v11, Lr4/l4;

    invoke-direct {v11, v2, v8, v6}, Lr4/l4;-><init>(ILr4/z6;Lr4/z6;)V

    invoke-virtual {v5, v7, v11}, Lr4/db;->d(ILr4/ab;)V

    goto :goto_c

    :cond_15
    move/from16 v16, v6

    :goto_c
    if-eqz v16, :cond_16

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v5, Lr4/s3;

    invoke-direct {v5, v9, v4}, Lr4/s3;-><init>(Lr4/u5;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lr4/db;->d(ILr4/ab;)V

    :cond_16
    iget-object v2, v3, Lr4/o6;->f:Lr4/o3;

    iget-object v4, v1, Lr4/o6;->f:Lr4/o3;

    const/16 v5, 0xa

    if-eq v2, v4, :cond_17

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/t3;

    invoke-direct {v4, v1}, Lr4/t3;-><init>(Lr4/o6;)V

    invoke-virtual {v2, v5, v4}, Lr4/db;->d(ILr4/ab;)V

    iget-object v2, v1, Lr4/o6;->f:Lr4/o3;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/u3;

    invoke-direct {v4, v1}, Lr4/u3;-><init>(Lr4/o6;)V

    invoke-virtual {v2, v5, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_17
    iget-object v2, v3, Lr4/o6;->i:Lr4/cw3;

    iget-object v4, v1, Lr4/o6;->i:Lr4/cw3;

    if-eq v2, v4, :cond_18

    iget-object v2, v0, Lr4/n4;->e:Lr4/aw3;

    iget-object v4, v4, Lr4/cw3;->c:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lr4/aw3;->a(Ljava/lang/Object;)V

    new-instance v2, Lr4/k54;

    iget-object v4, v1, Lr4/o6;->i:Lr4/cw3;

    iget-object v4, v4, Lr4/cw3;->d:[Lr4/hv3;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lr4/k54;-><init>([Lr4/hv3;[B)V

    iget-object v4, v0, Lr4/n4;->i:Lr4/db;

    new-instance v6, Lr4/v3;

    invoke-direct {v6, v1, v2}, Lr4/v3;-><init>(Lr4/o6;Lr4/k54;)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2, v6}, Lr4/db;->d(ILr4/ab;)V

    :cond_18
    if-eqz v10, :cond_19

    iget-object v2, v0, Lr4/n4;->y:Lr4/y5;

    iget-object v4, v0, Lr4/n4;->i:Lr4/db;

    new-instance v6, Lr4/w3;

    invoke-direct {v6, v2}, Lr4/w3;-><init>(Lr4/y5;)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v6}, Lr4/db;->d(ILr4/ab;)V

    :cond_19
    iget-boolean v2, v3, Lr4/o6;->g:Z

    iget-boolean v4, v1, Lr4/o6;->g:Z

    if-eq v2, v4, :cond_1a

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/x3;

    invoke-direct {v4, v1}, Lr4/x3;-><init>(Lr4/o6;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_1a
    iget v2, v3, Lr4/o6;->e:I

    iget v4, v1, Lr4/o6;->e:I

    if-ne v2, v4, :cond_1b

    iget-boolean v2, v3, Lr4/o6;->l:Z

    iget-boolean v4, v1, Lr4/o6;->l:Z

    if-eq v2, v4, :cond_1c

    :cond_1b
    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/y3;

    invoke-direct {v4, v1}, Lr4/y3;-><init>(Lr4/o6;)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_1c
    iget v2, v3, Lr4/o6;->e:I

    iget v4, v1, Lr4/o6;->e:I

    const/4 v6, 0x4

    if-eq v2, v4, :cond_1d

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/z3;

    invoke-direct {v4, v1}, Lr4/z3;-><init>(Lr4/o6;)V

    invoke-virtual {v2, v6, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_1d
    iget-boolean v2, v3, Lr4/o6;->l:Z

    iget-boolean v4, v1, Lr4/o6;->l:Z

    const/4 v8, 0x5

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/a4;

    move/from16 v9, p3

    invoke-direct {v4, v1, v9}, Lr4/a4;-><init>(Lr4/o6;I)V

    invoke-virtual {v2, v8, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_1e
    iget v2, v3, Lr4/o6;->m:I

    iget v4, v1, Lr4/o6;->m:I

    const/4 v9, 0x6

    if-eq v2, v4, :cond_1f

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/b4;

    invoke-direct {v4, v1}, Lr4/b4;-><init>(Lr4/o6;)V

    invoke-virtual {v2, v9, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_1f
    invoke-static {v3}, Lr4/n4;->w(Lr4/o6;)Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lr4/n4;->w(Lr4/o6;)Z

    move-result v4

    const/4 v10, 0x7

    if-eq v2, v4, :cond_20

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/d4;

    invoke-direct {v4, v1}, Lr4/d4;-><init>(Lr4/o6;)V

    invoke-virtual {v2, v10, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_20
    iget-object v2, v3, Lr4/o6;->n:Lr4/q6;

    iget-object v4, v1, Lr4/o6;->n:Lr4/q6;

    invoke-virtual {v2, v4}, Lr4/q6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/e4;

    invoke-direct {v4, v1}, Lr4/e4;-><init>(Lr4/o6;)V

    const/16 v11, 0xc

    invoke-virtual {v2, v11, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_21
    if-eqz p4, :cond_22

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    sget-object v4, Lr4/f4;->a:Lr4/ab;

    const/4 v11, -0x1

    invoke-virtual {v2, v11, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_22
    iget-object v2, v0, Lr4/n4;->x:Lr4/t6;

    iget-object v4, v0, Lr4/n4;->c:Lr4/t6;

    new-instance v11, Lr4/s6;

    invoke-direct {v11}, Lr4/s6;-><init>()V

    invoke-virtual {v11, v4}, Lr4/s6;->d(Lr4/t6;)Lr4/s6;

    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    const/4 v12, 0x1

    xor-int/2addr v4, v12

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v4}, Lr4/s6;->b(IZ)Lr4/s6;

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->f()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    goto :goto_d

    :cond_23
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v11, v6, v4}, Lr4/s6;->b(IZ)Lr4/s6;

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->c()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    if-nez v4, :cond_24

    const/4 v4, 0x1

    goto :goto_e

    :cond_24
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v11, v8, v4}, Lr4/s6;->b(IZ)Lr4/s6;

    iget-object v4, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v4, v4, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v4}, Lr4/e8;->k()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->c()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->e()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->f()Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_25
    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_f

    :cond_26
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v11, v9, v4}, Lr4/s6;->b(IZ)Lr4/s6;

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->d()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    goto :goto_10

    :cond_27
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v11, v10, v4}, Lr4/s6;->b(IZ)Lr4/s6;

    iget-object v4, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v4, v4, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v4}, Lr4/e8;->k()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->d()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->e()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, v0, Lr4/n4;->A:Lr4/o6;

    iget-object v4, v4, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v4}, Lr4/e8;->k()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-interface/range {p0 .. p0}, Lr4/a7;->E()I

    move-result v6

    iget-object v8, v0, Lr4/b3;->a:Lr4/d8;

    const-wide/16 v9, 0x0

    invoke-virtual {v4, v6, v8, v9, v10}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object v4

    iget-boolean v4, v4, Lr4/d8;->g:Z

    if-eqz v4, :cond_29

    :cond_28
    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_11

    :cond_29
    const/4 v4, 0x0

    :goto_11
    const/16 v6, 0x8

    invoke-virtual {v11, v6, v4}, Lr4/s6;->b(IZ)Lr4/s6;

    const/16 v4, 0x9

    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    invoke-virtual {v11, v4, v6}, Lr4/s6;->b(IZ)Lr4/s6;

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->f()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_12

    :cond_2a
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v11, v5, v4}, Lr4/s6;->b(IZ)Lr4/s6;

    invoke-virtual/range {p0 .. p0}, Lr4/b3;->f()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface/range {p0 .. p0}, Lr4/a7;->z()Z

    move-result v4

    if-nez v4, :cond_2b

    const/4 v5, 0x1

    goto :goto_13

    :cond_2b
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v11, v7, v5}, Lr4/s6;->b(IZ)Lr4/s6;

    invoke-virtual {v11}, Lr4/s6;->e()Lr4/t6;

    move-result-object v4

    iput-object v4, v0, Lr4/n4;->x:Lr4/t6;

    invoke-virtual {v4, v2}, Lr4/t6;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    new-instance v4, Lr4/g4;

    invoke-direct {v4, v0}, Lr4/g4;-><init>(Lr4/n4;)V

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v4}, Lr4/db;->d(ILr4/ab;)V

    :cond_2c
    iget-object v2, v0, Lr4/n4;->i:Lr4/db;

    invoke-virtual {v2}, Lr4/db;->e()V

    iget-boolean v2, v3, Lr4/o6;->o:Z

    iget-boolean v4, v1, Lr4/o6;->o:Z

    if-eq v2, v4, :cond_2d

    iget-object v2, v0, Lr4/n4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/p3;

    iget-boolean v5, v1, Lr4/o6;->o:Z

    invoke-interface {v4, v5}, Lr4/p3;->R(Z)V

    goto :goto_14

    :cond_2d
    iget-boolean v2, v3, Lr4/o6;->p:Z

    iget-boolean v3, v1, Lr4/o6;->p:Z

    if-eq v2, v3, :cond_2e

    iget-object v2, v0, Lr4/n4;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/p3;

    iget-boolean v4, v1, Lr4/o6;->p:Z

    invoke-interface {v3, v4}, Lr4/p3;->z0(Z)V

    goto :goto_15

    :cond_2e
    return-void
.end method

.method public final p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r(Lr4/o6;Lr4/e8;Landroid/util/Pair;)Lr4/o6;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/o6;",
            "Lr4/e8;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lr4/o6;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Lr4/e8;->k()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lr4/ja;->a(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Lr4/o6;->a:Lr4/e8;

    invoke-virtual/range {p1 .. p2}, Lr4/o6;->d(Lr4/e8;)Lr4/o6;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lr4/e8;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lr4/o6;->b()Lr4/ft3;

    move-result-object v1

    iget-wide v2, v0, Lr4/n4;->C:J

    invoke-static {v2, v3}, Lr4/e3;->b(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    sget-object v17, Lr4/j44;->d:Lr4/j44;

    iget-object v2, v0, Lr4/n4;->b:Lr4/cw3;

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v19

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v18, v2

    invoke-virtual/range {v7 .. v19}, Lr4/o6;->c(Lr4/ft3;JJJJLr4/j44;Lr4/cw3;Ljava/util/List;)Lr4/o6;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/o6;->g(Lr4/ft3;)Lr4/o6;

    move-result-object v1

    iget-wide v2, v1, Lr4/o6;->s:J

    iput-wide v2, v1, Lr4/o6;->q:J

    return-object v1

    :cond_2
    iget-object v3, v7, Lr4/o6;->b:Lr4/ft3;

    iget-object v3, v3, Lr4/f04;->a:Ljava/lang/Object;

    sget v8, Lr4/lc;->a:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_3

    new-instance v9, Lr4/ft3;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v9, v10}, Lr4/ft3;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v9, v7, Lr4/o6;->b:Lr4/ft3;

    :goto_2
    move-object v15, v9

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lr4/n4;->L()J

    move-result-wide v9

    invoke-static {v9, v10}, Lr4/e3;->b(J)J

    move-result-wide v9

    invoke-virtual {v6}, Lr4/e8;->k()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v6, v3, v2}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    :cond_4
    if-nez v8, :cond_a

    cmp-long v2, v13, v9

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    cmp-long v2, v13, v9

    if-nez v2, :cond_8

    iget-object v2, v7, Lr4/o6;->k:Lr4/ft3;

    iget-object v2, v2, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v1, v2, v3, v4}, Lr4/e8;->h(ILr4/b8;Z)Lr4/b8;

    move-result-object v2

    iget v2, v2, Lr4/b8;->c:I

    iget-object v3, v15, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v4, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v1, v3, v4}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    move-result-object v3

    iget v3, v3, Lr4/b8;->c:I

    if-eq v2, v3, :cond_e

    :cond_6
    iget-object v2, v15, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v3, v0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {v1, v2, v3}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    invoke-virtual {v15}, Lr4/f04;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lr4/n4;->k:Lr4/b8;

    iget v2, v15, Lr4/f04;->b:I

    iget v3, v15, Lr4/f04;->c:I

    invoke-virtual {v1, v2, v3}, Lr4/b8;->h(II)J

    move-result-wide v1

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lr4/n4;->k:Lr4/b8;

    iget-wide v1, v1, Lr4/b8;->d:J

    :goto_3
    iget-wide v9, v7, Lr4/o6;->s:J

    iget-wide v11, v7, Lr4/o6;->s:J

    iget-wide v13, v7, Lr4/o6;->d:J

    iget-wide v3, v7, Lr4/o6;->s:J

    sub-long v3, v1, v3

    iget-object v5, v7, Lr4/o6;->h:Lr4/j44;

    iget-object v6, v7, Lr4/o6;->i:Lr4/cw3;

    iget-object v8, v7, Lr4/o6;->j:Ljava/util/List;

    move-object/from16 v19, v8

    move-object v8, v15

    move-object v0, v15

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual/range {v7 .. v19}, Lr4/o6;->c(Lr4/ft3;JJJJLr4/j44;Lr4/cw3;Ljava/util/List;)Lr4/o6;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr4/o6;->g(Lr4/ft3;)Lr4/o6;

    move-result-object v7

    iput-wide v1, v7, Lr4/o6;->q:J

    goto :goto_4

    :cond_8
    move-object v0, v15

    invoke-virtual {v0}, Lr4/f04;->b()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lr4/ja;->d(Z)V

    const-wide/16 v1, 0x0

    iget-wide v3, v7, Lr4/o6;->r:J

    sub-long v5, v13, v9

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    iget-wide v1, v7, Lr4/o6;->q:J

    iget-object v3, v7, Lr4/o6;->k:Lr4/ft3;

    iget-object v4, v7, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v3, v4}, Lr4/f04;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v13, v15

    :cond_9
    iget-object v3, v7, Lr4/o6;->h:Lr4/j44;

    iget-object v4, v7, Lr4/o6;->i:Lr4/cw3;

    iget-object v5, v7, Lr4/o6;->j:Ljava/util/List;

    move-object v8, v0

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v7 .. v19}, Lr4/o6;->c(Lr4/ft3;JJJJLr4/j44;Lr4/cw3;Ljava/util/List;)Lr4/o6;

    move-result-object v7

    iput-wide v1, v7, Lr4/o6;->q:J

    :goto_4
    move-object/from16 v0, p0

    goto :goto_9

    :cond_a
    :goto_5
    move-object v0, v15

    invoke-virtual {v0}, Lr4/f04;->b()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lr4/ja;->d(Z)V

    if-eqz v8, :cond_b

    sget-object v1, Lr4/j44;->d:Lr4/j44;

    goto :goto_6

    :cond_b
    iget-object v1, v7, Lr4/o6;->h:Lr4/j44;

    :goto_6
    move-object/from16 v17, v1

    if-eqz v8, :cond_c

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lr4/n4;->b:Lr4/cw3;

    goto :goto_7

    :cond_c
    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v2, v7, Lr4/o6;->i:Lr4/cw3;

    :goto_7
    move-object/from16 v18, v2

    if-eqz v8, :cond_d

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object v2

    goto :goto_8

    :cond_d
    iget-object v2, v7, Lr4/o6;->j:Ljava/util/List;

    :goto_8
    move-object/from16 v19, v2

    const-wide/16 v15, 0x0

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-wide v2, v13

    invoke-virtual/range {v7 .. v19}, Lr4/o6;->c(Lr4/ft3;JJJJLr4/j44;Lr4/cw3;Ljava/util/List;)Lr4/o6;

    move-result-object v4

    invoke-virtual {v4, v1}, Lr4/o6;->g(Lr4/ft3;)Lr4/o6;

    move-result-object v7

    iput-wide v2, v7, Lr4/o6;->q:J

    :cond_e
    :goto_9
    return-object v7
.end method

.method public final s(Lr4/e8;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/e8;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lr4/e8;->k()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lr4/n4;->B:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lr4/n4;->C:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lr4/e8;->a()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lr4/e8;->e(Z)I

    move-result p2

    iget-object p3, p0, Lr4/b3;->a:Lr4/d8;

    invoke-virtual {p1, p2, p3, v1, v2}, Lr4/e8;->f(ILr4/d8;J)Lr4/d8;

    move-result-object p3

    iget-wide p3, p3, Lr4/d8;->k:J

    invoke-static {v1, v2}, Lr4/e3;->a(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lr4/b3;->a:Lr4/d8;

    iget-object v2, p0, Lr4/n4;->k:Lr4/b8;

    invoke-static {p3, p4}, Lr4/e3;->b(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lr4/e8;->m(Lr4/d8;Lr4/b8;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final t()I
    .locals 2

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->a:Lr4/e8;

    invoke-virtual {v0}, Lr4/e8;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v1, v0, Lr4/o6;->a:Lr4/e8;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    iget-object v0, v0, Lr4/f04;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lr4/e8;->i(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final u(Lr4/e8;Lr4/ft3;J)J
    .locals 1

    iget-object p2, p2, Lr4/f04;->a:Ljava/lang/Object;

    iget-object v0, p0, Lr4/n4;->k:Lr4/b8;

    invoke-virtual {p1, p2, v0}, Lr4/e8;->o(Ljava/lang/Object;Lr4/b8;)Lr4/b8;

    return-wide p3
.end method

.method public final v()J
    .locals 2

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-wide v0, v0, Lr4/o6;->r:J

    invoke-static {v0, v1}, Lr4/e3;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-boolean v0, v0, Lr4/o6;->p:Z

    return v0
.end method

.method public final y()I
    .locals 1

    invoke-virtual {p0}, Lr4/n4;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    iget v0, v0, Lr4/f04;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lr4/n4;->A:Lr4/o6;

    iget-object v0, v0, Lr4/o6;->b:Lr4/ft3;

    invoke-virtual {v0}, Lr4/f04;->b()Z

    move-result v0

    return v0
.end method
