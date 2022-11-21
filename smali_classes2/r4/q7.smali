.class public final Lr4/q7;
.super Lr4/b3;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:Z

.field public C:Ljava/util/List;

.field public D:Z

.field public E:Z

.field public F:Lr4/m3;

.field public G:Lr4/pa4;

.field public final b:[Lr4/g7;

.field public final c:Lr4/ma;

.field public final d:Landroid/content/Context;

.field public final e:Lr4/n4;

.field public final f:Lr4/n7;

.field public final g:Lr4/o7;

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lr4/w6;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lr4/c41;

.field public final j:Lr4/w2;

.field public final k:Lr4/a3;

.field public final l:Lr4/x7;

.field public final m:Lr4/f8;

.field public final n:Lr4/g8;

.field public o:Lr4/e5;

.field public p:Lr4/e5;

.field public q:Landroid/media/AudioTrack;

.field public r:Ljava/lang/Object;

.field public s:Landroid/view/Surface;

.field public t:I

.field public u:I

.field public v:I

.field public w:Lr4/gp;

.field public x:Lr4/gp;

.field public y:I

.field public z:Lr4/dg3;


# direct methods
.method public constructor <init>(Lr4/m7;)V
    .locals 40

    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Lr4/b3;-><init>()V

    new-instance v0, Lr4/ma;

    sget-object v1, Lr4/ka;->a:Lr4/ka;

    invoke-direct {v0, v1}, Lr4/ma;-><init>(Lr4/ka;)V

    iput-object v0, v15, Lr4/q7;->c:Lr4/ma;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lr4/m7;->a(Lr4/m7;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v15, Lr4/q7;->d:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lr4/m7;->h(Lr4/m7;)Lr4/c41;

    move-result-object v7

    iput-object v7, v15, Lr4/q7;->i:Lr4/c41;

    invoke-static/range {p1 .. p1}, Lr4/m7;->j(Lr4/m7;)Lr4/dg3;

    move-result-object v2

    iput-object v2, v15, Lr4/q7;->z:Lr4/dg3;

    const/4 v14, 0x1

    iput v14, v15, Lr4/q7;->t:I

    const/4 v12, 0x0

    iput-boolean v12, v15, Lr4/q7;->B:Z

    new-instance v13, Lr4/n7;

    const/4 v10, 0x0

    invoke-direct {v13, v15, v10}, Lr4/n7;-><init>(Lr4/q7;Lr4/p7;)V

    iput-object v13, v15, Lr4/q7;->f:Lr4/n7;

    new-instance v11, Lr4/o7;

    invoke-direct {v11, v10}, Lr4/o7;-><init>(Lr4/p7;)V

    iput-object v11, v15, Lr4/q7;->g:Lr4/o7;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lr4/q7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v9, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lr4/m7;->i(Lr4/m7;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static/range {p1 .. p1}, Lr4/m7;->b(Lr4/m7;)Lr4/j7;

    move-result-object v16

    move-object/from16 v17, v9

    move-object/from16 v18, v13

    move-object/from16 v19, v13

    move-object/from16 v20, v13

    move-object/from16 v21, v13

    invoke-interface/range {v16 .. v21}, Lr4/j7;->a(Landroid/os/Handler;Lr4/zy3;Lr4/wm1;Lr4/ha;Lr4/k8;)[Lr4/g7;

    move-result-object v2

    iput-object v2, v15, Lr4/q7;->b:[Lr4/g7;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v15, Lr4/q7;->A:F

    sget v3, Lr4/lc;->a:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    iget-object v1, v15, Lr4/q7;->q:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v15, Lr4/q7;->q:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iput-object v10, v15, Lr4/q7;->q:Landroid/media/AudioTrack;

    :cond_0
    iget-object v1, v15, Lr4/q7;->q:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/AudioTrack;

    const/16 v17, 0x3

    const/16 v18, 0xfa0

    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v1, v15, Lr4/q7;->q:Landroid/media/AudioTrack;

    :cond_1
    iget-object v1, v15, Lr4/q7;->q:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    iput v1, v15, Lr4/q7;->y:I

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lr4/e3;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lr4/q7;->y:I

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lr4/q7;->C:Ljava/util/List;

    iput-boolean v14, v15, Lr4/q7;->D:Z

    new-instance v1, Lr4/s6;

    invoke-direct {v1}, Lr4/s6;-><init>()V

    const/16 v8, 0x8

    new-array v3, v8, [I

    const/16 v5, 0x14

    aput v5, v3, v12

    aput v4, v3, v14

    const/16 v4, 0x16

    const/4 v6, 0x2

    aput v4, v3, v6

    const/16 v4, 0x17

    const/4 v5, 0x3

    aput v4, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x18

    const/4 v15, 0x4

    :try_start_1
    aput v4, v3, v15

    const/16 v4, 0x19

    const/4 v15, 0x5

    aput v4, v3, v15

    const/16 v4, 0x1a

    const/4 v15, 0x6

    aput v4, v3, v15

    const/16 v4, 0x1b

    const/4 v15, 0x7

    aput v4, v3, v15

    invoke-virtual {v1, v3}, Lr4/s6;->c([I)Lr4/s6;

    invoke-virtual {v1}, Lr4/s6;->e()Lr4/t6;

    move-result-object v21

    new-instance v4, Lr4/n4;

    invoke-static/range {p1 .. p1}, Lr4/m7;->d(Lr4/m7;)Lr4/aw3;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lr4/m7;->e(Lr4/m7;)Lr4/qt3;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lr4/m7;->f(Lr4/m7;)Lr4/h5;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Lr4/m7;->g(Lr4/m7;)Lr4/kw3;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Lr4/m7;->k(Lr4/m7;)Lr4/k7;

    move-result-object v24

    invoke-static/range {p1 .. p1}, Lr4/m7;->o(Lr4/m7;)Lr4/g3;

    move-result-object v25

    const/16 v26, 0x1

    const-wide/16 v27, 0x1388

    const-wide/16 v29, 0x3a98

    const-wide/16 v31, 0x1f4

    const/16 v33, 0x0

    invoke-static/range {p1 .. p1}, Lr4/m7;->c(Lr4/m7;)Lr4/ka;

    move-result-object v34

    invoke-static/range {p1 .. p1}, Lr4/m7;->i(Lr4/m7;)Landroid/os/Looper;

    move-result-object v35

    const/16 v22, 0x0

    move-object v1, v4

    move-object/from16 v36, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    move/from16 v8, v26

    move-object/from16 v37, v9

    move-object/from16 v9, v24

    move-object/from16 v38, v11

    move-wide/from16 v10, v27

    move-object/from16 v39, v13

    const/16 v23, 0x0

    move-wide/from16 v12, v29

    move-object/from16 v14, v25

    move-wide/from16 v15, v31

    move/from16 v17, v33

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    move-object/from16 v20, p0

    invoke-direct/range {v1 .. v22}, Lr4/n4;-><init>([Lr4/g7;Lr4/aw3;Lr4/qt3;Lr4/h5;Lr4/kw3;Lr4/c41;ZLr4/k7;JJLr4/g3;JZLr4/ka;Landroid/os/Looper;Lr4/a7;Lr4/t6;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    :try_start_2
    iput-object v2, v1, Lr4/q7;->e:Lr4/n4;

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Lr4/n4;->B(Lr4/u6;)V

    invoke-virtual {v2, v3}, Lr4/n4;->C(Lr4/p3;)V

    new-instance v2, Lr4/w2;

    invoke-static/range {p1 .. p1}, Lr4/m7;->a(Lr4/m7;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v5, v37

    invoke-direct {v2, v4, v5, v3}, Lr4/w2;-><init>(Landroid/content/Context;Landroid/os/Handler;Lr4/v2;)V

    iput-object v2, v1, Lr4/q7;->j:Lr4/w2;

    new-instance v2, Lr4/a3;

    invoke-static/range {p1 .. p1}, Lr4/m7;->a(Lr4/m7;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v5, v3}, Lr4/a3;-><init>(Landroid/content/Context;Landroid/os/Handler;Lr4/z2;)V

    iput-object v2, v1, Lr4/q7;->k:Lr4/a3;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v2, Lr4/x7;

    invoke-static/range {p1 .. p1}, Lr4/m7;->a(Lr4/m7;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v5, v3}, Lr4/x7;-><init>(Landroid/content/Context;Landroid/os/Handler;Lr4/r7;)V

    iput-object v2, v1, Lr4/q7;->l:Lr4/x7;

    iget-object v3, v1, Lr4/q7;->z:Lr4/dg3;

    iget v3, v3, Lr4/dg3;->a:I

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lr4/x7;->b(I)V

    new-instance v4, Lr4/f8;

    invoke-static/range {p1 .. p1}, Lr4/m7;->a(Lr4/m7;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lr4/f8;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lr4/q7;->m:Lr4/f8;

    new-instance v4, Lr4/g8;

    invoke-static/range {p1 .. p1}, Lr4/m7;->a(Lr4/m7;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lr4/g8;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lr4/q7;->n:Lr4/g8;

    invoke-static {v2}, Lr4/q7;->T(Lr4/x7;)Lr4/m3;

    move-result-object v2

    iput-object v2, v1, Lr4/q7;->F:Lr4/m3;

    sget-object v2, Lr4/pa4;->e:Lr4/pa4;

    iput-object v2, v1, Lr4/q7;->G:Lr4/pa4;

    iget v2, v1, Lr4/q7;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4, v2}, Lr4/q7;->S(IILjava/lang/Object;)V

    iget v2, v1, Lr4/q7;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v4, v2}, Lr4/q7;->S(IILjava/lang/Object;)V

    iget-object v2, v1, Lr4/q7;->z:Lr4/dg3;

    invoke-virtual {v1, v5, v3, v2}, Lr4/q7;->S(IILjava/lang/Object;)V

    iget v2, v1, Lr4/q7;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v6, v3, v2}, Lr4/q7;->S(IILjava/lang/Object;)V

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v6, v3, v2}, Lr4/q7;->S(IILjava/lang/Object;)V

    const/16 v2, 0x9

    iget-boolean v3, v1, Lr4/q7;->B:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v5, v2, v3}, Lr4/q7;->S(IILjava/lang/Object;)V

    move-object/from16 v2, v38

    const/4 v3, 0x7

    invoke-virtual {v1, v6, v3, v2}, Lr4/q7;->S(IILjava/lang/Object;)V

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4, v2}, Lr4/q7;->S(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lr4/ma;->a()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_1
    iget-object v2, v1, Lr4/q7;->c:Lr4/ma;

    invoke-virtual {v2}, Lr4/ma;->a()Z

    throw v0
.end method

.method public static synthetic A(Lr4/q7;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr4/q7;->K(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic B(Lr4/q7;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/q7;->M(II)V

    return-void
.end method

.method public static synthetic C(Lr4/q7;)V
    .locals 0

    invoke-virtual {p0}, Lr4/q7;->N()V

    return-void
.end method

.method public static synthetic D(Lr4/q7;)V
    .locals 3

    iget-object v0, p0, Lr4/q7;->i:Lr4/c41;

    iget-boolean v1, p0, Lr4/q7;->B:Z

    invoke-virtual {v0, v1}, Lr4/c41;->p(Z)V

    iget-object v0, p0, Lr4/q7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/w6;

    iget-boolean v2, p0, Lr4/q7;->B:Z

    invoke-interface {v1, v2}, Lr4/w6;->p(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic F(Lr4/q7;ZII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lr4/q7;->Q(ZII)V

    return-void
.end method

.method public static synthetic H(Lr4/q7;)V
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->j()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->x()Z

    invoke-virtual {p0}, Lr4/q7;->n()Z

    invoke-virtual {p0}, Lr4/q7;->n()Z

    return-void
.end method

.method public static synthetic I(Lr4/x7;)Lr4/m3;
    .locals 0

    invoke-static {p0}, Lr4/q7;->T(Lr4/x7;)Lr4/m3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lr4/q7;->U(ZI)I

    move-result p0

    return p0
.end method

.method public static T(Lr4/x7;)Lr4/m3;
    .locals 3

    new-instance v0, Lr4/m3;

    invoke-virtual {p0}, Lr4/x7;->c()I

    move-result v1

    invoke-virtual {p0}, Lr4/x7;->d()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lr4/m3;-><init>(III)V

    return-object v0
.end method

.method public static U(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method public static synthetic V(Lr4/q7;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lr4/q7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic W(Lr4/q7;)Lr4/c41;
    .locals 0

    iget-object p0, p0, Lr4/q7;->i:Lr4/c41;

    return-object p0
.end method

.method public static synthetic X(Lr4/q7;)Lr4/x7;
    .locals 0

    iget-object p0, p0, Lr4/q7;->l:Lr4/x7;

    return-object p0
.end method

.method public static synthetic Y(Lr4/q7;Lr4/e5;)Lr4/e5;
    .locals 0

    iput-object p1, p0, Lr4/q7;->o:Lr4/e5;

    return-object p1
.end method

.method public static synthetic Z(Lr4/q7;Lr4/e5;)Lr4/e5;
    .locals 0

    iput-object p1, p0, Lr4/q7;->p:Lr4/e5;

    return-object p1
.end method

.method public static synthetic a0(Lr4/q7;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/q7;->r:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b0(Lr4/q7;Lr4/gp;)Lr4/gp;
    .locals 0

    iput-object p1, p0, Lr4/q7;->w:Lr4/gp;

    return-object p1
.end method

.method public static synthetic c0(Lr4/q7;Lr4/gp;)Lr4/gp;
    .locals 0

    iput-object p1, p0, Lr4/q7;->x:Lr4/gp;

    return-object p1
.end method

.method public static synthetic d0(Lr4/q7;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/q7;->B:Z

    return p0
.end method

.method public static synthetic e0(Lr4/q7;Z)Z
    .locals 0

    iput-boolean p1, p0, Lr4/q7;->B:Z

    return p1
.end method

.method public static synthetic f0(Lr4/q7;)Lr4/m3;
    .locals 0

    iget-object p0, p0, Lr4/q7;->F:Lr4/m3;

    return-object p0
.end method

.method public static synthetic g0(Lr4/q7;Lr4/m3;)Lr4/m3;
    .locals 0

    iput-object p1, p0, Lr4/q7;->F:Lr4/m3;

    return-object p1
.end method

.method public static synthetic h0(Lr4/q7;Lr4/pa4;)Lr4/pa4;
    .locals 0

    iput-object p1, p0, Lr4/q7;->G:Lr4/pa4;

    return-object p1
.end method

.method public static synthetic x(Lr4/q7;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, v0}, Lr4/q7;->K(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/q7;->s:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final E()I
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->E()I

    move-result v0

    return v0
.end method

.method public final G()Lr4/e8;
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->G()Lr4/e8;

    move-result-object v0

    return-object v0
.end method

.method public final K(Ljava/lang/Object;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lr4/q7;->b:[Lr4/g7;

    array-length v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    invoke-interface {v6}, Lr4/g7;->G()I

    move-result v7

    if-ne v7, v4, :cond_0

    iget-object v4, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v4, v6}, Lr4/n4;->N(Lr4/c7;)Lr4/d7;

    move-result-object v4

    invoke-virtual {v4, v5}, Lr4/d7;->b(I)Lr4/d7;

    invoke-virtual {v4, p1}, Lr4/d7;->d(Ljava/lang/Object;)Lr4/d7;

    invoke-virtual {v4}, Lr4/d7;->g()Lr4/d7;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/q7;->r:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/d7;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Lr4/d7;->j(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object v0, p0, Lr4/q7;->r:Ljava/lang/Object;

    iget-object v1, p0, Lr4/q7;->s:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/q7;->s:Landroid/view/Surface;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_3
    iput-object p1, p0, Lr4/q7;->r:Ljava/lang/Object;

    if-eqz v5, :cond_5

    iget-object p1, p0, Lr4/q7;->e:Lr4/n4;

    new-instance v0, Lr4/a5;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lr4/a5;-><init>(I)V

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lr4/o3;->c(Ljava/lang/RuntimeException;I)Lr4/o3;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lr4/n4;->K(ZLr4/o3;)V

    :cond_5
    return-void
.end method

.method public final L()J
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final M(II)V
    .locals 2

    iget v0, p0, Lr4/q7;->u:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lr4/q7;->v:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lr4/q7;->u:I

    iput p2, p0, Lr4/q7;->v:I

    iget-object v0, p0, Lr4/q7;->i:Lr4/c41;

    invoke-virtual {v0, p1, p2}, Lr4/c41;->r(II)V

    iget-object v0, p0, Lr4/q7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/w6;

    invoke-interface {v1, p1, p2}, Lr4/w6;->r(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final N()V
    .locals 3

    iget v0, p0, Lr4/q7;->A:F

    iget-object v1, p0, Lr4/q7;->k:Lr4/a3;

    invoke-virtual {v1}, Lr4/a3;->a()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Lr4/q7;->S(IILjava/lang/Object;)V

    return-void
.end method

.method public final O()J
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public final P()I
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->P()I

    move-result v0

    return v0
.end method

.method public final Q(ZII)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object p2, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {p2, p1, v0, p3}, Lr4/n4;->I(ZII)V

    return-void
.end method

.method public final R()V
    .locals 4

    iget-object v0, p0, Lr4/q7;->c:Lr4/ma;

    invoke-virtual {v0}, Lr4/ma;->d()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v1}, Lr4/n4;->A()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v1}, Lr4/n4;->A()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Lr4/lc;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lr4/q7;->D:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lr4/q7;->E:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lr4/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lr4/q7;->E:Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final S(IILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lr4/q7;->b:[Lr4/g7;

    array-length v1, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-interface {v2}, Lr4/g7;->G()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v3, v2}, Lr4/n4;->N(Lr4/c7;)Lr4/d7;

    move-result-object v2

    invoke-virtual {v2, p2}, Lr4/d7;->b(I)Lr4/d7;

    invoke-virtual {v2, p3}, Lr4/d7;->d(Ljava/lang/Object;)Lr4/d7;

    invoke-virtual {v2}, Lr4/d7;->g()Lr4/d7;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(IJ)V
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->i:Lr4/c41;

    invoke-virtual {v0}, Lr4/c41;->S()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0, p1, p2, p3}, Lr4/n4;->a(IJ)V

    return-void
.end method

.method public final b(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object p1, p0, Lr4/q7;->k:Lr4/a3;

    invoke-virtual {p0}, Lr4/q7;->n()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lr4/a3;->b(ZI)I

    iget-object p1, p0, Lr4/q7;->e:Lr4/n4;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lr4/n4;->K(ZLr4/o3;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr4/q7;->C:Ljava/util/List;

    return-void
.end method

.method public final g(F)V
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lr4/lc;->e0(FFF)F

    move-result p1

    iget v0, p0, Lr4/q7;->A:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lr4/q7;->A:F

    invoke-virtual {p0}, Lr4/q7;->N()V

    iget-object v0, p0, Lr4/q7;->i:Lr4/c41;

    invoke-virtual {v0, p1}, Lr4/c41;->u(F)V

    iget-object v0, p0, Lr4/q7;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/w6;

    invoke-interface {v1, p1}, Lr4/w6;->u(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(Lr4/f61;)V
    .locals 1

    iget-object v0, p0, Lr4/q7;->i:Lr4/c41;

    invoke-virtual {v0, p1}, Lr4/c41;->H(Lr4/f61;)V

    return-void
.end method

.method public final i(Lr4/f61;)V
    .locals 1

    iget-object v0, p0, Lr4/q7;->i:Lr4/c41;

    invoke-virtual {v0, p1}, Lr4/c41;->O(Lr4/f61;)V

    return-void
.end method

.method public final i0(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Lr4/q7;->R()V

    invoke-virtual {p0, p1}, Lr4/q7;->K(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1, p1}, Lr4/q7;->M(II)V

    return-void
.end method

.method public final j()I
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->D()I

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Lr4/q7;->R()V

    invoke-virtual {p0}, Lr4/q7;->n()Z

    move-result v0

    iget-object v1, p0, Lr4/q7;->k:Lr4/a3;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lr4/a3;->b(ZI)I

    move-result v1

    invoke-static {v0, v1}, Lr4/q7;->U(ZI)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lr4/q7;->Q(ZII)V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->F()V

    return-void
.end method

.method public final l(Lr4/ht3;)V
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lr4/n4;->H(Ljava/util/List;Z)V

    return-void
.end method

.method public final m(Z)V
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->k:Lr4/a3;

    invoke-virtual {p0}, Lr4/q7;->j()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lr4/a3;->b(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lr4/q7;->U(ZI)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lr4/q7;->Q(ZII)V

    return-void
.end method

.method public final n()Z
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->J()Z

    move-result v0

    return v0
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Lr4/q7;->R()V

    sget v0, Lr4/lc;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lr4/q7;->q:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lr4/q7;->q:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lr4/q7;->l:Lr4/x7;

    invoke-virtual {v0}, Lr4/x7;->e()V

    iget-object v0, p0, Lr4/q7;->k:Lr4/a3;

    invoke-virtual {v0}, Lr4/a3;->c()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->M()V

    iget-object v0, p0, Lr4/q7;->i:Lr4/c41;

    invoke-virtual {v0}, Lr4/c41;->Q()V

    iget-object v0, p0, Lr4/q7;->s:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lr4/q7;->s:Landroid/view/Surface;

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr4/q7;->C:Ljava/util/List;

    return-void
.end method

.method public final p()I
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->g()I

    const/4 v0, 0x2

    return v0
.end method

.method public final s()J
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->Q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()I
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->t()I

    move-result v0

    return v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->R()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/q7;->D:Z

    return-void
.end method

.method public final y()I
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->y()I

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lr4/q7;->R()V

    iget-object v0, p0, Lr4/q7;->e:Lr4/n4;

    invoke-virtual {v0}, Lr4/n4;->z()Z

    move-result v0

    return v0
.end method
