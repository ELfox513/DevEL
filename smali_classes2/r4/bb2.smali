.class public final Lr4/bb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dt1;


# instance fields
.field public A:[Ljava/nio/ByteBuffer;

.field public B:Ljava/nio/ByteBuffer;

.field public C:Ljava/nio/ByteBuffer;

.field public D:[B

.field public E:I

.field public F:I

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:I

.field public L:Lr4/zs3;

.field public M:J

.field public N:Z

.field public O:Z

.field public final P:Lr4/o22;

.field public final a:Lr4/kz1;

.field public final b:Lr4/kk2;

.field public final c:[Lr4/ja1;

.field public final d:[Lr4/ja1;

.field public final e:Landroid/os/ConditionVariable;

.field public final f:Lr4/ix1;

.field public final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/p32;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lr4/x92;

.field public final i:Lr4/r52;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/r52<",
            "Lr4/yo1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lr4/r52;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/r52<",
            "Lr4/cs1;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lr4/aq1;

.field public l:Lr4/n12;

.field public m:Lr4/n12;

.field public n:Landroid/media/AudioTrack;

.field public o:Lr4/dg3;

.field public p:Lr4/p32;

.field public q:Lr4/p32;

.field public final r:Lr4/q6;

.field public s:J

.field public t:J

.field public u:J

.field public v:Z

.field public w:Z

.field public x:J

.field public y:F

.field public z:[Lr4/ja1;


# direct methods
.method public constructor <init>(Lr4/g71;[Lr4/ja1;Z)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lr4/o22;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lr4/o22;-><init>([Lr4/ja1;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lr4/bb2;->P:Lr4/o22;

    sget v2, Lr4/lc;->a:I

    new-instance v2, Landroid/os/ConditionVariable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, v0, Lr4/bb2;->e:Landroid/os/ConditionVariable;

    new-instance v2, Lr4/ix1;

    new-instance v4, Lr4/s62;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lr4/s62;-><init>(Lr4/bb2;Lr4/q42;)V

    invoke-direct {v2, v4}, Lr4/ix1;-><init>(Lr4/gw1;)V

    iput-object v2, v0, Lr4/bb2;->f:Lr4/ix1;

    new-instance v2, Lr4/kz1;

    invoke-direct {v2}, Lr4/kz1;-><init>()V

    iput-object v2, v0, Lr4/bb2;->a:Lr4/kz1;

    new-instance v4, Lr4/kk2;

    invoke-direct {v4}, Lr4/kk2;-><init>()V

    iput-object v4, v0, Lr4/bb2;->b:Lr4/kk2;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lr4/jy1;

    new-instance v7, Lr4/gg2;

    invoke-direct {v7}, Lr4/gg2;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v2, v6, v3

    const/4 v2, 0x2

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lr4/o22;->a()[Lr4/ja1;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array v1, v8, [Lr4/ja1;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lr4/ja1;

    iput-object v1, v0, Lr4/bb2;->c:[Lr4/ja1;

    new-array v1, v3, [Lr4/ja1;

    new-instance v2, Lr4/cc2;

    invoke-direct {v2}, Lr4/cc2;-><init>()V

    aput-object v2, v1, v8

    iput-object v1, v0, Lr4/bb2;->d:[Lr4/ja1;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lr4/bb2;->y:F

    sget-object v1, Lr4/dg3;->c:Lr4/dg3;

    iput-object v1, v0, Lr4/bb2;->o:Lr4/dg3;

    iput v8, v0, Lr4/bb2;->K:I

    new-instance v1, Lr4/zs3;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lr4/zs3;-><init>(IF)V

    iput-object v1, v0, Lr4/bb2;->L:Lr4/zs3;

    new-instance v1, Lr4/p32;

    sget-object v2, Lr4/q6;->d:Lr4/q6;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    move-object v10, v2

    invoke-direct/range {v9 .. v16}, Lr4/p32;-><init>(Lr4/q6;ZJJLr4/q42;)V

    iput-object v1, v0, Lr4/bb2;->q:Lr4/p32;

    iput-object v2, v0, Lr4/bb2;->r:Lr4/q6;

    const/4 v1, -0x1

    iput v1, v0, Lr4/bb2;->F:I

    new-array v1, v8, [Lr4/ja1;

    iput-object v1, v0, Lr4/bb2;->z:[Lr4/ja1;

    new-array v1, v8, [Ljava/nio/ByteBuffer;

    iput-object v1, v0, Lr4/bb2;->A:[Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    new-instance v1, Lr4/r52;

    const-wide/16 v2, 0x64

    invoke-direct {v1, v2, v3}, Lr4/r52;-><init>(J)V

    iput-object v1, v0, Lr4/bb2;->i:Lr4/r52;

    new-instance v1, Lr4/r52;

    invoke-direct {v1, v2, v3}, Lr4/r52;-><init>(J)V

    iput-object v1, v0, Lr4/bb2;->j:Lr4/r52;

    return-void
.end method

.method public static K(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lr4/ab2;->a(Landroid/media/AudioTrack;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic M(Lr4/bb2;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lr4/bb2;->e:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic N(Lr4/bb2;)Lr4/aq1;
    .locals 0

    iget-object p0, p0, Lr4/bb2;->k:Lr4/aq1;

    return-object p0
.end method

.method public static synthetic O(Lr4/bb2;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static synthetic P(Lr4/bb2;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/bb2;->I:Z

    return p0
.end method

.method public static synthetic Q(Lr4/bb2;)J
    .locals 2

    iget-wide v0, p0, Lr4/bb2;->M:J

    return-wide v0
.end method

.method public static synthetic v(Lr4/bb2;)J
    .locals 2

    invoke-virtual {p0}, Lr4/bb2;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic w(Lr4/bb2;)J
    .locals 2

    invoke-virtual {p0}, Lr4/bb2;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic x(III)Landroid/media/AudioFormat;
    .locals 1

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/nio/ByteBuffer;J)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lr4/bb2;->C:Ljava/nio/ByteBuffer;

    const/16 p3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lr4/ja;->a(Z)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lr4/bb2;->C:Ljava/nio/ByteBuffer;

    sget p2, Lr4/lc;->a:I

    if-ge p2, p3, :cond_5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    iget-object v2, p0, Lr4/bb2;->D:[B

    if-eqz v2, :cond_3

    array-length v2, v2

    if-ge v2, p2, :cond_4

    :cond_3
    new-array v2, p2, [B

    iput-object v2, p0, Lr4/bb2;->D:[B

    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget-object v3, p0, Lr4/bb2;->D:[B

    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lr4/bb2;->E:I

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    sget v2, Lr4/lc;->a:I

    if-ge v2, p3, :cond_7

    iget-object p3, p0, Lr4/bb2;->f:Lr4/ix1;

    iget-wide v3, p0, Lr4/bb2;->t:J

    invoke-virtual {p3, v3, v4}, Lr4/ix1;->f(J)I

    move-result p3

    if-lez p3, :cond_6

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v3, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iget-object v4, p0, Lr4/bb2;->D:[B

    iget v5, p0, Lr4/bb2;->E:I

    invoke-virtual {v3, v4, v5, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p3

    if-lez p3, :cond_8

    iget v3, p0, Lr4/bb2;->E:I

    add-int/2addr v3, p3

    iput v3, p0, Lr4/bb2;->E:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    goto :goto_2

    :cond_7
    iget-object p3, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-static {p3, p1, p2, v0}, Lr4/re;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;II)I

    move-result p3

    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lr4/bb2;->M:J

    if-gez p3, :cond_e

    const/16 p1, 0x18

    if-lt v2, p1, :cond_9

    const/4 p1, -0x6

    if-eq p3, p1, :cond_b

    :cond_9
    const/16 p1, -0x20

    if-ne p3, p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_3
    new-instance p1, Lr4/cs1;

    iget-object p2, p0, Lr4/bb2;->m:Lr4/n12;

    iget-object p2, p2, Lr4/n12;->a:Lr4/e5;

    invoke-direct {p1, p3, p2, v0}, Lr4/cs1;-><init>(ILr4/e5;Z)V

    iget-object p2, p0, Lr4/bb2;->k:Lr4/aq1;

    if-eqz p2, :cond_c

    invoke-interface {p2, p1}, Lr4/aq1;->a(Ljava/lang/Exception;)V

    :cond_c
    iget-boolean p2, p1, Lr4/cs1;->a:Z

    if-nez p2, :cond_d

    iget-object p2, p0, Lr4/bb2;->j:Lr4/r52;

    invoke-virtual {p2, p1}, Lr4/r52;->a(Ljava/lang/Exception;)V

    return-void

    :cond_d
    throw p1

    :cond_e
    iget-object p1, p0, Lr4/bb2;->j:Lr4/r52;

    invoke-virtual {p1}, Lr4/r52;->b()V

    iget-object p1, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-static {p1}, Lr4/bb2;->K(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lr4/bb2;->I:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lr4/bb2;->k:Lr4/aq1;

    if-eqz p1, :cond_f

    if-ge p3, p2, :cond_f

    iget-boolean p1, p0, Lr4/bb2;->O:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lr4/bb2;->f:Lr4/ix1;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lr4/ix1;->g(J)J

    move-result-wide v0

    iget-object p1, p0, Lr4/bb2;->k:Lr4/aq1;

    check-cast p1, Lr4/dd2;

    iget-object v2, p1, Lr4/dd2;->a:Lr4/ff2;

    invoke-static {v2}, Lr4/ff2;->L0(Lr4/ff2;)Lr4/f7;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object p1, p1, Lr4/dd2;->a:Lr4/ff2;

    invoke-static {p1}, Lr4/ff2;->L0(Lr4/ff2;)Lr4/f7;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lr4/f7;->V(J)V

    :cond_f
    iget-object p1, p0, Lr4/bb2;->m:Lr4/n12;

    iget p1, p1, Lr4/n12;->c:I

    iget-wide v0, p0, Lr4/bb2;->t:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lr4/bb2;->t:J

    if-ne p3, p2, :cond_10

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/bb2;->C:Ljava/nio/ByteBuffer;

    :cond_10
    return-void
.end method

.method public final B()Z
    .locals 9

    iget v0, p0, Lr4/bb2;->F:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput v3, p0, Lr4/bb2;->F:I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lr4/bb2;->F:I

    iget-object v5, p0, Lr4/bb2;->z:[Lr4/ja1;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    invoke-interface {v4}, Lr4/ja1;->e()V

    :cond_1
    invoke-virtual {p0, v7, v8}, Lr4/bb2;->z(J)V

    invoke-interface {v4}, Lr4/ja1;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iget v0, p0, Lr4/bb2;->F:I

    add-int/2addr v0, v2

    iput v0, p0, Lr4/bb2;->F:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lr4/bb2;->C:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0, v7, v8}, Lr4/bb2;->A(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lr4/bb2;->C:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iput v1, p0, Lr4/bb2;->F:I

    return v2
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lr4/lc;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iget v1, p0, Lr4/bb2;->y:F

    invoke-static {v0, v1}, Lr4/se;->a(Landroid/media/AudioTrack;F)I

    return-void

    :cond_1
    iget-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iget v1, p0, Lr4/bb2;->y:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method public final D(Lr4/q6;Z)V
    .locals 9

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object v0

    iget-object v1, v0, Lr4/p32;->a:Lr4/q6;

    invoke-virtual {p1, v1}, Lr4/q6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lr4/p32;->b:Z

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lr4/p32;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lr4/p32;-><init>(Lr4/q6;ZJJLr4/q42;)V

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lr4/bb2;->p:Lr4/p32;

    return-void

    :cond_2
    iput-object v0, p0, Lr4/bb2;->q:Lr4/p32;

    return-void
.end method

.method public final E()Lr4/p32;
    .locals 1

    iget-object v0, p0, Lr4/bb2;->p:Lr4/p32;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/p32;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/bb2;->q:Lr4/p32;

    :goto_0
    return-object v0
.end method

.method public final F(J)V
    .locals 12

    invoke-virtual {p0}, Lr4/bb2;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bb2;->P:Lr4/o22;

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object v1

    iget-object v1, v1, Lr4/p32;->a:Lr4/q6;

    invoke-virtual {v0, v1}, Lr4/o22;->b(Lr4/q6;)Lr4/q6;

    goto :goto_0

    :cond_0
    sget-object v1, Lr4/q6;->d:Lr4/q6;

    :goto_0
    move-object v3, v1

    invoke-virtual {p0}, Lr4/bb2;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/bb2;->P:Lr4/o22;

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object v2

    iget-boolean v2, v2, Lr4/p32;->b:Z

    invoke-virtual {v0, v2}, Lr4/o22;->c(Z)Z

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v10, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    new-instance v11, Lr4/p32;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Lr4/bb2;->m:Lr4/n12;

    invoke-virtual {p0}, Lr4/bb2;->J()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lr4/n12;->a(J)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v2, v11

    move v4, v0

    invoke-direct/range {v2 .. v9}, Lr4/p32;-><init>(Lr4/q6;ZJJLr4/q42;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lr4/bb2;->m:Lr4/n12;

    iget-object p1, p1, Lr4/n12;->i:[Lr4/ja1;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    invoke-interface {v3}, Lr4/ja1;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Lr4/ja1;->g()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v1, p1, [Lr4/ja1;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lr4/ja1;

    iput-object p2, p0, Lr4/bb2;->z:[Lr4/ja1;

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lr4/bb2;->A:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lr4/bb2;->y()V

    iget-object p1, p0, Lr4/bb2;->k:Lr4/aq1;

    if-eqz p1, :cond_4

    check-cast p1, Lr4/dd2;

    iget-object p1, p1, Lr4/dd2;->a:Lr4/ff2;

    invoke-static {p1}, Lr4/ff2;->I0(Lr4/ff2;)Lr4/vl1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lr4/vl1;->h(Z)V

    :cond_4
    return-void
.end method

.method public final G()Z
    .locals 2

    iget-object v0, p0, Lr4/bb2;->m:Lr4/n12;

    iget-object v0, v0, Lr4/n12;->a:Lr4/e5;

    iget-object v0, v0, Lr4/e5;->l:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bb2;->m:Lr4/n12;

    iget-object v0, v0, Lr4/n12;->a:Lr4/e5;

    iget v0, v0, Lr4/e5;->A:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()J
    .locals 5

    iget-object v0, p0, Lr4/bb2;->m:Lr4/n12;

    iget v1, v0, Lr4/n12;->c:I

    iget-wide v1, p0, Lr4/bb2;->s:J

    iget v0, v0, Lr4/n12;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public final J()J
    .locals 5

    iget-object v0, p0, Lr4/bb2;->m:Lr4/n12;

    iget v1, v0, Lr4/n12;->c:I

    iget-wide v1, p0, Lr4/bb2;->t:J

    iget v0, v0, Lr4/n12;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public final L()V
    .locals 3

    iget-boolean v0, p0, Lr4/bb2;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/bb2;->H:Z

    iget-object v0, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {p0}, Lr4/bb2;->J()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/ix1;->i(J)V

    iget-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lr4/bb2;->K:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lr4/bb2;->K:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lr4/bb2;->J:Z

    invoke-virtual {p0}, Lr4/bb2;->n()V

    :cond_1
    return-void
.end method

.method public final b(Z)J
    .locals 5

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lr4/bb2;->w:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {v0, p1}, Lr4/ix1;->b(Z)J

    move-result-wide v0

    iget-object p1, p0, Lr4/bb2;->m:Lr4/n12;

    invoke-virtual {p0}, Lr4/bb2;->J()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lr4/n12;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/p32;

    iget-wide v2, p1, Lr4/p32;->d:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/p32;

    iput-object p1, p0, Lr4/bb2;->q:Lr4/p32;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr4/bb2;->q:Lr4/p32;

    iget-wide v2, p1, Lr4/p32;->d:J

    sub-long v2, v0, v2

    iget-object p1, p1, Lr4/p32;->a:Lr4/q6;

    sget-object v4, Lr4/q6;->d:Lr4/q6;

    invoke-virtual {p1, v4}, Lr4/q6;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lr4/bb2;->q:Lr4/p32;

    iget-wide v0, p1, Lr4/p32;->c:J

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/bb2;->P:Lr4/o22;

    invoke-virtual {p1, v2, v3}, Lr4/o22;->d(J)J

    move-result-wide v0

    iget-object p1, p0, Lr4/bb2;->q:Lr4/p32;

    iget-wide v2, p1, Lr4/p32;->c:J

    add-long/2addr v0, v2

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/p32;

    iget-wide v2, p1, Lr4/p32;->d:J

    iget-object v4, p0, Lr4/bb2;->q:Lr4/p32;

    iget-object v4, v4, Lr4/p32;->a:Lr4/q6;

    iget v4, v4, Lr4/q6;->a:F

    sub-long/2addr v2, v0

    invoke-static {v2, v3, v4}, Lr4/lc;->j(JF)J

    move-result-wide v0

    iget-wide v2, p1, Lr4/p32;->c:J

    sub-long v0, v2, v0

    :goto_1
    iget-object p1, p0, Lr4/bb2;->m:Lr4/n12;

    iget-object v2, p0, Lr4/bb2;->P:Lr4/o22;

    invoke-virtual {v2}, Lr4/o22;->e()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lr4/n12;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_4
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final c(Lr4/zs3;)V
    .locals 1

    iget-object v0, p0, Lr4/bb2;->L:Lr4/zs3;

    invoke-virtual {v0, p1}, Lr4/zs3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lr4/zs3;->a:I

    iget-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/bb2;->L:Lr4/zs3;

    iget v0, v0, Lr4/zs3;->a:I

    :cond_1
    iput-object p1, p0, Lr4/bb2;->L:Lr4/zs3;

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/bb2;->I:Z

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {v0}, Lr4/ix1;->c()V

    iget-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final e(Lr4/q6;)V
    .locals 4

    new-instance v0, Lr4/q6;

    iget v1, p1, Lr4/q6;->a:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Lr4/lc;->e0(FFF)F

    move-result v1

    iget p1, p1, Lr4/q6;->b:F

    invoke-static {p1, v2, v3}, Lr4/lc;->e0(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lr4/q6;-><init>(FF)V

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object p1

    iget-boolean p1, p1, Lr4/p32;->b:Z

    invoke-virtual {p0, v0, p1}, Lr4/bb2;->D(Lr4/q6;Z)V

    return-void
.end method

.method public final f(Lr4/e5;)I
    .locals 3

    iget-object v0, p1, Lr4/e5;->l:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p1, Lr4/e5;->A:I

    invoke-static {v0}, Lr4/lc;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lr4/e5;->A:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget p1, p1, Lr4/e5;->A:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    sget p1, Lr4/lc;->a:I

    return v1
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/bb2;->v:Z

    return-void
.end method

.method public final h()Z
    .locals 3

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/bb2;->G:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lr4/bb2;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final i()Z
    .locals 3

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {p0}, Lr4/bb2;->J()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/ix1;->j(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lr4/bb2;->G:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/bb2;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr4/bb2;->L()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/bb2;->G:Z

    :cond_0
    return-void
.end method

.method public final k(F)V
    .locals 1

    iget v0, p0, Lr4/bb2;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lr4/bb2;->y:F

    invoke-virtual {p0}, Lr4/bb2;->C()V

    :cond_0
    return-void
.end method

.method public final l()Lr4/q6;
    .locals 1

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object v0

    iget-object v0, v0, Lr4/p32;->a:Lr4/q6;

    return-object v0
.end method

.method public final m(Lr4/aq1;)V
    .locals 0

    iput-object p1, p0, Lr4/bb2;->k:Lr4/aq1;

    return-void
.end method

.method public final n()V
    .locals 12

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr4/bb2;->s:J

    iput-wide v0, p0, Lr4/bb2;->t:J

    iput-wide v0, p0, Lr4/bb2;->u:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lr4/bb2;->O:Z

    new-instance v11, Lr4/p32;

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object v3

    iget-object v4, v3, Lr4/p32;->a:Lr4/q6;

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object v3

    iget-boolean v5, v3, Lr4/p32;->b:Z

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lr4/p32;-><init>(Lr4/q6;ZJJLr4/q42;)V

    iput-object v11, p0, Lr4/bb2;->q:Lr4/p32;

    iput-wide v0, p0, Lr4/bb2;->x:J

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/bb2;->p:Lr4/p32;

    iget-object v1, p0, Lr4/bb2;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Lr4/bb2;->B:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lr4/bb2;->C:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lr4/bb2;->H:Z

    iput-boolean v2, p0, Lr4/bb2;->G:Z

    const/4 v1, -0x1

    iput v1, p0, Lr4/bb2;->F:I

    iget-object v1, p0, Lr4/bb2;->b:Lr4/kk2;

    invoke-virtual {v1}, Lr4/kk2;->p()V

    invoke-virtual {p0}, Lr4/bb2;->y()V

    iget-object v1, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {v1}, Lr4/ix1;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v1, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-static {v1}, Lr4/bb2;->K(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/bb2;->h:Lr4/x92;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-virtual {v1, v3}, Lr4/x92;->b(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v1, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iput-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    sget v3, Lr4/lc;->a:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    iget-boolean v3, p0, Lr4/bb2;->J:Z

    if-nez v3, :cond_2

    iput v2, p0, Lr4/bb2;->K:I

    :cond_2
    iget-object v2, p0, Lr4/bb2;->l:Lr4/n12;

    if-eqz v2, :cond_3

    iput-object v2, p0, Lr4/bb2;->m:Lr4/n12;

    iput-object v0, p0, Lr4/bb2;->l:Lr4/n12;

    :cond_3
    iget-object v0, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {v0}, Lr4/ix1;->l()V

    iget-object v0, p0, Lr4/bb2;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    new-instance v0, Lr4/l02;

    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {v0, p0, v2, v1}, Lr4/l02;-><init>(Lr4/bb2;Ljava/lang/String;Landroid/media/AudioTrack;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    iget-object v0, p0, Lr4/bb2;->j:Lr4/r52;

    invoke-virtual {v0}, Lr4/r52;->b()V

    iget-object v0, p0, Lr4/bb2;->i:Lr4/r52;

    invoke-virtual {v0}, Lr4/r52;->b()V

    return-void
.end method

.method public final o(Lr4/e5;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lr4/bb2;->f(Lr4/e5;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(Z)V
    .locals 1

    invoke-virtual {p0}, Lr4/bb2;->E()Lr4/p32;

    move-result-object v0

    iget-object v0, v0, Lr4/p32;->a:Lr4/q6;

    invoke-virtual {p0, v0, p1}, Lr4/bb2;->D(Lr4/q6;Z)V

    return-void
.end method

.method public final q(Ljava/nio/ByteBuffer;JI)Z
    .locals 11

    iget-object p4, p0, Lr4/bb2;->B:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    invoke-static {p4}, Lr4/ja;->a(Z)V

    iget-object p4, p0, Lr4/bb2;->l:Lr4/n12;

    const/4 v2, 0x0

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lr4/bb2;->B()Z

    move-result p4

    if-nez p4, :cond_2

    return v1

    :cond_2
    iget-object p4, p0, Lr4/bb2;->l:Lr4/n12;

    iget-object v3, p0, Lr4/bb2;->m:Lr4/n12;

    iget v4, v3, Lr4/n12;->c:I

    iget v4, p4, Lr4/n12;->c:I

    iget v4, v3, Lr4/n12;->g:I

    iget v5, p4, Lr4/n12;->g:I

    if-ne v4, v5, :cond_3

    iget v4, v3, Lr4/n12;->e:I

    iget v5, p4, Lr4/n12;->e:I

    if-ne v4, v5, :cond_3

    iget v4, v3, Lr4/n12;->f:I

    iget v5, p4, Lr4/n12;->f:I

    if-ne v4, v5, :cond_3

    iget v3, v3, Lr4/n12;->d:I

    iget v4, p4, Lr4/n12;->d:I

    if-ne v3, v4, :cond_3

    iput-object p4, p0, Lr4/bb2;->m:Lr4/n12;

    iput-object v2, p0, Lr4/bb2;->l:Lr4/n12;

    iget-object p4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-static {p4}, Lr4/bb2;->K(Landroid/media/AudioTrack;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-static {p4}, Lr4/ya2;->a(Landroid/media/AudioTrack;)V

    iget-object p4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iget-object v3, p0, Lr4/bb2;->m:Lr4/n12;

    iget-object v3, v3, Lr4/n12;->a:Lr4/e5;

    iget v4, v3, Lr4/e5;->B:I

    iget v3, v3, Lr4/e5;->C:I

    invoke-static {p4, v4, v3}, Lr4/za2;->a(Landroid/media/AudioTrack;II)V

    iput-boolean v0, p0, Lr4/bb2;->O:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lr4/bb2;->L()V

    invoke-virtual {p0}, Lr4/bb2;->i()Z

    move-result p4

    if-eqz p4, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lr4/bb2;->n()V

    :cond_5
    :goto_2
    invoke-virtual {p0, p2, p3}, Lr4/bb2;->F(J)V

    :cond_6
    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result p4

    if-nez p4, :cond_a

    :try_start_0
    iget-object p4, p0, Lr4/bb2;->e:Landroid/os/ConditionVariable;

    invoke-virtual {p4}, Landroid/os/ConditionVariable;->block()V
    :try_end_0
    .catch Lr4/yo1; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p4, p0, Lr4/bb2;->m:Lr4/n12;
    :try_end_1
    .catch Lr4/yo1; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v3, p0, Lr4/bb2;->o:Lr4/dg3;

    iget v4, p0, Lr4/bb2;->K:I

    invoke-virtual {p4, v1, v3, v4}, Lr4/n12;->c(ZLr4/dg3;I)Landroid/media/AudioTrack;

    move-result-object p4
    :try_end_2
    .catch Lr4/yo1; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-object p4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-static {p4}, Lr4/bb2;->K(Landroid/media/AudioTrack;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iget-object v3, p0, Lr4/bb2;->h:Lr4/x92;

    if-nez v3, :cond_7

    new-instance v3, Lr4/x92;

    invoke-direct {v3, p0}, Lr4/x92;-><init>(Lr4/bb2;)V

    iput-object v3, p0, Lr4/bb2;->h:Lr4/x92;

    :cond_7
    iget-object v3, p0, Lr4/bb2;->h:Lr4/x92;

    invoke-virtual {v3, p4}, Lr4/x92;->a(Landroid/media/AudioTrack;)V

    iget-object p4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iget-object v3, p0, Lr4/bb2;->m:Lr4/n12;

    iget-object v3, v3, Lr4/n12;->a:Lr4/e5;

    iget v4, v3, Lr4/e5;->B:I

    iget v3, v3, Lr4/e5;->C:I

    invoke-static {p4, v4, v3}, Lr4/za2;->a(Landroid/media/AudioTrack;II)V

    :cond_8
    iget-object p4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-virtual {p4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p4

    iput p4, p0, Lr4/bb2;->K:I

    iget-object v3, p0, Lr4/bb2;->f:Lr4/ix1;

    iget-object v4, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    iget-object p4, p0, Lr4/bb2;->m:Lr4/n12;

    iget v5, p4, Lr4/n12;->c:I

    iget v6, p4, Lr4/n12;->g:I

    iget v7, p4, Lr4/n12;->d:I

    const/4 v5, 0x0

    iget v8, p4, Lr4/n12;->h:I

    invoke-virtual/range {v3 .. v8}, Lr4/ix1;->a(Landroid/media/AudioTrack;ZIII)V

    invoke-virtual {p0}, Lr4/bb2;->C()V

    iget-object p4, p0, Lr4/bb2;->L:Lr4/zs3;

    iget p4, p4, Lr4/zs3;->a:I

    iput-boolean v0, p0, Lr4/bb2;->w:Z

    goto :goto_3

    :catch_0
    move-exception p1

    iget-object p2, p0, Lr4/bb2;->k:Lr4/aq1;

    if-eqz p2, :cond_9

    invoke-interface {p2, p1}, Lr4/aq1;->a(Ljava/lang/Exception;)V

    :cond_9
    throw p1
    :try_end_3
    .catch Lr4/yo1; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lr4/bb2;->i:Lr4/r52;

    invoke-virtual {p2, p1}, Lr4/r52;->a(Ljava/lang/Exception;)V

    return v1

    :cond_a
    :goto_3
    iget-object p4, p0, Lr4/bb2;->i:Lr4/r52;

    invoke-virtual {p4}, Lr4/r52;->b()V

    iget-boolean p4, p0, Lr4/bb2;->w:Z

    const-wide/16 v3, 0x0

    if-eqz p4, :cond_b

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lr4/bb2;->x:J

    iput-boolean v1, p0, Lr4/bb2;->v:Z

    iput-boolean v1, p0, Lr4/bb2;->w:Z

    invoke-virtual {p0, p2, p3}, Lr4/bb2;->F(J)V

    iget-boolean p4, p0, Lr4/bb2;->I:Z

    if-eqz p4, :cond_b

    invoke-virtual {p0}, Lr4/bb2;->d()V

    :cond_b
    iget-object p4, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {p0}, Lr4/bb2;->J()J

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Lr4/ix1;->e(J)Z

    move-result p4

    if-nez p4, :cond_c

    return v1

    :cond_c
    iget-object p4, p0, Lr4/bb2;->B:Ljava/nio/ByteBuffer;

    if-nez p4, :cond_14

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v5, :cond_d

    const/4 p4, 0x1

    goto :goto_4

    :cond_d
    const/4 p4, 0x0

    :goto_4
    invoke-static {p4}, Lr4/ja;->a(Z)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p4

    if-nez p4, :cond_e

    return v0

    :cond_e
    iget-object p4, p0, Lr4/bb2;->m:Lr4/n12;

    iget p4, p4, Lr4/n12;->c:I

    iget-object p4, p0, Lr4/bb2;->p:Lr4/p32;

    if-eqz p4, :cond_10

    invoke-virtual {p0}, Lr4/bb2;->B()Z

    move-result p4

    if-nez p4, :cond_f

    return v1

    :cond_f
    invoke-virtual {p0, p2, p3}, Lr4/bb2;->F(J)V

    iput-object v2, p0, Lr4/bb2;->p:Lr4/p32;

    :cond_10
    iget-wide v5, p0, Lr4/bb2;->x:J

    iget-object p4, p0, Lr4/bb2;->m:Lr4/n12;

    invoke-virtual {p0}, Lr4/bb2;->I()J

    move-result-wide v7

    iget-object v9, p0, Lr4/bb2;->b:Lr4/kk2;

    invoke-virtual {v9}, Lr4/kk2;->q()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    iget-object p4, p4, Lr4/n12;->a:Lr4/e5;

    iget p4, p4, Lr4/e5;->z:I

    int-to-long v9, p4

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    iget-boolean p4, p0, Lr4/bb2;->v:Z

    if-nez p4, :cond_11

    sub-long v7, v5, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x30d40

    cmp-long p4, v7, v9

    if-lez p4, :cond_11

    iget-object p4, p0, Lr4/bb2;->k:Lr4/aq1;

    new-instance v7, Lr4/br1;

    invoke-direct {v7, p2, p3, v5, v6}, Lr4/br1;-><init>(JJ)V

    invoke-interface {p4, v7}, Lr4/aq1;->a(Ljava/lang/Exception;)V

    iput-boolean v0, p0, Lr4/bb2;->v:Z

    :cond_11
    iget-boolean p4, p0, Lr4/bb2;->v:Z

    if-eqz p4, :cond_13

    invoke-virtual {p0}, Lr4/bb2;->B()Z

    move-result p4

    if-nez p4, :cond_12

    return v1

    :cond_12
    sub-long v5, p2, v5

    iget-wide v7, p0, Lr4/bb2;->x:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lr4/bb2;->x:J

    iput-boolean v1, p0, Lr4/bb2;->v:Z

    invoke-virtual {p0, p2, p3}, Lr4/bb2;->F(J)V

    iget-object p4, p0, Lr4/bb2;->k:Lr4/aq1;

    if-eqz p4, :cond_13

    cmp-long v7, v5, v3

    if-eqz v7, :cond_13

    check-cast p4, Lr4/dd2;

    iget-object p4, p4, Lr4/dd2;->a:Lr4/ff2;

    invoke-virtual {p4}, Lr4/ff2;->M0()V

    :cond_13
    iget-object p4, p0, Lr4/bb2;->m:Lr4/n12;

    iget p4, p4, Lr4/n12;->c:I

    iget-wide v3, p0, Lr4/bb2;->s:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    int-to-long v5, p4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lr4/bb2;->s:J

    iput-object p1, p0, Lr4/bb2;->B:Ljava/nio/ByteBuffer;

    :cond_14
    invoke-virtual {p0, p2, p3}, Lr4/bb2;->z(J)V

    iget-object p1, p0, Lr4/bb2;->B:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_15

    iput-object v2, p0, Lr4/bb2;->B:Ljava/nio/ByteBuffer;

    return v0

    :cond_15
    iget-object p1, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {p0}, Lr4/bb2;->J()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lr4/ix1;->h(J)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "DefaultAudioSink"

    const-string p2, "Resetting stalled audio track"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lr4/bb2;->n()V

    return v0

    :cond_16
    return v1
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/bb2;->I:Z

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bb2;->f:Lr4/ix1;

    invoke-virtual {v0}, Lr4/ix1;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/bb2;->n:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public final s(Lr4/e5;I[I)V
    .locals 12

    iget-object p2, p1, Lr4/e5;->l:Ljava/lang/String;

    const-string v0, "audio/raw"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p1, Lr4/e5;->A:I

    invoke-static {p2}, Lr4/lc;->p(I)Z

    move-result p2

    invoke-static {p2}, Lr4/ja;->a(Z)V

    iget p2, p1, Lr4/e5;->A:I

    iget v0, p1, Lr4/e5;->y:I

    invoke-static {p2, v0}, Lr4/lc;->s(II)I

    move-result v3

    iget-object v11, p0, Lr4/bb2;->c:[Lr4/ja1;

    iget-object p2, p0, Lr4/bb2;->b:Lr4/kk2;

    iget v0, p1, Lr4/e5;->B:I

    iget v1, p1, Lr4/e5;->C:I

    invoke-virtual {p2, v0, v1}, Lr4/kk2;->o(II)V

    sget p2, Lr4/lc;->a:I

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    iget p2, p1, Lr4/e5;->y:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x6

    new-array p3, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aput v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lr4/bb2;->a:Lr4/kz1;

    invoke-virtual {p2, p3}, Lr4/kz1;->o([I)V

    new-instance p2, Lr4/h81;

    iget p3, p1, Lr4/e5;->z:I

    iget v0, p1, Lr4/e5;->y:I

    iget v2, p1, Lr4/e5;->A:I

    invoke-direct {p2, p3, v0, v2}, Lr4/h81;-><init>(III)V

    array-length p3, v11

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    aget-object v2, v11, v0

    :try_start_0
    invoke-interface {v2, p2}, Lr4/ja1;->b(Lr4/h81;)Lr4/h81;

    move-result-object v4

    invoke-interface {v2}, Lr4/ja1;->a()Z

    move-result v2
    :try_end_0
    .catch Lr4/i91; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v5, v2, :cond_1

    move-object p2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance p3, Lr4/xn1;

    invoke-direct {p3, p2, p1}, Lr4/xn1;-><init>(Ljava/lang/Throwable;Lr4/e5;)V

    throw p3

    :cond_2
    iget v8, p2, Lr4/h81;->c:I

    iget v6, p2, Lr4/h81;->a:I

    iget p3, p2, Lr4/h81;->b:I

    invoke-static {p3}, Lr4/lc;->r(I)I

    move-result v7

    iget p2, p2, Lr4/h81;->b:I

    invoke-static {v8, p2}, Lr4/lc;->s(II)I

    move-result v5

    if-eqz v8, :cond_5

    if-eqz v7, :cond_4

    iput-boolean v1, p0, Lr4/bb2;->N:Z

    new-instance p2, Lr4/n12;

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lr4/n12;-><init>(Lr4/e5;IIIIIIIZ[Lr4/ja1;)V

    invoke-virtual {p0}, Lr4/bb2;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, p0, Lr4/bb2;->l:Lr4/n12;

    return-void

    :cond_3
    iput-object p2, p0, Lr4/bb2;->m:Lr4/n12;

    return-void

    :cond_4
    new-instance p2, Lr4/xn1;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x36

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid output channel config (mode=0) for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lr4/xn1;-><init>(Ljava/lang/String;Lr4/e5;)V

    throw p2

    :cond_5
    new-instance p2, Lr4/xn1;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid output encoding (mode=0) for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lr4/xn1;-><init>(Ljava/lang/String;Lr4/e5;)V

    throw p2

    :cond_6
    sget p2, Lr4/lc;->a:I

    new-instance p2, Lr4/xn1;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Unable to configure passthrough for: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lr4/xn1;-><init>(Ljava/lang/String;Lr4/e5;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final t()V
    .locals 5

    invoke-virtual {p0}, Lr4/bb2;->n()V

    iget-object v0, p0, Lr4/bb2;->c:[Lr4/ja1;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Lr4/ja1;->f()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/bb2;->d:[Lr4/ja1;

    array-length v1, v0

    const/4 v1, 0x0

    :goto_1
    if-gtz v1, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v3}, Lr4/ja1;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v2, p0, Lr4/bb2;->I:Z

    iput-boolean v2, p0, Lr4/bb2;->N:Z

    return-void
.end method

.method public final u(Lr4/dg3;)V
    .locals 1

    iget-object v0, p0, Lr4/bb2;->o:Lr4/dg3;

    invoke-virtual {v0, p1}, Lr4/dg3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lr4/bb2;->o:Lr4/dg3;

    invoke-virtual {p0}, Lr4/bb2;->n()V

    return-void
.end method

.method public final y()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/bb2;->z:[Lr4/ja1;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1}, Lr4/ja1;->g()V

    iget-object v2, p0, Lr4/bb2;->A:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lr4/ja1;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(J)V
    .locals 5

    iget-object v0, p0, Lr4/bb2;->z:[Lr4/ja1;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    iget-object v2, p0, Lr4/bb2;->A:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lr4/bb2;->B:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    sget-object v2, Lr4/ja1;->a:Ljava/nio/ByteBuffer;

    :cond_1
    :goto_1
    if-ne v1, v0, :cond_2

    invoke-virtual {p0, v2, p1, p2}, Lr4/bb2;->A(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lr4/bb2;->z:[Lr4/ja1;

    aget-object v3, v3, v1

    iget v4, p0, Lr4/bb2;->F:I

    if-le v1, v4, :cond_3

    invoke-interface {v3, v2}, Lr4/ja1;->h(Ljava/nio/ByteBuffer;)V

    :cond_3
    invoke-interface {v3}, Lr4/ja1;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lr4/bb2;->A:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method
