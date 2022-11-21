.class public abstract Lr4/f53;
.super Lr4/c3;
.source "SourceFile"


# static fields
.field public static final L0:[B


# instance fields
.field public final A:Lr4/i4;

.field public A0:J

.field public final B:Lr4/i4;

.field public B0:Z

.field public final C:Lr4/zx2;

.field public C0:Z

.field public final D:Lr4/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ec<",
            "Lr4/e5;",
            ">;"
        }
    .end annotation
.end field

.field public D0:Z

.field public final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public E0:Lr4/gp;

.field public final F:Landroid/media/MediaCodec$BufferInfo;

.field public F0:J

.field public final G:[J

.field public G0:J

.field public final H:[J

.field public H0:I

.field public final I:[J

.field public I0:Lr4/rn3;

.field public J:Lr4/e5;

.field public J0:Lr4/vu2;

.field public K:Lr4/e5;

.field public K0:Lr4/vu2;

.field public L:Landroid/media/MediaCrypto;

.field public M:Z

.field public N:J

.field public O:F

.field public P:F

.field public Q:Lr4/e5;

.field public R:Landroid/media/MediaFormat;

.field public S:Z

.field public T:F

.field public U:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/e33;",
            ">;"
        }
    .end annotation
.end field

.field public V:Lr4/f43;

.field public W:Lr4/e33;

.field public X:I

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Lr4/az2;

.field public j0:J

.field public k0:I

.field public l0:I

.field public m0:Ljava/nio/ByteBuffer;

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public t0:I

.field public u0:I

.field public v0:I

.field public final w:Lr4/c13;

.field public w0:Z

.field public final x:Lr4/u73;

.field public x0:Z

.field public final y:F

.field public y0:Z

.field public final z:Lr4/i4;

.field public z0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lr4/f53;->L0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILr4/c13;Lr4/u73;ZF)V
    .locals 2

    invoke-direct {p0, p1}, Lr4/c3;-><init>(I)V

    iput-object p2, p0, Lr4/f53;->w:Lr4/c13;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lr4/f53;->x:Lr4/u73;

    iput p5, p0, Lr4/f53;->y:F

    new-instance p1, Lr4/i4;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lr4/i4;-><init>(II)V

    iput-object p1, p0, Lr4/f53;->z:Lr4/i4;

    new-instance p1, Lr4/i4;

    invoke-direct {p1, p2, p2}, Lr4/i4;-><init>(II)V

    iput-object p1, p0, Lr4/f53;->A:Lr4/i4;

    new-instance p1, Lr4/i4;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lr4/i4;-><init>(II)V

    iput-object p1, p0, Lr4/f53;->B:Lr4/i4;

    new-instance p1, Lr4/zx2;

    invoke-direct {p1}, Lr4/zx2;-><init>()V

    iput-object p1, p0, Lr4/f53;->C:Lr4/zx2;

    new-instance p3, Lr4/ec;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lr4/ec;-><init>(I)V

    iput-object p3, p0, Lr4/f53;->D:Lr4/ec;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lr4/f53;->E:Ljava/util/ArrayList;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lr4/f53;->O:F

    iput p3, p0, Lr4/f53;->P:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/f53;->N:J

    new-array p3, p4, [J

    iput-object p3, p0, Lr4/f53;->G:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lr4/f53;->H:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lr4/f53;->I:[J

    iput-wide v0, p0, Lr4/f53;->F0:J

    iput-wide v0, p0, Lr4/f53;->G0:J

    invoke-virtual {p1, p2}, Lr4/i4;->i(I)V

    iget-object p1, p1, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lr4/f53;->T:F

    iput p2, p0, Lr4/f53;->X:I

    iput p2, p0, Lr4/f53;->t0:I

    const/4 p1, -0x1

    iput p1, p0, Lr4/f53;->k0:I

    iput p1, p0, Lr4/f53;->l0:I

    iput-wide v0, p0, Lr4/f53;->j0:J

    iput-wide v0, p0, Lr4/f53;->z0:J

    iput-wide v0, p0, Lr4/f53;->A0:J

    iput p2, p0, Lr4/f53;->u0:I

    iput p2, p0, Lr4/f53;->v0:I

    return-void
.end method

.method public static i0(Lr4/e5;)Z
    .locals 0

    iget p0, p0, Lr4/e5;->E:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final k0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/f53;->r0:Z

    iget-object v1, p0, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v1}, Lr4/qb4;->a()V

    iget-object v1, p0, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v1}, Lr4/qb4;->a()V

    iput-boolean v0, p0, Lr4/f53;->q0:Z

    iput-boolean v0, p0, Lr4/f53;->p0:Z

    return-void
.end method

.method private final s0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lr4/f53;->I0:Lr4/rn3;

    invoke-virtual {v0}, Lr4/rn3;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lr4/f53;->P()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lr4/f53;->P()V

    throw v0
.end method


# virtual methods
.method public final A()V
    .locals 16

    move-object/from16 v7, p0

    iget-object v0, v7, Lr4/f53;->I0:Lr4/rn3;

    if-nez v0, :cond_2a

    iget-boolean v0, v7, Lr4/f53;->p0:Z

    if-nez v0, :cond_2a

    iget-object v0, v7, Lr4/f53;->J:Lr4/e5;

    if-nez v0, :cond_0

    goto/16 :goto_1a

    :cond_0
    iget-object v1, v7, Lr4/f53;->K0:Lr4/vu2;

    const/4 v8, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v7, v0}, Lr4/f53;->v0(Lr4/e5;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lr4/f53;->J:Lr4/e5;

    invoke-direct/range {p0 .. p0}, Lr4/f53;->k0()V

    iget-object v0, v0, Lr4/e5;->l:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0, v8}, Lr4/zx2;->m(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lr4/f53;->C:Lr4/zx2;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lr4/zx2;->m(I)V

    :goto_0
    iput-boolean v8, v7, Lr4/f53;->p0:Z

    return-void

    :cond_2
    iget-object v0, v7, Lr4/f53;->K0:Lr4/vu2;

    iput-object v0, v7, Lr4/f53;->J0:Lr4/vu2;

    iget-object v1, v7, Lr4/f53;->J:Lr4/e5;

    iget-object v2, v1, Lr4/e5;->l:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    sget-boolean v2, Lr4/wv2;->a:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lr4/vu2;->a()Lr4/mm2;

    move-result-object v0

    iget-object v1, v7, Lr4/f53;->J:Lr4/e5;

    iget v2, v0, Lr4/mm2;->a:I

    invoke-virtual {v7, v0, v1, v9, v2}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    :try_start_0
    iget-object v0, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lr4/f43; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v10, 0x0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, v7, Lr4/f53;->x:Lr4/u73;

    invoke-virtual {v7, v0, v1, v9}, Lr4/f53;->u0(Lr4/u73;Lr4/e5;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/e33;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v10, v7, Lr4/f53;->V:Lr4/f43;
    :try_end_1
    .catch Lr4/ae3; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lr4/f43; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lr4/f43;

    iget-object v2, v7, Lr4/f53;->J:Lr4/e5;

    const v3, -0xc34e

    invoke-direct {v1, v2, v0, v9, v3}, Lr4/f43;-><init>(Lr4/e5;Ljava/lang/Throwable;ZI)V

    throw v1

    :cond_6
    :goto_2
    iget-object v0, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    :goto_3
    iget-object v0, v7, Lr4/f53;->I0:Lr4/rn3;

    if-nez v0, :cond_28

    iget-object v0, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lr4/e33;

    invoke-virtual {v7, v11}, Lr4/f53;->D(Lr4/e33;)Z

    move-result v0
    :try_end_2
    .catch Lr4/f43; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_3
    iget-object v2, v11, Lr4/e33;->a:Ljava/lang/String;

    sget v0, Lr4/lc;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_8

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_4

    :cond_8
    iget v4, v7, Lr4/f53;->P:F

    iget-object v5, v7, Lr4/f53;->J:Lr4/e5;

    invoke-virtual/range {p0 .. p0}, Lr4/c3;->g()[Lr4/e5;

    move-result-object v6

    invoke-virtual {v7, v4, v5, v6}, Lr4/f53;->y0(FLr4/e5;[Lr4/e5;)F

    move-result v4

    :goto_4
    iget v5, v7, Lr4/f53;->y:F

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_9

    goto :goto_5

    :cond_9
    move v1, v4

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const-string v13, "createCodec:"

    if-eqz v12, :cond_a

    :try_start_4
    invoke-virtual {v13, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_a
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v6}, Lr4/gc;->a(Ljava/lang/String;)V

    iget-object v6, v7, Lr4/f53;->J:Lr4/e5;

    invoke-virtual {v7, v11, v6, v10, v1}, Lr4/f53;->w0(Lr4/e33;Lr4/e5;Landroid/media/MediaCrypto;F)Lr4/b03;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v12, v6, Lr4/b03;->a:Lr4/e33;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    iget-object v12, v12, Lr4/e33;->a:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_b
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    :goto_7
    invoke-static {v13}, Lr4/gc;->a(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v12

    invoke-static {}, Lr4/gc;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    const-string v13, "configureCodec"

    invoke-static {v13}, Lr4/gc;->a(Ljava/lang/String;)V

    iget-object v13, v6, Lr4/b03;->b:Landroid/media/MediaFormat;

    iget-object v6, v6, Lr4/b03;->d:Landroid/view/Surface;

    invoke-virtual {v12, v13, v6, v10, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lr4/gc;->b()V

    const-string v6, "startCodec"

    invoke-static {v6}, Lr4/gc;->a(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lr4/gc;->b()V

    new-instance v6, Lr4/rn3;

    invoke-direct {v6, v12, v10, v10}, Lr4/rn3;-><init>(Landroid/media/MediaCodec;Landroid/view/Surface;Lr4/om3;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-object v6, v7, Lr4/f53;->I0:Lr4/rn3;

    iput-object v11, v7, Lr4/f53;->W:Lr4/e33;

    iput v1, v7, Lr4/f53;->T:F

    iget-object v1, v7, Lr4/f53;->J:Lr4/e5;

    iput-object v1, v7, Lr4/f53;->Q:Lr4/e5;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const-string v1, "OMX.Exynos.avc.dec.secure"

    const/16 v6, 0x19

    if-gt v0, v6, :cond_d

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    sget-object v15, Lr4/lc;->d:Ljava/lang/String;

    const-string v10, "SM-T585"

    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "SM-A510"

    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "SM-A520"

    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "SM-J700"

    invoke-virtual {v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    const/4 v10, 0x2

    goto :goto_8

    :cond_d
    const/16 v10, 0x18

    if-ge v0, v10, :cond_10

    const-string v10, "OMX.Nvidia.h264.decode"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_e
    const-string v10, "flounder"

    sget-object v15, Lr4/lc;->b:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "flounder_lte"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "grouper"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "tilapia"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    const/4 v10, 0x1

    goto :goto_8

    :cond_10
    const/4 v10, 0x0

    :goto_8
    iput v10, v7, Lr4/f53;->X:I

    iget-object v10, v7, Lr4/f53;->Q:Lr4/e5;

    const/16 v15, 0x15

    if-ge v0, v15, :cond_11

    iget-object v10, v10, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    iput-boolean v10, v7, Lr4/f53;->Y:Z

    const/16 v10, 0x13

    const/16 v9, 0x12

    if-lt v0, v9, :cond_14

    if-ne v0, v9, :cond_12

    const-string v14, "OMX.SEC.avc.dec"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    const-string v14, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    :cond_12
    if-ne v0, v10, :cond_13

    sget-object v14, Lr4/lc;->d:Ljava/lang/String;

    const-string v6, "SM-G800"

    invoke-virtual {v14, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "OMX.Exynos.avc.dec"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, v7, Lr4/f53;->Z:Z

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_15

    const-string v6, "c2.android.aac.decoder"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_c

    :cond_15
    const/4 v6, 0x0

    :goto_c
    iput-boolean v6, v7, Lr4/f53;->a0:Z

    if-gt v0, v3, :cond_17

    const-string v3, "OMX.google.vorbis.decoder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v3, 0x1

    goto :goto_f

    :cond_17
    :goto_e
    if-gt v0, v10, :cond_19

    const-string v3, "hb2000"

    sget-object v6, Lr4/lc;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "stvm8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    const-string v3, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    :goto_f
    iput-boolean v3, v7, Lr4/f53;->b0:Z

    if-ne v0, v15, :cond_1a

    const-string v3, "OMX.google.aac.decoder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_10

    :cond_1a
    const/4 v3, 0x0

    :goto_10
    iput-boolean v3, v7, Lr4/f53;->c0:Z

    if-ge v0, v15, :cond_1c

    const-string v3, "OMX.SEC.mp3.dec"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "samsung"

    sget-object v6, Lr4/lc;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Lr4/lc;->b:Ljava/lang/String;

    const-string v6, "baffin"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "grand"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "fortuna"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "gprimelte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "j2y18lte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "ms01"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    const/4 v3, 0x1

    goto :goto_11

    :cond_1c
    const/4 v3, 0x0

    :goto_11
    iput-boolean v3, v7, Lr4/f53;->d0:Z

    iget-object v3, v7, Lr4/f53;->Q:Lr4/e5;

    if-gt v0, v9, :cond_1d

    iget v3, v3, Lr4/e5;->y:I

    if-ne v3, v8, :cond_1d

    const-string v3, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_12

    :cond_1d
    const/4 v3, 0x0

    :goto_12
    iput-boolean v3, v7, Lr4/f53;->e0:Z

    iget-object v3, v11, Lr4/e33;->a:Ljava/lang/String;

    const/16 v6, 0x19

    if-gt v0, v6, :cond_1f

    const-string v6, "OMX.rk.video_decoder.avc"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_14

    :cond_1e
    :goto_13
    const/4 v0, 0x1

    goto :goto_15

    :cond_1f
    :goto_14
    const/16 v6, 0x11

    if-gt v0, v6, :cond_20

    const-string v6, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    :cond_20
    if-gt v0, v1, :cond_21

    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_21
    const-string v0, "Amazon"

    sget-object v1, Lr4/lc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "AFTS"

    sget-object v1, Lr4/lc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, v11, Lr4/e33;->f:Z

    if-eqz v0, :cond_22

    goto :goto_13

    :cond_22
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, v7, Lr4/f53;->h0:Z

    const-string v0, "c2.android.mp3.decoder"

    iget-object v1, v11, Lr4/e33;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lr4/az2;

    invoke-direct {v0}, Lr4/az2;-><init>()V

    iput-object v0, v7, Lr4/f53;->i0:Lr4/az2;

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lr4/c3;->F0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    add-long/2addr v0, v9

    iput-wide v0, v7, Lr4/f53;->j0:J

    :cond_24
    iget-object v0, v7, Lr4/f53;->E0:Lr4/gp;

    iget v1, v0, Lr4/gp;->a:I

    add-int/2addr v1, v8

    iput v1, v0, Lr4/gp;->a:I

    sub-long v9, v12, v4

    move-object/from16 v1, p0

    move-wide v3, v12

    move-wide v5, v9

    invoke-virtual/range {v1 .. v6}, Lr4/f53;->z0(Ljava/lang/String;JJ)V

    goto :goto_19

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    goto :goto_17

    :catch_3
    move-exception v0

    goto :goto_16

    :catch_4
    move-exception v0

    :goto_16
    const/4 v12, 0x0

    :goto_17
    if-eqz v12, :cond_25

    invoke-virtual {v12}, Landroid/media/MediaCodec;->release()V

    :cond_25
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    :try_start_a
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCodecRenderer"

    const-string v3, "Failed to initialize decoder: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lr4/eb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lr4/f43;

    iget-object v2, v7, Lr4/f53;->J:Lr4/e5;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v11}, Lr4/f43;-><init>(Lr4/e5;Ljava/lang/Throwable;ZLr4/e33;)V

    invoke-virtual {v7, v1}, Lr4/f53;->B0(Ljava/lang/Exception;)V

    iget-object v0, v7, Lr4/f53;->V:Lr4/f43;

    if-nez v0, :cond_26

    iput-object v1, v7, Lr4/f53;->V:Lr4/f43;

    goto :goto_18

    :cond_26
    invoke-static {v0, v1}, Lr4/f43;->a(Lr4/f43;Lr4/f43;)Lr4/f43;

    move-result-object v0

    iput-object v0, v7, Lr4/f53;->V:Lr4/f43;

    :goto_18
    iget-object v0, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    :goto_19
    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_27
    iget-object v0, v7, Lr4/f53;->V:Lr4/f43;

    throw v0

    :cond_28
    move-object v1, v10

    iput-object v1, v7, Lr4/f53;->U:Ljava/util/ArrayDeque;

    return-void

    :cond_29
    new-instance v0, Lr4/f43;

    iget-object v1, v7, Lr4/f53;->J:Lr4/e5;

    const v2, -0xc34f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lr4/f43;-><init>(Lr4/e5;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_a
    .catch Lr4/f43; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    move-exception v0

    iget-object v1, v7, Lr4/f53;->J:Lr4/e5;

    const/16 v2, 0xfa1

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v1, v3, v2}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object v0

    throw v0

    :cond_2a
    :goto_1a
    return-void
.end method

.method public abstract A0(Ljava/lang/String;)V
.end method

.method public abstract B0(Ljava/lang/Exception;)V
.end method

.method public C0(Lr4/f5;)Lr4/iq;
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/f53;->D0:Z

    iget-object v4, p1, Lr4/f5;->a:Lr4/e5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v4, Lr4/e5;->l:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    iget-object p1, p1, Lr4/f5;->b:Lr4/vu2;

    iput-object p1, p0, Lr4/f53;->K0:Lr4/vu2;

    iput-object v4, p0, Lr4/f53;->J:Lr4/e5;

    iget-boolean v1, p0, Lr4/f53;->p0:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lr4/f53;->r0:Z

    return-object v3

    :cond_0
    iget-object v1, p0, Lr4/f53;->I0:Lr4/rn3;

    if-nez v1, :cond_1

    iput-object v3, p0, Lr4/f53;->U:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lr4/f53;->A()V

    return-object v3

    :cond_1
    iget-object v3, p0, Lr4/f53;->W:Lr4/e33;

    iget-object v5, p0, Lr4/f53;->Q:Lr4/e5;

    iget-object v6, p0, Lr4/f53;->J0:Lr4/vu2;

    const/16 v7, 0x17

    if-ne v6, p1, :cond_12

    if-eq p1, v6, :cond_3

    sget v8, Lr4/lc;->a:I

    if-lt v8, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Lr4/ja;->d(Z)V

    invoke-virtual {p0, v3, v5, v4}, Lr4/f53;->x0(Lr4/e33;Lr4/e5;Lr4/e5;)Lr4/iq;

    move-result-object v7

    iget v8, v7, Lr4/iq;->d:I

    const/4 v9, 0x3

    const/16 v10, 0x10

    const/4 v11, 0x2

    if-eqz v8, :cond_e

    if-eq v8, v0, :cond_9

    if-eq v8, v11, :cond_5

    invoke-virtual {p0, v4}, Lr4/f53;->l0(Lr4/e5;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iput-object v4, p0, Lr4/f53;->Q:Lr4/e5;

    if-eq p1, v6, :cond_f

    invoke-virtual {p0}, Lr4/f53;->m0()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v4}, Lr4/f53;->l0(Lr4/e5;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v0, p0, Lr4/f53;->s0:Z

    iput v0, p0, Lr4/f53;->t0:I

    iget v8, p0, Lr4/f53;->X:I

    if-eq v8, v11, :cond_8

    if-ne v8, v0, :cond_7

    iget v8, v4, Lr4/e5;->q:I

    iget v10, v5, Lr4/e5;->q:I

    if-ne v8, v10, :cond_7

    iget v8, v4, Lr4/e5;->r:I

    iget v10, v5, Lr4/e5;->r:I

    if-ne v8, v10, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    iput-boolean v0, p0, Lr4/f53;->f0:Z

    iput-object v4, p0, Lr4/f53;->Q:Lr4/e5;

    if-eq p1, v6, :cond_f

    invoke-virtual {p0}, Lr4/f53;->m0()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v4}, Lr4/f53;->l0(Lr4/e5;)Z

    move-result v8

    if-nez v8, :cond_a

    :goto_3
    const/16 v6, 0x10

    goto :goto_7

    :cond_a
    iput-object v4, p0, Lr4/f53;->Q:Lr4/e5;

    if-eq p1, v6, :cond_b

    invoke-virtual {p0}, Lr4/f53;->m0()Z

    move-result p1

    if-nez p1, :cond_f

    :goto_4
    const/4 v6, 0x2

    goto :goto_7

    :cond_b
    iget-boolean p1, p0, Lr4/f53;->w0:Z

    if-eqz p1, :cond_f

    iput v0, p0, Lr4/f53;->u0:I

    iget-boolean p1, p0, Lr4/f53;->Z:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lr4/f53;->b0:Z

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    iput v0, p0, Lr4/f53;->v0:I

    goto :goto_6

    :cond_d
    :goto_5
    iput v9, p0, Lr4/f53;->v0:I

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lr4/f53;->n0()V

    :cond_f
    :goto_6
    const/4 v6, 0x0

    :goto_7
    iget p1, v7, Lr4/iq;->d:I

    if-eqz p1, :cond_11

    iget-object p1, p0, Lr4/f53;->I0:Lr4/rn3;

    if-ne p1, v1, :cond_10

    iget p1, p0, Lr4/f53;->v0:I

    if-ne p1, v9, :cond_11

    :cond_10
    new-instance p1, Lr4/iq;

    iget-object v2, v3, Lr4/e33;->a:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lr4/iq;-><init>(Ljava/lang/String;Lr4/e5;Lr4/e5;II)V

    return-object p1

    :cond_11
    return-object v7

    :cond_12
    if-eqz p1, :cond_14

    if-nez v6, :cond_13

    goto :goto_8

    :cond_13
    sget p1, Lr4/lc;->a:I

    if-lt p1, v7, :cond_14

    sget-object p1, Lr4/e3;->e:Ljava/util/UUID;

    sget-object v0, Lr4/e3;->a:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    :cond_14
    :goto_8
    invoke-virtual {p0}, Lr4/f53;->n0()V

    new-instance p1, Lr4/iq;

    iget-object v2, v3, Lr4/e33;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x80

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lr4/iq;-><init>(Ljava/lang/String;Lr4/e5;Lr4/e5;II)V

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v4, v2, v0}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public D(Lr4/e33;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract D0(Lr4/e5;Landroid/media/MediaFormat;)V
.end method

.method public final E0(I)Z
    .locals 3

    invoke-virtual {p0}, Lr4/c3;->f()Lr4/f5;

    move-result-object v0

    iget-object v1, p0, Lr4/f53;->z:Lr4/i4;

    invoke-virtual {v1}, Lr4/qb4;->a()V

    iget-object v1, p0, Lr4/f53;->z:Lr4/i4;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lr4/c3;->k(Lr4/f5;Lr4/i4;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lr4/f53;->C0(Lr4/f5;)Lr4/iq;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lr4/f53;->z:Lr4/i4;

    invoke-virtual {p1}, Lr4/qb4;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lr4/f53;->B0:Z

    invoke-virtual {p0}, Lr4/f53;->o0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final G0(J)Z
    .locals 5

    iget-wide v0, p0, Lr4/f53;->N:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lr4/f53;->N:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final H0()Z
    .locals 1

    iget v0, p0, Lr4/f53;->l0:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Lr4/e33;
    .locals 1

    iget-object v0, p0, Lr4/f53;->W:Lr4/e33;

    return-object v0
.end method

.method public final J()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lr4/f53;->C0:Z

    return v0
.end method

.method public final L()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr4/f53;->I0:Lr4/rn3;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr4/rn3;->k()V

    iget-object v1, p0, Lr4/f53;->E0:Lr4/gp;

    iget v2, v1, Lr4/gp;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lr4/gp;->b:I

    iget-object v1, p0, Lr4/f53;->W:Lr4/e33;

    iget-object v1, v1, Lr4/e33;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lr4/f53;->A0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lr4/f53;->I0:Lr4/rn3;

    iput-object v0, p0, Lr4/f53;->L:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lr4/f53;->J0:Lr4/vu2;

    invoke-virtual {p0}, Lr4/f53;->Q()V

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lr4/f53;->I0:Lr4/rn3;

    iput-object v0, p0, Lr4/f53;->L:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lr4/f53;->J0:Lr4/vu2;

    invoke-virtual {p0}, Lr4/f53;->Q()V

    throw v1
.end method

.method public final M()Z
    .locals 1

    invoke-virtual {p0}, Lr4/f53;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/f53;->A()V

    :cond_0
    return v0
.end method

.method public final N()Z
    .locals 3

    iget-object v0, p0, Lr4/f53;->I0:Lr4/rn3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lr4/f53;->v0:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lr4/f53;->Z:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lr4/f53;->a0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/f53;->y0:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lr4/f53;->b0:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lr4/f53;->x0:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lr4/f53;->s0()V

    return v1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lr4/f53;->L()V

    const/4 v0, 0x1

    return v0
.end method

.method public O()Z
    .locals 7

    iget-object v0, p0, Lr4/f53;->J:Lr4/e5;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lr4/c3;->m()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lr4/f53;->H0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v3, p0, Lr4/f53;->j0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lr4/f53;->j0:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public P()V
    .locals 4

    invoke-virtual {p0}, Lr4/f53;->u()V

    invoke-virtual {p0}, Lr4/f53;->q0()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/f53;->j0:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lr4/f53;->x0:Z

    iput-boolean v2, p0, Lr4/f53;->w0:Z

    iput-boolean v2, p0, Lr4/f53;->f0:Z

    iput-boolean v2, p0, Lr4/f53;->g0:Z

    iput-boolean v2, p0, Lr4/f53;->n0:Z

    iput-boolean v2, p0, Lr4/f53;->o0:Z

    iget-object v3, p0, Lr4/f53;->E:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lr4/f53;->z0:J

    iput-wide v0, p0, Lr4/f53;->A0:J

    iget-object v0, p0, Lr4/f53;->i0:Lr4/az2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/az2;->a()V

    :cond_0
    iput v2, p0, Lr4/f53;->u0:I

    iput v2, p0, Lr4/f53;->v0:I

    iget-boolean v0, p0, Lr4/f53;->s0:Z

    iput v0, p0, Lr4/f53;->t0:I

    return-void
.end method

.method public final Q()V
    .locals 2

    invoke-virtual {p0}, Lr4/f53;->P()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/f53;->i0:Lr4/az2;

    iput-object v0, p0, Lr4/f53;->U:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lr4/f53;->W:Lr4/e33;

    iput-object v0, p0, Lr4/f53;->Q:Lr4/e5;

    iput-object v0, p0, Lr4/f53;->R:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/f53;->S:Z

    iput-boolean v0, p0, Lr4/f53;->y0:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lr4/f53;->T:F

    iput v0, p0, Lr4/f53;->X:I

    iput-boolean v0, p0, Lr4/f53;->Y:Z

    iput-boolean v0, p0, Lr4/f53;->Z:Z

    iput-boolean v0, p0, Lr4/f53;->a0:Z

    iput-boolean v0, p0, Lr4/f53;->b0:Z

    iput-boolean v0, p0, Lr4/f53;->c0:Z

    iput-boolean v0, p0, Lr4/f53;->d0:Z

    iput-boolean v0, p0, Lr4/f53;->e0:Z

    iput-boolean v0, p0, Lr4/f53;->h0:Z

    iput-boolean v0, p0, Lr4/f53;->s0:Z

    iput v0, p0, Lr4/f53;->t0:I

    iput-boolean v0, p0, Lr4/f53;->M:Z

    return-void
.end method

.method public final U(JJ)V
    .locals 23

    move-object/from16 v15, p0

    const/4 v14, 0x1

    const/4 v13, 0x0

    :try_start_0
    iget-boolean v0, v15, Lr4/f53;->C0:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->x()V

    return-void

    :cond_0
    iget-object v0, v15, Lr4/f53;->J:Lr4/e5;

    const/4 v11, 0x2

    if-nez v0, :cond_2

    invoke-virtual {v15, v11}, Lr4/f53;->E0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->A()V

    iget-boolean v0, v15, Lr4/f53;->p0:Z

    if-eqz v0, :cond_10

    const-string v0, "bypassRender"

    invoke-static {v0}, Lr4/gc;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-boolean v0, v15, Lr4/f53;->C0:Z

    xor-int/2addr v0, v14

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0}, Lr4/zx2;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    iget-object v7, v0, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    iget v8, v15, Lr4/f53;->l0:I

    invoke-virtual {v0}, Lr4/zx2;->o()I

    move-result v10

    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    iget-wide v11, v0, Lr4/i4;->e:J

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lr4/qb4;->b()Z

    move-result v0

    iget-object v1, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v1}, Lr4/qb4;->c()Z

    move-result v16

    iget-object v4, v15, Lr4/f53;->K:Lr4/e5;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v17, v4

    move-wide/from16 v4, p3

    move v13, v0

    move/from16 v14, v16

    move-object/from16 v15, v17

    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lr4/f53;->y(JJLr4/rn3;Ljava/nio/ByteBuffer;IIIJZZLr4/e5;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    move-object/from16 v15, p0

    :try_start_2
    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0}, Lr4/zx2;->n()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lr4/f53;->f0(J)V

    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0}, Lr4/qb4;->a()V

    goto :goto_2

    :cond_4
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_f

    :cond_5
    :goto_2
    iget-boolean v0, v15, Lr4/f53;->B0:Z

    if-eqz v0, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v15, Lr4/f53;->C0:Z

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_6
    const/4 v14, 0x1

    iget-boolean v0, v15, Lr4/f53;->q0:Z

    if-eqz v0, :cond_7

    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    iget-object v1, v15, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v0, v1}, Lr4/zx2;->q(Lr4/i4;)Z

    move-result v0

    invoke-static {v0}, Lr4/ja;->d(Z)V

    const/4 v13, 0x0

    iput-boolean v13, v15, Lr4/f53;->q0:Z

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    iget-boolean v0, v15, Lr4/f53;->r0:Z

    if-eqz v0, :cond_8

    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0}, Lr4/zx2;->p()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lr4/f53;->k0()V

    iput-boolean v13, v15, Lr4/f53;->r0:Z

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->A()V

    iget-boolean v0, v15, Lr4/f53;->p0:Z

    if-eqz v0, :cond_f

    :cond_8
    iget-boolean v0, v15, Lr4/f53;->B0:Z

    xor-int/2addr v0, v14

    invoke-static {v0}, Lr4/ja;->d(Z)V

    invoke-virtual/range {p0 .. p0}, Lr4/c3;->f()Lr4/f5;

    move-result-object v0

    iget-object v1, v15, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v1}, Lr4/qb4;->a()V

    :cond_9
    iget-object v1, v15, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v1}, Lr4/qb4;->a()V

    iget-object v1, v15, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v15, v0, v1, v13}, Lr4/c3;->k(Lr4/f5;Lr4/i4;I)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_d

    const/4 v2, -0x4

    if-eq v1, v2, :cond_a

    goto :goto_4

    :cond_a
    iget-object v1, v15, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v1}, Lr4/qb4;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v14, v15, Lr4/f53;->B0:Z

    goto :goto_4

    :cond_b
    iget-boolean v1, v15, Lr4/f53;->D0:Z

    if-eqz v1, :cond_c

    iget-object v1, v15, Lr4/f53;->J:Lr4/e5;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iput-object v1, v15, Lr4/f53;->K:Lr4/e5;

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Lr4/f53;->D0(Lr4/e5;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lr4/f53;->D0:Z

    :cond_c
    iget-object v1, v15, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v1}, Lr4/i4;->k()V

    iget-object v1, v15, Lr4/f53;->C:Lr4/zx2;

    iget-object v2, v15, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {v1, v2}, Lr4/zx2;->q(Lr4/i4;)Z

    move-result v1

    if-nez v1, :cond_9

    iput-boolean v14, v15, Lr4/f53;->q0:Z

    goto :goto_4

    :cond_d
    invoke-virtual {v15, v0}, Lr4/f53;->C0(Lr4/f5;)Lr4/iq;

    :goto_4
    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0}, Lr4/zx2;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0}, Lr4/i4;->k()V

    :cond_e
    iget-object v0, v15, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {v0}, Lr4/zx2;->p()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lr4/f53;->B0:Z

    if-nez v0, :cond_3

    iget-boolean v0, v15, Lr4/f53;->r0:Z

    if-eqz v0, :cond_f

    goto/16 :goto_1

    :cond_f
    :goto_5
    invoke-static {}, Lr4/gc;->b()V

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_14

    :cond_10
    iget-object v0, v15, Lr4/f53;->I0:Lr4/rn3;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b

    if-eqz v0, :cond_29

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lr4/gc;->a(Ljava/lang/String;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->H0()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8

    if-nez v0, :cond_21

    :try_start_5
    iget-boolean v0, v15, Lr4/f53;->c0:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v15, Lr4/f53;->x0:Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_b

    if-eqz v0, :cond_12

    :try_start_6
    iget-object v0, v15, Lr4/f53;->I0:Lr4/rn3;

    iget-object v1, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1}, Lr4/rn3;->b(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8

    :catch_1
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->o0()V

    iget-boolean v0, v15, Lr4/f53;->C0:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->L()V

    :cond_11
    :goto_7
    move-wide v2, v9

    move-object v1, v15

    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_12
    iget-object v0, v15, Lr4/f53;->I0:Lr4/rn3;

    iget-object v1, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1}, Lr4/rn3;->b(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_8
    if-gez v0, :cond_17

    const/4 v1, -0x2

    if-ne v0, v1, :cond_15

    iput-boolean v14, v15, Lr4/f53;->y0:Z

    iget-object v0, v15, Lr4/f53;->I0:Lr4/rn3;

    invoke-virtual {v0}, Lr4/rn3;->c()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v15, Lr4/f53;->X:I

    if-eqz v1, :cond_13

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_13

    iput-boolean v14, v15, Lr4/f53;->g0:Z

    goto :goto_9

    :cond_13
    iget-boolean v1, v15, Lr4/f53;->e0:Z

    if-eqz v1, :cond_14

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_14
    iput-object v0, v15, Lr4/f53;->R:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lr4/f53;->S:Z

    goto :goto_9

    :cond_15
    iget-boolean v0, v15, Lr4/f53;->h0:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v15, Lr4/f53;->B0:Z

    if-nez v0, :cond_16

    iget v0, v15, Lr4/f53;->u0:I

    if-ne v0, v11, :cond_11

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->o0()V

    goto :goto_7

    :cond_17
    iget-boolean v1, v15, Lr4/f53;->g0:Z

    if-eqz v1, :cond_18

    iput-boolean v13, v15, Lr4/f53;->g0:Z

    iget-object v1, v15, Lr4/f53;->I0:Lr4/rn3;

    invoke-virtual {v1, v0, v13}, Lr4/rn3;->h(IZ)V

    :goto_9
    move-wide v2, v9

    move-object v1, v15

    const/16 v16, 0x2

    const/16 v19, 0x0

    goto/16 :goto_11

    :cond_18
    iget-object v1, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_19

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->o0()V

    goto :goto_7

    :cond_19
    iput v0, v15, Lr4/f53;->l0:I

    iget-object v1, v15, Lr4/f53;->I0:Lr4/rn3;

    invoke-virtual {v1, v0}, Lr4/rn3;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lr4/f53;->m0:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1a

    iget-object v1, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lr4/f53;->m0:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1a
    iget-boolean v0, v15, Lr4/f53;->d0:Z

    if-eqz v0, :cond_1b

    iget-object v0, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1b

    iget-wide v1, v15, Lr4/f53;->z0:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1b

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_1b
    iget-object v0, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lr4/f53;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1d

    iget-object v4, v15, Lr4/f53;->E:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_1c

    iget-object v0, v15, Lr4/f53;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_b

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, v15, Lr4/f53;->n0:Z

    iget-wide v0, v15, Lr4/f53;->A0:J

    iget-object v2, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v15, Lr4/f53;->o0:Z

    iget-object v0, v15, Lr4/f53;->D:Lr4/ec;

    invoke-virtual {v0, v2, v3}, Lr4/ec;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/e5;

    if-nez v0, :cond_1f

    iget-boolean v1, v15, Lr4/f53;->S:Z

    if-eqz v1, :cond_1f

    iget-object v0, v15, Lr4/f53;->D:Lr4/ec;

    invoke-virtual {v0}, Lr4/ec;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/e5;

    :cond_1f
    if-eqz v0, :cond_20

    iput-object v0, v15, Lr4/f53;->K:Lr4/e5;

    goto :goto_d

    :cond_20
    iget-boolean v0, v15, Lr4/f53;->S:Z

    if-eqz v0, :cond_21

    iget-object v0, v15, Lr4/f53;->K:Lr4/e5;

    if-eqz v0, :cond_21

    :goto_d
    iget-object v0, v15, Lr4/f53;->K:Lr4/e5;

    iget-object v1, v15, Lr4/f53;->R:Landroid/media/MediaFormat;

    invoke-virtual {v15, v0, v1}, Lr4/f53;->D0(Lr4/e5;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lr4/f53;->S:Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_b

    :cond_21
    :try_start_8
    iget-boolean v0, v15, Lr4/f53;->c0:Z
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v0, :cond_23

    :try_start_9
    iget-boolean v0, v15, Lr4/f53;->x0:Z
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v0, :cond_23

    :try_start_a
    iget-object v6, v15, Lr4/f53;->I0:Lr4/rn3;

    iget-object v7, v15, Lr4/f53;->m0:Ljava/nio/ByteBuffer;

    iget v8, v15, Lr4/f53;->l0:I

    iget-object v0, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v16, 0x1

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v15, Lr4/f53;->n0:Z

    iget-boolean v2, v15, Lr4/f53;->o0:Z

    iget-object v3, v15, Lr4/f53;->K:Lr4/e5;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-wide/from16 v21, v9

    move v9, v12

    move/from16 v10, v16

    const/16 v16, 0x2

    move-wide/from16 v11, v19

    const/16 v19, 0x0

    move v13, v0

    move/from16 v14, v17

    move-object/from16 v15, v18

    :try_start_b
    invoke-virtual/range {v1 .. v15}, Lr4/f53;->y(JJLr4/rn3;Ljava/nio/ByteBuffer;IIIJZZLr4/e5;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_10

    :catch_2
    move-wide/from16 v21, v9

    const/16 v19, 0x0

    :catch_3
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->o0()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v15, p0

    :try_start_d
    iget-boolean v0, v15, Lr4/f53;->C0:Z

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->L()V

    :cond_22
    move-object v1, v15

    :goto_e
    move-wide/from16 v2, v21

    goto :goto_12

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v1, p0

    goto/16 :goto_16

    :catch_5
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_13

    :cond_23
    move-wide/from16 v21, v9

    const/16 v16, 0x2

    const/16 v19, 0x0

    iget-object v6, v15, Lr4/f53;->I0:Lr4/rn3;

    iget-object v7, v15, Lr4/f53;->m0:Ljava/nio/ByteBuffer;

    iget v8, v15, Lr4/f53;->l0:I

    iget-object v0, v15, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x1

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lr4/f53;->n0:Z

    iget-boolean v14, v15, Lr4/f53;->o0:Z

    iget-object v0, v15, Lr4/f53;->K:Lr4/e5;
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v15, v0

    :try_start_e
    invoke-virtual/range {v1 .. v15}, Lr4/f53;->y(JJLr4/rn3;Ljava/nio/ByteBuffer;IIIJZZLr4/e5;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_6

    :goto_10
    if-eqz v0, :cond_26

    move-object/from16 v1, p0

    :try_start_f
    iget-object v0, v1, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lr4/f53;->f0(J)V

    iget-object v0, v1, Lr4/f53;->F:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->q0()V

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->o0()V

    goto :goto_e

    :cond_24
    move-wide/from16 v2, v21

    :goto_11
    invoke-virtual {v1, v2, v3}, Lr4/f53;->G0(J)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_12

    :cond_25
    move-object v15, v1

    move-wide v9, v2

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_6

    :cond_26
    move-object/from16 v1, p0

    goto :goto_e

    :cond_27
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lr4/f53;->r0()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v1, v2, v3}, Lr4/f53;->G0(J)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_28
    invoke-static {}, Lr4/gc;->b()V

    const/4 v2, 0x1

    goto :goto_14

    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_15

    :catch_7
    move-exception v0

    :goto_13
    move-object v1, v15

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v1, v15

    const/16 v19, 0x0

    goto :goto_15

    :cond_29
    move-object v1, v15

    const/16 v19, 0x0

    iget-object v0, v1, Lr4/f53;->E0:Lr4/gp;

    iget v2, v0, Lr4/gp;->d:I

    invoke-virtual/range {p0 .. p2}, Lr4/c3;->l(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lr4/gp;->d:I
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_a

    const/4 v2, 0x1

    :try_start_10
    invoke-virtual {v1, v2}, Lr4/f53;->E0(I)Z

    :goto_14
    iget-object v0, v1, Lr4/f53;->E0:Lr4/gp;

    invoke-virtual {v0}, Lr4/gp;->a()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_9

    return-void

    :catch_9
    move-exception v0

    goto :goto_16

    :catch_a
    move-exception v0

    :goto_15
    const/4 v2, 0x1

    goto :goto_16

    :catch_b
    move-exception v0

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    :goto_16
    sget v3, Lr4/lc;->a:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2a

    instance-of v5, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_2a

    goto :goto_17

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_2d

    aget-object v5, v5, v19

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.MediaCodec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    :goto_17
    invoke-virtual {v1, v0}, Lr4/f53;->B0(Ljava/lang/Exception;)V

    if-lt v3, v4, :cond_2b

    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_2b

    move-object v3, v0

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v14, 0x1

    goto :goto_18

    :cond_2b
    const/4 v14, 0x0

    :goto_18
    if-eqz v14, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lr4/f53;->L()V

    :cond_2c
    iget-object v2, v1, Lr4/f53;->W:Lr4/e33;

    invoke-virtual {v1, v0, v2}, Lr4/f53;->d0(Ljava/lang/Throwable;Lr4/e33;)Lr4/d23;

    move-result-object v0

    iget-object v2, v1, Lr4/f53;->J:Lr4/e5;

    const/16 v3, 0xfa3

    invoke-virtual {v1, v0, v2, v14, v3}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object v0

    throw v0

    :cond_2d
    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19
.end method

.method public a0(FF)V
    .locals 0

    iput p1, p0, Lr4/f53;->O:F

    iput p2, p0, Lr4/f53;->P:F

    iget-object p1, p0, Lr4/f53;->Q:Lr4/e5;

    invoke-virtual {p0, p1}, Lr4/f53;->l0(Lr4/e5;)Z

    return-void
.end method

.method public final d(Lr4/e5;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lr4/f53;->x:Lr4/u73;

    invoke-virtual {p0, v0, p1}, Lr4/f53;->t0(Lr4/u73;Lr4/e5;)I

    move-result p1
    :try_end_0
    .catch Lr4/ae3; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    invoke-virtual {p0, v0, p1, v1, v2}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object p1

    throw p1
.end method

.method public d0(Ljava/lang/Throwable;Lr4/e33;)Lr4/d23;
    .locals 1

    new-instance v0, Lr4/d23;

    invoke-direct {v0, p1, p2}, Lr4/d23;-><init>(Ljava/lang/Throwable;Lr4/e33;)V

    return-object v0
.end method

.method public final e([Lr4/e5;JJ)V
    .locals 5

    iget-wide v0, p0, Lr4/f53;->G0:J

    const/4 p1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lr4/f53;->F0:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr4/ja;->d(Z)V

    iput-wide p2, p0, Lr4/f53;->F0:J

    iput-wide p4, p0, Lr4/f53;->G0:J

    return-void

    :cond_1
    iget v0, p0, Lr4/f53;->H0:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lr4/f53;->H:[J

    const/16 v0, 0x9

    aget-wide v0, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/2addr v0, p1

    iput v0, p0, Lr4/f53;->H0:I

    :goto_1
    iget-object p1, p0, Lr4/f53;->G:[J

    iget v0, p0, Lr4/f53;->H0:I

    add-int/lit8 v0, v0, -0x1

    aput-wide p2, p1, v0

    iget-object p1, p0, Lr4/f53;->H:[J

    aput-wide p4, p1, v0

    iget-object p1, p0, Lr4/f53;->I:[J

    iget-wide p2, p0, Lr4/f53;->z0:J

    aput-wide p2, p1, v0

    return-void
.end method

.method public e0(Lr4/i4;)V
    .locals 0

    return-void
.end method

.method public f0(J)V
    .locals 6

    :goto_0
    iget v0, p0, Lr4/f53;->H0:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/f53;->I:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lr4/f53;->G:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lr4/f53;->F0:J

    iget-object v3, p0, Lr4/f53;->H:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lr4/f53;->G0:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr4/f53;->H0:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr4/f53;->H:[J

    iget v1, p0, Lr4/f53;->H0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr4/f53;->I:[J

    iget v1, p0, Lr4/f53;->H0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lr4/f53;->w()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g0()F
    .locals 1

    iget v0, p0, Lr4/f53;->O:F

    return v0
.end method

.method public final h0()J
    .locals 2

    iget-wide v0, p0, Lr4/f53;->G0:J

    return-wide v0
.end method

.method public final j0()Lr4/rn3;
    .locals 1

    iget-object v0, p0, Lr4/f53;->I0:Lr4/rn3;

    return-object v0
.end method

.method public final l0(Lr4/e5;)Z
    .locals 4

    sget v0, Lr4/lc;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lr4/f53;->I0:Lr4/rn3;

    if-eqz v0, :cond_6

    iget v0, p0, Lr4/f53;->v0:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Lr4/c3;->F0()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lr4/f53;->P:F

    invoke-virtual {p0}, Lr4/c3;->g()[Lr4/e5;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lr4/f53;->y0(FLr4/e5;[Lr4/e5;)F

    move-result p1

    iget v0, p0, Lr4/f53;->T:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lr4/f53;->n0()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Lr4/f53;->y:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lr4/f53;->I0:Lr4/rn3;

    invoke-virtual {v2, v0}, Lr4/rn3;->m(Landroid/os/Bundle;)V

    iput p1, p0, Lr4/f53;->T:F

    :cond_6
    :goto_1
    return v1
.end method

.method public final m0()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-boolean v0, p0, Lr4/f53;->w0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Lr4/f53;->u0:I

    iget-boolean v0, p0, Lr4/f53;->Z:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lr4/f53;->b0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lr4/f53;->v0:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lr4/f53;->v0:I

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p0}, Lr4/f53;->p0()V

    :goto_1
    return v1
.end method

.method public n(ZZ)V
    .locals 0

    new-instance p1, Lr4/gp;

    invoke-direct {p1}, Lr4/gp;-><init>()V

    iput-object p1, p0, Lr4/f53;->E0:Lr4/gp;

    return-void
.end method

.method public final n0()V
    .locals 1

    iget-boolean v0, p0, Lr4/f53;->w0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lr4/f53;->u0:I

    const/4 v0, 0x3

    iput v0, p0, Lr4/f53;->v0:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lr4/f53;->L()V

    invoke-virtual {p0}, Lr4/f53;->A()V

    return-void
.end method

.method public o(JZ)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/f53;->B0:Z

    iput-boolean p1, p0, Lr4/f53;->C0:Z

    iget-boolean p2, p0, Lr4/f53;->p0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/f53;->C:Lr4/zx2;

    invoke-virtual {p2}, Lr4/qb4;->a()V

    iget-object p2, p0, Lr4/f53;->B:Lr4/i4;

    invoke-virtual {p2}, Lr4/qb4;->a()V

    iput-boolean p1, p0, Lr4/f53;->q0:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr4/f53;->M()Z

    :goto_0
    iget-object p2, p0, Lr4/f53;->D:Lr4/ec;

    invoke-virtual {p2}, Lr4/ec;->c()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lr4/f53;->D0:Z

    :cond_1
    iget-object p2, p0, Lr4/f53;->D:Lr4/ec;

    invoke-virtual {p2}, Lr4/ec;->b()V

    iget p2, p0, Lr4/f53;->H0:I

    if-eqz p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    iget-object p3, p0, Lr4/f53;->H:[J

    aget-wide v0, p3, p2

    iput-wide v0, p0, Lr4/f53;->G0:J

    iget-object p3, p0, Lr4/f53;->G:[J

    aget-wide p2, p3, p2

    iput-wide p2, p0, Lr4/f53;->F0:J

    iput p1, p0, Lr4/f53;->H0:I

    :cond_2
    return-void
.end method

.method public final o0()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget v0, p0, Lr4/f53;->v0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lr4/f53;->C0:Z

    invoke-virtual {p0}, Lr4/f53;->x()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lr4/f53;->L()V

    invoke-virtual {p0}, Lr4/f53;->A()V

    return-void

    :cond_1
    invoke-direct {p0}, Lr4/f53;->s0()V

    invoke-virtual {p0}, Lr4/f53;->p0()V

    return-void

    :cond_2
    invoke-direct {p0}, Lr4/f53;->s0()V

    return-void
.end method

.method public final p0()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lr4/f53;->J:Lr4/e5;

    const/4 v2, 0x0

    const/16 v3, 0x1776

    invoke-virtual {p0, v0, v1, v2, v3}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object v0

    throw v0
.end method

.method public final q0()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lr4/f53;->l0:I

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/f53;->m0:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/f53;->J:Lr4/e5;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/f53;->F0:J

    iput-wide v0, p0, Lr4/f53;->G0:J

    const/4 v0, 0x0

    iput v0, p0, Lr4/f53;->H0:I

    invoke-virtual {p0}, Lr4/f53;->N()Z

    return-void
.end method

.method public final r0()Z
    .locals 15

    iget-object v0, p0, Lr4/f53;->I0:Lr4/rn3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iget v2, p0, Lr4/f53;->u0:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    iget-boolean v2, p0, Lr4/f53;->B0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, p0, Lr4/f53;->k0:I

    if-gez v2, :cond_2

    invoke-virtual {v0}, Lr4/rn3;->a()I

    move-result v0

    iput v0, p0, Lr4/f53;->k0:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v4, p0, Lr4/f53;->I0:Lr4/rn3;

    invoke-virtual {v4, v0}, Lr4/rn3;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v0}, Lr4/qb4;->a()V

    :cond_2
    iget v0, p0, Lr4/f53;->u0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lr4/f53;->h0:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lr4/f53;->x0:Z

    iget-object v4, p0, Lr4/f53;->I0:Lr4/rn3;

    iget v5, p0, Lr4/f53;->k0:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Lr4/rn3;->f(IIIJI)V

    invoke-virtual {p0}, Lr4/f53;->u()V

    :cond_3
    iput v3, p0, Lr4/f53;->u0:I

    return v1

    :cond_4
    iget-boolean v0, p0, Lr4/f53;->f0:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lr4/f53;->f0:Z

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v0, v0, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lr4/f53;->L0:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lr4/f53;->I0:Lr4/rn3;

    iget v4, p0, Lr4/f53;->k0:I

    const/4 v5, 0x0

    const/16 v6, 0x26

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lr4/rn3;->f(IIIJI)V

    invoke-virtual {p0}, Lr4/f53;->u()V

    iput-boolean v2, p0, Lr4/f53;->w0:Z

    return v2

    :cond_5
    iget v0, p0, Lr4/f53;->t0:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lr4/f53;->Q:Lr4/e5;

    iget-object v4, v4, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lr4/f53;->Q:Lr4/e5;

    iget-object v4, v4, Lr4/e5;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v5, v5, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v3, p0, Lr4/f53;->t0:I

    :cond_7
    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v0, v0, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lr4/c3;->f()Lr4/f5;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {p0, v4, v5, v1}, Lr4/c3;->k(Lr4/f5;Lr4/i4;I)I

    move-result v5
    :try_end_0
    .catch Lr4/h3; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {p0}, Lr4/c3;->H()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-wide v6, p0, Lr4/f53;->z0:J

    iput-wide v6, p0, Lr4/f53;->A0:J

    :cond_8
    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    return v1

    :cond_9
    const/4 v7, -0x5

    if-ne v5, v7, :cond_b

    iget v0, p0, Lr4/f53;->t0:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v0}, Lr4/qb4;->a()V

    iput v2, p0, Lr4/f53;->t0:I

    :cond_a
    invoke-virtual {p0, v4}, Lr4/f53;->C0(Lr4/f5;)Lr4/iq;

    return v2

    :cond_b
    iget-object v4, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v4}, Lr4/qb4;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    iget v0, p0, Lr4/f53;->t0:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v0}, Lr4/qb4;->a()V

    iput v2, p0, Lr4/f53;->t0:I

    :cond_c
    iput-boolean v2, p0, Lr4/f53;->B0:Z

    iget-boolean v0, p0, Lr4/f53;->w0:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lr4/f53;->o0()V

    return v1

    :cond_d
    :try_start_1
    iget-boolean v0, p0, Lr4/f53;->h0:Z

    if-nez v0, :cond_e

    iput-boolean v2, p0, Lr4/f53;->x0:Z

    iget-object v3, p0, Lr4/f53;->I0:Lr4/rn3;

    iget v4, p0, Lr4/f53;->k0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Lr4/rn3;->f(IIIJI)V

    invoke-virtual {p0}, Lr4/f53;->u()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    return v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lr4/f53;->J:Lr4/e5;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lr4/e3;->e(I)I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object v0

    throw v0

    :cond_f
    iget-boolean v4, p0, Lr4/f53;->w0:Z

    if-nez v4, :cond_11

    iget-object v4, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v4}, Lr4/qb4;->d()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v0}, Lr4/qb4;->a()V

    iget v0, p0, Lr4/f53;->t0:I

    if-ne v0, v3, :cond_10

    iput v2, p0, Lr4/f53;->t0:I

    :cond_10
    return v2

    :cond_11
    iget-object v3, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v3}, Lr4/i4;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v4, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v4, v4, Lr4/i4;->b:Lr4/e1;

    invoke-virtual {v4, v0}, Lr4/e1;->c(I)V

    :cond_12
    iget-boolean v0, p0, Lr4/f53;->Y:Z

    if-eqz v0, :cond_19

    if-nez v3, :cond_19

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v0, v0, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    sget-object v4, Lr4/nb;->a:[B

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v4, :cond_17

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_14

    if-ne v9, v2, :cond_15

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x7

    if-ne v9, v10, :cond_13

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/2addr v5, v6

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_13
    const/4 v9, 0x1

    goto :goto_2

    :cond_14
    if-nez v9, :cond_15

    add-int/lit8 v7, v7, 0x1

    :cond_15
    :goto_2
    if-eqz v9, :cond_16

    const/4 v7, 0x0

    :cond_16
    move v5, v8

    goto :goto_1

    :cond_17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_3
    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v0, v0, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_18

    return v2

    :cond_18
    iput-boolean v1, p0, Lr4/f53;->Y:Z

    :cond_19
    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    iget-wide v4, v0, Lr4/i4;->e:J

    iget-object v6, p0, Lr4/f53;->i0:Lr4/az2;

    if-eqz v6, :cond_1a

    iget-object v4, p0, Lr4/f53;->J:Lr4/e5;

    invoke-virtual {v6, v4, v0}, Lr4/az2;->b(Lr4/e5;Lr4/i4;)J

    move-result-wide v4

    iget-wide v6, p0, Lr4/f53;->z0:J

    iget-object v0, p0, Lr4/f53;->i0:Lr4/az2;

    iget-object v8, p0, Lr4/f53;->J:Lr4/e5;

    invoke-virtual {v0, v8}, Lr4/az2;->c(Lr4/e5;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lr4/f53;->z0:J

    :cond_1a
    move-wide v12, v4

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v0}, Lr4/qb4;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lr4/f53;->E:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-boolean v0, p0, Lr4/f53;->D0:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lr4/f53;->D:Lr4/ec;

    iget-object v4, p0, Lr4/f53;->J:Lr4/e5;

    invoke-virtual {v0, v12, v13, v4}, Lr4/ec;->a(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lr4/f53;->D0:Z

    :cond_1c
    iget-wide v4, p0, Lr4/f53;->z0:J

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lr4/f53;->z0:J

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v0}, Lr4/i4;->k()V

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {v0}, Lr4/qb4;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {p0, v0}, Lr4/f53;->e0(Lr4/i4;)V

    :cond_1d
    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    invoke-virtual {p0, v0}, Lr4/f53;->v(Lr4/i4;)V

    if-eqz v3, :cond_1e

    :try_start_2
    iget-object v8, p0, Lr4/f53;->I0:Lr4/rn3;

    iget v9, p0, Lr4/f53;->k0:I

    const/4 v10, 0x0

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v11, v0, Lr4/i4;->b:Lr4/e1;

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lr4/rn3;->g(IILr4/e1;JI)V

    goto :goto_4

    :cond_1e
    iget-object v8, p0, Lr4/f53;->I0:Lr4/rn3;

    iget v9, p0, Lr4/f53;->k0:I

    const/4 v10, 0x0

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    iget-object v0, v0, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lr4/rn3;->f(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    invoke-virtual {p0}, Lr4/f53;->u()V

    iput-boolean v2, p0, Lr4/f53;->w0:Z

    iput v1, p0, Lr4/f53;->t0:I

    iget-object v0, p0, Lr4/f53;->E0:Lr4/gp;

    iget v1, v0, Lr4/gp;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lr4/gp;->c:I

    return v2

    :catch_1
    move-exception v0

    iget-object v2, p0, Lr4/f53;->J:Lr4/e5;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lr4/e3;->e(I)I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lr4/c3;->i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lr4/f53;->B0(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lr4/f53;->E0(I)Z

    invoke-direct {p0}, Lr4/f53;->s0()V

    return v2

    :cond_1f
    :goto_5
    return v1
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lr4/f53;->k0()V

    invoke-virtual {p0}, Lr4/f53;->L()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lr4/f53;->K0:Lr4/vu2;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lr4/f53;->K0:Lr4/vu2;

    throw v1
.end method

.method public abstract t0(Lr4/u73;Lr4/e5;)I
.end method

.method public final u()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lr4/f53;->k0:I

    iget-object v0, p0, Lr4/f53;->A:Lr4/i4;

    const/4 v1, 0x0

    iput-object v1, v0, Lr4/i4;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public abstract u0(Lr4/u73;Lr4/e5;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/u73;",
            "Lr4/e5;",
            "Z)",
            "Ljava/util/List<",
            "Lr4/e33;",
            ">;"
        }
    .end annotation
.end method

.method public abstract v(Lr4/i4;)V
.end method

.method public v0(Lr4/e5;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract w()V
.end method

.method public abstract w0(Lr4/e33;Lr4/e5;Landroid/media/MediaCrypto;F)Lr4/b03;
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public abstract x0(Lr4/e33;Lr4/e5;Lr4/e5;)Lr4/iq;
.end method

.method public abstract y(JJLr4/rn3;Ljava/nio/ByteBuffer;IIIJZZLr4/e5;)Z
.end method

.method public abstract y0(FLr4/e5;[Lr4/e5;)F
.end method

.method public abstract z0(Ljava/lang/String;JJ)V
.end method
