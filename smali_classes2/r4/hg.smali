.class public final Lr4/hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/pf;


# static fields
.field public static final Z:Lr4/rf;

.field public static final a0:[B

.field public static final b0:[B

.field public static final c0:Ljava/util/UUID;


# instance fields
.field public A:Lr4/yk;

.field public B:Lr4/yk;

.field public C:Z

.field public D:I

.field public E:J

.field public F:J

.field public G:I

.field public H:I

.field public I:[I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:B

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Lr4/qf;

.field public final Y:Lr4/cg;

.field public final a:Lr4/jg;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/gg;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lr4/dl;

.field public final e:Lr4/dl;

.field public final f:Lr4/dl;

.field public final g:Lr4/dl;

.field public final h:Lr4/dl;

.field public final i:Lr4/dl;

.field public final j:Lr4/dl;

.field public final k:Lr4/dl;

.field public final l:Lr4/dl;

.field public m:Ljava/nio/ByteBuffer;

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:Lr4/gg;

.field public t:Z

.field public u:I

.field public v:J

.field public w:Z

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lr4/dg;

    invoke-direct {v0}, Lr4/dg;-><init>()V

    sput-object v0, Lr4/hg;->Z:Lr4/rf;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lr4/hg;->a0:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lr4/hg;->b0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lr4/hg;->c0:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4

    new-instance p1, Lr4/cg;

    invoke-direct {p1}, Lr4/cg;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/hg;->o:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lr4/hg;->p:J

    iput-wide v2, p0, Lr4/hg;->q:J

    iput-wide v2, p0, Lr4/hg;->r:J

    iput-wide v0, p0, Lr4/hg;->x:J

    iput-wide v0, p0, Lr4/hg;->y:J

    iput-wide v2, p0, Lr4/hg;->z:J

    iput-object p1, p0, Lr4/hg;->Y:Lr4/cg;

    new-instance v0, Lr4/eg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/eg;-><init>(Lr4/hg;Lr4/fg;)V

    invoke-virtual {p1, v0}, Lr4/cg;->b(Lr4/eg;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/hg;->c:Z

    new-instance p1, Lr4/jg;

    invoke-direct {p1}, Lr4/jg;-><init>()V

    iput-object p1, p0, Lr4/hg;->a:Lr4/jg;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/hg;->b:Landroid/util/SparseArray;

    new-instance p1, Lr4/dl;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lr4/dl;-><init>(I)V

    iput-object p1, p0, Lr4/hg;->f:Lr4/dl;

    new-instance p1, Lr4/dl;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lr4/dl;-><init>([B)V

    iput-object p1, p0, Lr4/hg;->g:Lr4/dl;

    new-instance p1, Lr4/dl;

    invoke-direct {p1, v0}, Lr4/dl;-><init>(I)V

    iput-object p1, p0, Lr4/hg;->h:Lr4/dl;

    new-instance p1, Lr4/dl;

    sget-object v1, Lr4/bl;->a:[B

    invoke-direct {p1, v1}, Lr4/dl;-><init>([B)V

    iput-object p1, p0, Lr4/hg;->d:Lr4/dl;

    new-instance p1, Lr4/dl;

    invoke-direct {p1, v0}, Lr4/dl;-><init>(I)V

    iput-object p1, p0, Lr4/hg;->e:Lr4/dl;

    new-instance p1, Lr4/dl;

    invoke-direct {p1}, Lr4/dl;-><init>()V

    iput-object p1, p0, Lr4/hg;->i:Lr4/dl;

    new-instance p1, Lr4/dl;

    invoke-direct {p1}, Lr4/dl;-><init>()V

    iput-object p1, p0, Lr4/hg;->j:Lr4/dl;

    new-instance p1, Lr4/dl;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lr4/dl;-><init>(I)V

    iput-object p1, p0, Lr4/hg;->k:Lr4/dl;

    new-instance p1, Lr4/dl;

    invoke-direct {p1}, Lr4/dl;-><init>()V

    iput-object p1, p0, Lr4/hg;->l:Lr4/dl;

    return-void
.end method

.method public static synthetic a()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lr4/hg;->c0:Ljava/util/UUID;

    return-object v0
.end method

.method public static final h(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x5

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/4 p0, 0x1

    return p0

    :sswitch_3
    const/4 p0, 0x3

    return p0

    :sswitch_4
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7672 -> :sswitch_1
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public static final i(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p0, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static q([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    add-int/2addr v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public final b(IJJ)V
    .locals 5

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_7

    const v0, 0x18538067

    if-eq p1, v0, :cond_4

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_3

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lr4/hg;->t:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lr4/hg;->c:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lr4/hg;->x:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    iput-boolean v3, p0, Lr4/hg;->w:Z

    return-void

    :cond_1
    iget-object p1, p0, Lr4/hg;->X:Lr4/qf;

    new-instance p2, Lr4/vf;

    iget-wide p3, p0, Lr4/hg;->r:J

    invoke-direct {p2, p3, p4}, Lr4/vf;-><init>(J)V

    invoke-interface {p1, p2}, Lr4/qf;->b(Lr4/wf;)V

    iput-boolean v3, p0, Lr4/hg;->t:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lr4/yk;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lr4/yk;-><init>(I)V

    iput-object p1, p0, Lr4/hg;->A:Lr4/yk;

    new-instance p1, Lr4/yk;

    invoke-direct {p1, p2}, Lr4/yk;-><init>(I)V

    iput-object p1, p0, Lr4/hg;->B:Lr4/yk;

    return-void

    :cond_4
    iget-wide v3, p0, Lr4/hg;->o:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    cmp-long p1, v3, p2

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lr4/ld;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iput-wide p2, p0, Lr4/hg;->o:J

    iput-wide p4, p0, Lr4/hg;->n:J

    return-void

    :cond_7
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput-boolean v3, p1, Lr4/gg;->q:Z

    return-void

    :cond_8
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput-boolean v3, p1, Lr4/gg;->e:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    iput p1, p0, Lr4/hg;->u:I

    iput-wide v1, p0, Lr4/hg;->v:J

    return-void

    :cond_a
    iput-boolean v1, p0, Lr4/hg;->C:Z

    return-void

    :cond_b
    new-instance p1, Lr4/gg;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lr4/gg;-><init>(Lr4/fg;)V

    iput-object p1, p0, Lr4/hg;->s:Lr4/gg;

    return-void

    :cond_c
    iput-boolean v1, p0, Lr4/hg;->W:Z

    return-void
.end method

.method public final c(I)V
    .locals 14

    const/16 v0, 0xa0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    const/16 v0, 0xae

    const/4 v3, 0x0

    if-eq p1, v0, :cond_10

    const/16 v0, 0x4dbb

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const v7, 0x1c53bb6b

    if-eq p1, v0, :cond_d

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_b

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_9

    const v0, 0x1549a966

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq p1, v0, :cond_7

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_5

    if-eq p1, v7, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean p1, p0, Lr4/hg;->t:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lr4/hg;->X:Lr4/qf;

    iget-wide v10, p0, Lr4/hg;->o:J

    cmp-long v0, v10, v4

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lr4/hg;->r:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lr4/hg;->A:Lr4/yk;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lr4/yk;->c()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lr4/hg;->B:Lr4/yk;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lr4/yk;->c()I

    move-result v0

    iget-object v4, p0, Lr4/hg;->A:Lr4/yk;

    invoke-virtual {v4}, Lr4/yk;->c()I

    move-result v4

    if-eq v0, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lr4/hg;->A:Lr4/yk;

    invoke-virtual {v0}, Lr4/yk;->c()I

    move-result v0

    new-array v4, v0, [I

    new-array v5, v0, [J

    new-array v7, v0, [J

    new-array v8, v0, [J

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v0, :cond_2

    iget-object v10, p0, Lr4/hg;->A:Lr4/yk;

    invoke-virtual {v10, v9}, Lr4/yk;->b(I)J

    move-result-wide v10

    aput-wide v10, v8, v9

    iget-wide v10, p0, Lr4/hg;->o:J

    iget-object v12, p0, Lr4/hg;->B:Lr4/yk;

    invoke-virtual {v12, v9}, Lr4/yk;->b(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    aput-wide v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v9, v0, -0x1

    if-ge v2, v9, :cond_3

    add-int/lit8 v9, v2, 0x1

    aget-wide v10, v5, v9

    aget-wide v12, v5, v2

    sub-long/2addr v10, v12

    long-to-int v11, v10

    aput v11, v4, v2

    aget-wide v10, v8, v9

    aget-wide v12, v8, v2

    sub-long/2addr v10, v12

    aput-wide v10, v7, v2

    move v2, v9

    goto :goto_1

    :cond_3
    iget-wide v10, p0, Lr4/hg;->o:J

    iget-wide v12, p0, Lr4/hg;->n:J

    add-long/2addr v10, v12

    aget-wide v12, v5, v9

    sub-long/2addr v10, v12

    long-to-int v0, v10

    aput v0, v4, v9

    iget-wide v10, p0, Lr4/hg;->r:J

    aget-wide v12, v8, v9

    sub-long/2addr v10, v12

    aput-wide v10, v7, v9

    iput-object v3, p0, Lr4/hg;->A:Lr4/yk;

    iput-object v3, p0, Lr4/hg;->B:Lr4/yk;

    new-instance v0, Lr4/nf;

    invoke-direct {v0, v4, v5, v7, v8}, Lr4/nf;-><init>([I[J[J[J)V

    goto :goto_3

    :cond_4
    :goto_2
    iput-object v3, p0, Lr4/hg;->A:Lr4/yk;

    iput-object v3, p0, Lr4/hg;->B:Lr4/yk;

    new-instance v0, Lr4/vf;

    iget-wide v2, p0, Lr4/hg;->r:J

    invoke-direct {v0, v2, v3}, Lr4/vf;-><init>(J)V

    :goto_3
    invoke-interface {p1, v0}, Lr4/qf;->b(Lr4/wf;)V

    iput-boolean v1, p0, Lr4/hg;->t:Z

    return-void

    :cond_5
    iget-object p1, p0, Lr4/hg;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lr4/hg;->X:Lr4/qf;

    invoke-interface {p1}, Lr4/qf;->j()V

    return-void

    :cond_6
    new-instance p1, Lr4/ld;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-wide v0, p0, Lr4/hg;->p:J

    cmp-long p1, v0, v8

    if-nez p1, :cond_8

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lr4/hg;->p:J

    :cond_8
    iget-wide v0, p0, Lr4/hg;->q:J

    cmp-long p1, v0, v8

    if-eqz p1, :cond_e

    invoke-virtual {p0, v0, v1}, Lr4/hg;->p(J)J

    move-result-wide v0

    iput-wide v0, p0, Lr4/hg;->r:J

    return-void

    :cond_9
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iget-boolean v0, p1, Lr4/gg;->e:Z

    if-eqz v0, :cond_e

    iget-object p1, p1, Lr4/gg;->f:[B

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Lr4/ld;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iget-boolean v0, p1, Lr4/gg;->e:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Lr4/gg;->g:Lr4/xf;

    if-eqz v0, :cond_c

    new-instance v0, Lr4/lf;

    new-array v1, v1, [Lr4/kf;

    new-instance v3, Lr4/kf;

    sget-object v4, Lr4/sc;->b:Ljava/util/UUID;

    iget-object v5, p0, Lr4/hg;->s:Lr4/gg;

    iget-object v5, v5, Lr4/gg;->g:Lr4/xf;

    iget-object v5, v5, Lr4/xf;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5, v2}, Lr4/kf;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lr4/lf;-><init>([Lr4/kf;)V

    iput-object v0, p1, Lr4/gg;->i:Lr4/lf;

    return-void

    :cond_c
    new-instance p1, Lr4/ld;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget p1, p0, Lr4/hg;->u:I

    if-eq p1, v6, :cond_f

    iget-wide v0, p0, Lr4/hg;->v:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_f

    if-ne p1, v7, :cond_e

    iput-wide v0, p0, Lr4/hg;->x:J

    :cond_e
    :goto_4
    return-void

    :cond_f
    new-instance p1, Lr4/ld;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iget-object p1, p1, Lr4/gg;->a:Ljava/lang/String;

    const-string v0, "V_VP8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_VP9"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "V_THEORA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_OPUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_AAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MPEG/L2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MPEG/L3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_AC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_EAC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_TRUEHD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_FLAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_MS/ACM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_VOBSUB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_HDMV/PGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "S_DVBSUB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iget-object v0, p0, Lr4/hg;->X:Lr4/qf;

    iget v1, p1, Lr4/gg;->b:I

    invoke-virtual {p1, v0, v1}, Lr4/gg;->b(Lr4/qf;I)V

    iget-object p1, p0, Lr4/hg;->b:Landroid/util/SparseArray;

    iget-object v0, p0, Lr4/hg;->s:Lr4/gg;

    iget v1, v0, Lr4/gg;->b:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    iput-object v3, p0, Lr4/hg;->s:Lr4/gg;

    return-void

    :cond_13
    iget p1, p0, Lr4/hg;->D:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    return-void

    :cond_14
    iget-boolean p1, p0, Lr4/hg;->W:Z

    if-nez p1, :cond_15

    iget p1, p0, Lr4/hg;->L:I

    or-int/2addr p1, v1

    iput p1, p0, Lr4/hg;->L:I

    :cond_15
    iget-object p1, p0, Lr4/hg;->b:Landroid/util/SparseArray;

    iget v0, p0, Lr4/hg;->J:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/gg;

    iget-wide v0, p0, Lr4/hg;->E:J

    invoke-virtual {p0, p1, v0, v1}, Lr4/hg;->j(Lr4/gg;J)V

    iput v2, p0, Lr4/hg;->D:I

    return-void
.end method

.method public final d(IJ)V
    .locals 8

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_15

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->v:I

    return-void

    :pswitch_1
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->u:I

    return-void

    :pswitch_2
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput-boolean v7, p1, Lr4/gg;->q:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_2

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    const/4 p2, 0x4

    if-eq p3, p2, :cond_0

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iput v6, p1, Lr4/gg;->r:I

    return-void

    :cond_1
    iput v1, p1, Lr4/gg;->r:I

    return-void

    :cond_2
    iput v7, p1, Lr4/gg;->r:I

    return-void

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v7, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v0, p1, Lr4/gg;->s:I

    return-void

    :cond_4
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v1, p1, Lr4/gg;->s:I

    return-void

    :cond_5
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v5, p1, Lr4/gg;->s:I

    return-void

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v7, p1, Lr4/gg;->t:I

    return-void

    :cond_7
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v6, p1, Lr4/gg;->t:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Lr4/hg;->p:J

    return-void

    :sswitch_1
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->d:I

    return-void

    :sswitch_2
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->H:I

    return-void

    :sswitch_3
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput-wide p2, p1, Lr4/gg;->K:J

    return-void

    :sswitch_4
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput-wide p2, p1, Lr4/gg;->J:J

    return-void

    :sswitch_5
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    cmp-long v0, p2, v3

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p1, Lr4/gg;->M:Z

    return-void

    :sswitch_6
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->m:I

    return-void

    :sswitch_7
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->n:I

    return-void

    :sswitch_8
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->l:I

    return-void

    :sswitch_9
    long-to-int p1, p2

    if-eqz p1, :cond_c

    if-eq p1, v7, :cond_b

    if-eq p1, v5, :cond_a

    const/16 p2, 0xf

    if-eq p1, p2, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v5, p1, Lr4/gg;->p:I

    return-void

    :cond_a
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v7, p1, Lr4/gg;->p:I

    return-void

    :cond_b
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v6, p1, Lr4/gg;->p:I

    return-void

    :cond_c
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput v1, p1, Lr4/gg;->p:I

    return-void

    :sswitch_a
    iget-wide v0, p0, Lr4/hg;->o:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lr4/hg;->v:J

    return-void

    :sswitch_b
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AESSettingsCipherMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_c
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncAlgo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p1, Lr4/ld;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v3

    if-ltz p1, :cond_10

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_10

    goto/16 :goto_0

    :cond_10
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocTypeReadVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    new-instance p1, Lr4/ld;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    iput-boolean v7, p0, Lr4/hg;->W:Z

    return-void

    :sswitch_11
    iget-boolean p1, p0, Lr4/hg;->C:Z

    if-nez p1, :cond_16

    iget-object p1, p0, Lr4/hg;->B:Lr4/yk;

    invoke-virtual {p1, p2, p3}, Lr4/yk;->a(J)V

    iput-boolean v7, p0, Lr4/hg;->C:Z

    return-void

    :sswitch_12
    invoke-virtual {p0, p2, p3}, Lr4/hg;->p(J)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/hg;->z:J

    return-void

    :sswitch_13
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->b:I

    return-void

    :sswitch_14
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->k:I

    return-void

    :sswitch_15
    iget-object p1, p0, Lr4/hg;->A:Lr4/yk;

    invoke-virtual {p0, p2, p3}, Lr4/hg;->p(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lr4/yk;->a(J)V

    return-void

    :sswitch_16
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->j:I

    return-void

    :sswitch_17
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->G:I

    return-void

    :sswitch_18
    invoke-virtual {p0, p2, p3}, Lr4/hg;->p(J)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/hg;->F:J

    return-void

    :sswitch_19
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    cmp-long v0, p2, v3

    if-nez v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    iput-boolean v1, p1, Lr4/gg;->L:Z

    return-void

    :sswitch_1a
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    long-to-int p3, p2

    iput p3, p1, Lr4/gg;->c:I

    return-void

    :cond_13
    cmp-long p1, p2, v3

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_17

    :cond_16
    :goto_0
    return-void

    :cond_17
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x9b -> :sswitch_18
        0x9f -> :sswitch_17
        0xb0 -> :sswitch_16
        0xb3 -> :sswitch_15
        0xba -> :sswitch_14
        0xd7 -> :sswitch_13
        0xe7 -> :sswitch_12
        0xf1 -> :sswitch_11
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_e
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_c
        0x47e8 -> :sswitch_b
        0x53ac -> :sswitch_a
        0x53b8 -> :sswitch_9
        0x54b0 -> :sswitch_8
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_6
        0x55aa -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->F:F

    return-void

    :pswitch_1
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->E:F

    return-void

    :pswitch_2
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->D:F

    return-void

    :pswitch_3
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->C:F

    return-void

    :pswitch_4
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->B:F

    return-void

    :pswitch_5
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->A:F

    return-void

    :pswitch_6
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->z:F

    return-void

    :pswitch_7
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->y:F

    return-void

    :pswitch_8
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->x:F

    return-void

    :pswitch_9
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-float p2, p2

    iput p2, p1, Lr4/gg;->w:F

    return-void

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Lr4/hg;->q:J

    return-void

    :cond_1
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    double-to-int p2, p2

    iput p2, p1, Lr4/gg;->I:I

    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
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

.method public final f(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    invoke-static {p1, p2}, Lr4/gg;->a(Lr4/gg;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p1, p0, Lr4/hg;->s:Lr4/gg;

    iput-object p2, p1, Lr4/gg;->a:Ljava/lang/String;

    return-void
.end method

.method public final g(IILr4/of;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    iget-object v1, v0, Lr4/hg;->s:Lr4/gg;

    new-array v4, v2, [B

    iput-object v4, v1, Lr4/gg;->o:[B

    invoke-virtual {v3, v4, v7, v2, v7}, Lr4/of;->b([BIIZ)Z

    return-void

    :cond_0
    new-instance v2, Lr4/ld;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v1, v0, Lr4/hg;->s:Lr4/gg;

    new-array v4, v2, [B

    iput-object v4, v1, Lr4/gg;->h:[B

    invoke-virtual {v3, v4, v7, v2, v7}, Lr4/of;->b([BIIZ)Z

    return-void

    :cond_2
    iget-object v1, v0, Lr4/hg;->h:Lr4/dl;

    iget-object v1, v1, Lr4/dl;->a:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, v0, Lr4/hg;->h:Lr4/dl;

    iget-object v1, v1, Lr4/dl;->a:[B

    rsub-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v1, v4, v2, v7}, Lr4/of;->b([BIIZ)Z

    iget-object v1, v0, Lr4/hg;->h:Lr4/dl;

    invoke-virtual {v1, v7}, Lr4/dl;->i(I)V

    iget-object v1, v0, Lr4/hg;->h:Lr4/dl;

    invoke-virtual {v1}, Lr4/dl;->p()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lr4/hg;->u:I

    return-void

    :cond_3
    new-array v1, v2, [B

    invoke-virtual {v3, v1, v7, v2, v7}, Lr4/of;->b([BIIZ)Z

    iget-object v2, v0, Lr4/hg;->s:Lr4/gg;

    new-instance v3, Lr4/xf;

    invoke-direct {v3, v6, v1}, Lr4/xf;-><init>(I[B)V

    iput-object v3, v2, Lr4/gg;->g:Lr4/xf;

    return-void

    :cond_4
    iget-object v1, v0, Lr4/hg;->s:Lr4/gg;

    new-array v4, v2, [B

    iput-object v4, v1, Lr4/gg;->f:[B

    invoke-virtual {v3, v4, v7, v2, v7}, Lr4/of;->b([BIIZ)Z

    return-void

    :cond_5
    iget v4, v0, Lr4/hg;->D:I

    const/16 v8, 0x8

    if-nez v4, :cond_6

    iget-object v4, v0, Lr4/hg;->a:Lr4/jg;

    invoke-virtual {v4, v3, v7, v6, v8}, Lr4/jg;->e(Lr4/of;ZZI)J

    move-result-wide v9

    long-to-int v4, v9

    iput v4, v0, Lr4/hg;->J:I

    iget-object v4, v0, Lr4/hg;->a:Lr4/jg;

    invoke-virtual {v4}, Lr4/jg;->b()I

    move-result v4

    iput v4, v0, Lr4/hg;->K:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v0, Lr4/hg;->F:J

    iput v6, v0, Lr4/hg;->D:I

    iget-object v4, v0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v4}, Lr4/dl;->c()V

    :cond_6
    iget-object v4, v0, Lr4/hg;->b:Landroid/util/SparseArray;

    iget v9, v0, Lr4/hg;->J:I

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/gg;

    if-nez v4, :cond_7

    iget v1, v0, Lr4/hg;->K:I

    sub-int v1, v2, v1

    invoke-virtual {v3, v1, v7}, Lr4/of;->d(IZ)Z

    iput v7, v0, Lr4/hg;->D:I

    return-void

    :cond_7
    iget v9, v0, Lr4/hg;->D:I

    if-ne v9, v6, :cond_1b

    const/4 v9, 0x3

    invoke-virtual {v0, v3, v9}, Lr4/hg;->r(Lr4/of;I)V

    iget-object v10, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v10, v10, Lr4/dl;->a:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v6

    const/16 v12, 0xff

    if-nez v10, :cond_8

    iput v6, v0, Lr4/hg;->H:I

    iget-object v9, v0, Lr4/hg;->I:[I

    invoke-static {v9, v6}, Lr4/hg;->q([II)[I

    move-result-object v9

    iput-object v9, v0, Lr4/hg;->I:[I

    iget v10, v0, Lr4/hg;->K:I

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x3

    aput v2, v9, v7

    goto/16 :goto_5

    :cond_8
    if-ne v1, v5, :cond_1a

    const/4 v13, 0x4

    invoke-virtual {v0, v3, v13}, Lr4/hg;->r(Lr4/of;I)V

    iget-object v14, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v14, v14, Lr4/dl;->a:[B

    aget-byte v14, v14, v9

    and-int/2addr v14, v12

    add-int/2addr v14, v6

    iput v14, v0, Lr4/hg;->H:I

    iget-object v15, v0, Lr4/hg;->I:[I

    invoke-static {v15, v14}, Lr4/hg;->q([II)[I

    move-result-object v14

    iput-object v14, v0, Lr4/hg;->I:[I

    if-ne v10, v11, :cond_9

    iget v9, v0, Lr4/hg;->K:I

    iget v10, v0, Lr4/hg;->H:I

    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, -0x4

    div-int/2addr v2, v10

    invoke-static {v14, v7, v10, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_5

    :cond_9
    if-ne v10, v6, :cond_c

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v14, v0, Lr4/hg;->H:I

    add-int/lit8 v14, v14, -0x1

    if-ge v9, v14, :cond_b

    iget-object v14, v0, Lr4/hg;->I:[I

    aput v7, v14, v9

    :cond_a
    add-int/2addr v13, v6

    invoke-virtual {v0, v3, v13}, Lr4/hg;->r(Lr4/of;I)V

    iget-object v14, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v14, v14, Lr4/dl;->a:[B

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v12

    iget-object v15, v0, Lr4/hg;->I:[I

    aget v16, v15, v9

    add-int v16, v16, v14

    aput v16, v15, v9

    if-eq v14, v12, :cond_a

    add-int v10, v10, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_b
    iget-object v9, v0, Lr4/hg;->I:[I

    iget v15, v0, Lr4/hg;->K:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v9, v14

    goto/16 :goto_5

    :cond_c
    if-ne v10, v9, :cond_19

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    iget v14, v0, Lr4/hg;->H:I

    add-int/lit8 v14, v14, -0x1

    if-ge v9, v14, :cond_14

    iget-object v14, v0, Lr4/hg;->I:[I

    aput v7, v14, v9

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v0, v3, v13}, Lr4/hg;->r(Lr4/of;I)V

    add-int/lit8 v14, v13, -0x1

    iget-object v15, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v15, v15, Lr4/dl;->a:[B

    aget-byte v15, v15, v14

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v8, :cond_10

    rsub-int/lit8 v16, v15, 0x7

    shl-int v16, v6, v16

    iget-object v5, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v5, v5, Lr4/dl;->a:[B

    aget-byte v5, v5, v14

    and-int v5, v5, v16

    if-eqz v5, :cond_f

    add-int/2addr v13, v15

    invoke-virtual {v0, v3, v13}, Lr4/hg;->r(Lr4/of;I)V

    add-int/lit8 v5, v14, 0x1

    iget-object v11, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v11, v11, Lr4/dl;->a:[B

    aget-byte v11, v11, v14

    and-int/2addr v11, v12

    xor-int/lit8 v14, v16, -0x1

    and-int/2addr v11, v14

    int-to-long v6, v11

    :goto_3
    if-ge v5, v13, :cond_d

    add-int/lit8 v11, v5, 0x1

    shl-long/2addr v6, v8

    iget-object v14, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v14, v14, Lr4/dl;->a:[B

    aget-byte v5, v14, v5

    and-int/2addr v5, v12

    move/from16 v17, v13

    int-to-long v12, v5

    or-long/2addr v6, v12

    move v5, v11

    move/from16 v13, v17

    const/16 v12, 0xff

    goto :goto_3

    :cond_d
    move/from16 v17, v13

    if-lez v9, :cond_e

    const-wide/16 v11, 0x1

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    shl-long/2addr v11, v15

    const-wide/16 v13, -0x1

    add-long/2addr v11, v13

    sub-long/2addr v6, v11

    :cond_e
    move/from16 v13, v17

    goto :goto_4

    :cond_f
    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto :goto_2

    :cond_10
    const-wide/16 v6, 0x0

    :goto_4
    const-wide/32 v11, -0x80000000

    cmp-long v5, v6, v11

    if-ltz v5, :cond_12

    const-wide/32 v11, 0x7fffffff

    cmp-long v5, v6, v11

    if-gtz v5, :cond_12

    long-to-int v5, v6

    iget-object v6, v0, Lr4/hg;->I:[I

    if-eqz v9, :cond_11

    add-int/lit8 v7, v9, -0x1

    aget v7, v6, v7

    add-int/2addr v5, v7

    :cond_11
    aput v5, v6, v9

    add-int/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x2

    const/16 v12, 0xff

    goto/16 :goto_1

    :cond_12
    new-instance v1, Lr4/ld;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v1, Lr4/ld;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    iget-object v5, v0, Lr4/hg;->I:[I

    iget v6, v0, Lr4/hg;->K:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v13

    sub-int/2addr v2, v10

    aput v2, v5, v14

    :goto_5
    iget-object v2, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v2, v2, Lr4/dl;->a:[B

    const/4 v5, 0x0

    aget-byte v6, v2, v5

    const/4 v5, 0x1

    aget-byte v2, v2, v5

    iget-wide v9, v0, Lr4/hg;->z:J

    shl-int/lit8 v5, v6, 0x8

    const/16 v6, 0xff

    and-int/2addr v2, v6

    or-int/2addr v2, v5

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6}, Lr4/hg;->p(J)J

    move-result-wide v5

    add-long/2addr v9, v5

    iput-wide v9, v0, Lr4/hg;->E:J

    iget-object v2, v0, Lr4/hg;->f:Lr4/dl;

    iget-object v2, v2, Lr4/dl;->a:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/lit8 v6, v2, 0x8

    iget v7, v4, Lr4/gg;->c:I

    if-eq v7, v5, :cond_17

    const/16 v5, 0xa3

    if-ne v1, v5, :cond_16

    const/16 v1, 0x80

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_15

    const/16 v1, 0xa3

    goto :goto_6

    :cond_15
    const/16 v1, 0xa3

    :cond_16
    const/4 v2, 0x0

    goto :goto_7

    :cond_17
    :goto_6
    const/4 v2, 0x1

    :goto_7
    if-ne v6, v8, :cond_18

    const/high16 v5, -0x80000000

    goto :goto_8

    :cond_18
    const/4 v5, 0x0

    :goto_8
    or-int/2addr v2, v5

    iput v2, v0, Lr4/hg;->L:I

    const/4 v2, 0x2

    iput v2, v0, Lr4/hg;->D:I

    const/4 v2, 0x0

    iput v2, v0, Lr4/hg;->G:I

    goto :goto_9

    :cond_19
    new-instance v1, Lr4/ld;

    const-string v2, "Unexpected lacing value: 2"

    invoke-direct {v1, v2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v1, Lr4/ld;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_9
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1d

    :goto_a
    iget v1, v0, Lr4/hg;->G:I

    iget v2, v0, Lr4/hg;->H:I

    if-ge v1, v2, :cond_1c

    iget-object v2, v0, Lr4/hg;->I:[I

    aget v1, v2, v1

    invoke-virtual {v0, v3, v4, v1}, Lr4/hg;->s(Lr4/of;Lr4/gg;I)V

    iget-wide v1, v0, Lr4/hg;->E:J

    iget v5, v0, Lr4/hg;->G:I

    iget v6, v4, Lr4/gg;->d:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    invoke-virtual {v0, v4, v1, v2}, Lr4/hg;->j(Lr4/gg;J)V

    iget v1, v0, Lr4/hg;->G:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lr4/hg;->G:I

    goto :goto_a

    :cond_1c
    const/4 v1, 0x0

    iput v1, v0, Lr4/hg;->D:I

    return-void

    :cond_1d
    const/4 v1, 0x0

    iget-object v2, v0, Lr4/hg;->I:[I

    aget v1, v2, v1

    invoke-virtual {v0, v3, v4, v1}, Lr4/hg;->s(Lr4/of;Lr4/gg;I)V

    return-void
.end method

.method public final j(Lr4/gg;J)V
    .locals 12

    iget-object v0, p1, Lr4/gg;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/hg;->j:Lr4/dl;

    iget-object v0, v0, Lr4/dl;->a:[B

    iget-wide v2, p0, Lr4/hg;->F:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    sget-object v2, Lr4/hg;->b0:[B

    goto :goto_0

    :cond_0
    const-wide v4, 0xd693a400L

    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v5, v4

    const v4, 0x3938700

    mul-int v4, v4, v5

    int-to-long v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v9, 0xf4240

    div-long v9, v2, v9

    long-to-int v4, v9

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v5

    const/4 v5, 0x3

    const v8, 0xf4240

    mul-int v4, v4, v8

    int-to-long v10, v4

    sub-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v5

    const-string v2, "%02d:%02d:%02d,%03d"

    invoke-static {v7, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr4/ll;->d(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    const/16 v3, 0x13

    const/16 v4, 0xc

    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lr4/gg;->O:Lr4/yf;

    iget-object v2, p0, Lr4/hg;->j:Lr4/dl;

    invoke-virtual {v2}, Lr4/dl;->e()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lr4/yf;->c(Lr4/dl;I)V

    iget v0, p0, Lr4/hg;->U:I

    iget-object v2, p0, Lr4/hg;->j:Lr4/dl;

    invoke-virtual {v2}, Lr4/dl;->e()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lr4/hg;->U:I

    :cond_1
    iget-object v2, p1, Lr4/gg;->O:Lr4/yf;

    iget v5, p0, Lr4/hg;->L:I

    iget v6, p0, Lr4/hg;->U:I

    const/4 v7, 0x0

    iget-object v8, p1, Lr4/gg;->g:Lr4/xf;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lr4/yf;->a(JIIILr4/xf;)V

    iput-boolean v1, p0, Lr4/hg;->V:Z

    invoke-virtual {p0}, Lr4/hg;->k()V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/hg;->M:I

    iput v0, p0, Lr4/hg;->U:I

    iput v0, p0, Lr4/hg;->T:I

    iput-boolean v0, p0, Lr4/hg;->N:Z

    iput-boolean v0, p0, Lr4/hg;->O:Z

    iput-boolean v0, p0, Lr4/hg;->Q:Z

    iput v0, p0, Lr4/hg;->S:I

    iput-byte v0, p0, Lr4/hg;->R:B

    iput-boolean v0, p0, Lr4/hg;->P:Z

    iget-object v0, p0, Lr4/hg;->i:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->c()V

    return-void
.end method

.method public final l(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/hg;->z:J

    const/4 p1, 0x0

    iput p1, p0, Lr4/hg;->D:I

    iget-object p1, p0, Lr4/hg;->Y:Lr4/cg;

    invoke-virtual {p1}, Lr4/cg;->a()V

    iget-object p1, p0, Lr4/hg;->a:Lr4/jg;

    invoke-virtual {p1}, Lr4/jg;->a()V

    invoke-virtual {p0}, Lr4/hg;->k()V

    return-void
.end method

.method public final m(Lr4/of;Lr4/uf;)I
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/hg;->V:Z

    :cond_0
    iget-boolean v1, p0, Lr4/hg;->V:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lr4/hg;->Y:Lr4/cg;

    invoke-virtual {v1, p1}, Lr4/cg;->c(Lr4/of;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lr4/of;->h()J

    move-result-wide v1

    iget-boolean v3, p0, Lr4/hg;->w:Z

    if-eqz v3, :cond_1

    iput-wide v1, p0, Lr4/hg;->y:J

    iget-wide v1, p0, Lr4/hg;->x:J

    iput-wide v1, p2, Lr4/uf;->a:J

    iput-boolean v0, p0, Lr4/hg;->w:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lr4/hg;->t:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lr4/hg;->y:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, p2, Lr4/uf;->a:J

    iput-wide v3, p0, Lr4/hg;->y:J

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public final n(Lr4/of;)Z
    .locals 1

    new-instance v0, Lr4/ig;

    invoke-direct {v0}, Lr4/ig;-><init>()V

    invoke-virtual {v0, p1}, Lr4/ig;->a(Lr4/of;)Z

    move-result p1

    return p1
.end method

.method public final o(Lr4/qf;)V
    .locals 0

    iput-object p1, p0, Lr4/hg;->X:Lr4/qf;

    return-void
.end method

.method public final p(J)J
    .locals 6

    iget-wide v2, p0, Lr4/hg;->p:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lr4/ll;->j(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Lr4/ld;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lr4/of;I)V
    .locals 4

    iget-object v0, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->e()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->h()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lr4/hg;->f:Lr4/dl;

    iget-object v1, v0, Lr4/dl;->a:[B

    array-length v2, v1

    add-int/2addr v2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v2}, Lr4/dl;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lr4/dl;->b([BI)V

    :cond_1
    iget-object v0, p0, Lr4/hg;->f:Lr4/dl;

    iget-object v1, v0, Lr4/dl;->a:[B

    invoke-virtual {v0}, Lr4/dl;->e()I

    move-result v0

    iget-object v2, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v2}, Lr4/dl;->e()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lr4/of;->b([BIIZ)Z

    iget-object p1, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {p1, p2}, Lr4/dl;->f(I)V

    return-void
.end method

.method public final s(Lr4/of;Lr4/gg;I)V
    .locals 10

    iget-object v0, p2, Lr4/gg;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p3, 0x20

    iget-object v0, p0, Lr4/hg;->j:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->h()I

    move-result v0

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lr4/hg;->j:Lr4/dl;

    sget-object v2, Lr4/hg;->a0:[B

    add-int v3, p2, p3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v0, Lr4/dl;->a:[B

    :cond_0
    iget-object v0, p0, Lr4/hg;->j:Lr4/dl;

    iget-object v0, v0, Lr4/dl;->a:[B

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, p3, v1}, Lr4/of;->b([BIIZ)Z

    iget-object p1, p0, Lr4/hg;->j:Lr4/dl;

    invoke-virtual {p1, v1}, Lr4/dl;->i(I)V

    iget-object p1, p0, Lr4/hg;->j:Lr4/dl;

    invoke-virtual {p1, p2}, Lr4/dl;->f(I)V

    return-void

    :cond_1
    iget-object v0, p2, Lr4/gg;->O:Lr4/yf;

    iget-boolean v2, p0, Lr4/hg;->N:Z

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_e

    iget-boolean v2, p2, Lr4/gg;->e:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lr4/hg;->L:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v2, v6

    iput v2, p0, Lr4/hg;->L:I

    iget-boolean v2, p0, Lr4/hg;->O:Z

    const/16 v6, 0x80

    if-nez v2, :cond_3

    iget-object v2, p0, Lr4/hg;->f:Lr4/dl;

    iget-object v2, v2, Lr4/dl;->a:[B

    invoke-virtual {p1, v2, v1, v5, v1}, Lr4/of;->b([BIIZ)Z

    iget v2, p0, Lr4/hg;->M:I

    add-int/2addr v2, v5

    iput v2, p0, Lr4/hg;->M:I

    iget-object v2, p0, Lr4/hg;->f:Lr4/dl;

    iget-object v2, v2, Lr4/dl;->a:[B

    aget-byte v2, v2, v1

    and-int/lit16 v7, v2, 0x80

    if-eq v7, v6, :cond_2

    iput-byte v2, p0, Lr4/hg;->R:B

    iput-boolean v5, p0, Lr4/hg;->O:Z

    goto :goto_0

    :cond_2
    new-instance p1, Lr4/ld;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-byte v2, p0, Lr4/hg;->R:B

    and-int/lit8 v7, v2, 0x1

    if-ne v7, v5, :cond_d

    and-int/2addr v2, v4

    iget v7, p0, Lr4/hg;->L:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lr4/hg;->L:I

    iget-boolean v7, p0, Lr4/hg;->P:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lr4/hg;->k:Lr4/dl;

    iget-object v7, v7, Lr4/dl;->a:[B

    const/16 v8, 0x8

    invoke-virtual {p1, v7, v1, v8, v1}, Lr4/of;->b([BIIZ)Z

    iget v7, p0, Lr4/hg;->M:I

    add-int/2addr v7, v8

    iput v7, p0, Lr4/hg;->M:I

    iput-boolean v5, p0, Lr4/hg;->P:Z

    iget-object v7, p0, Lr4/hg;->f:Lr4/dl;

    iget-object v9, v7, Lr4/dl;->a:[B

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v9, v1

    invoke-virtual {v7, v1}, Lr4/dl;->i(I)V

    iget-object v6, p0, Lr4/hg;->f:Lr4/dl;

    invoke-interface {v0, v6, v5}, Lr4/yf;->c(Lr4/dl;I)V

    iget v6, p0, Lr4/hg;->U:I

    add-int/2addr v6, v5

    iput v6, p0, Lr4/hg;->U:I

    iget-object v6, p0, Lr4/hg;->k:Lr4/dl;

    invoke-virtual {v6, v1}, Lr4/dl;->i(I)V

    iget-object v6, p0, Lr4/hg;->k:Lr4/dl;

    invoke-interface {v0, v6, v8}, Lr4/yf;->c(Lr4/dl;I)V

    iget v6, p0, Lr4/hg;->U:I

    add-int/2addr v6, v8

    iput v6, p0, Lr4/hg;->U:I

    :cond_5
    if-ne v2, v4, :cond_d

    iget-boolean v2, p0, Lr4/hg;->Q:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lr4/hg;->f:Lr4/dl;

    iget-object v2, v2, Lr4/dl;->a:[B

    invoke-virtual {p1, v2, v1, v5, v1}, Lr4/of;->b([BIIZ)Z

    iget v2, p0, Lr4/hg;->M:I

    add-int/2addr v2, v5

    iput v2, p0, Lr4/hg;->M:I

    iget-object v2, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v2, v1}, Lr4/dl;->i(I)V

    iget-object v2, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v2}, Lr4/dl;->l()I

    move-result v2

    iput v2, p0, Lr4/hg;->S:I

    iput-boolean v5, p0, Lr4/hg;->Q:Z

    :cond_6
    iget v2, p0, Lr4/hg;->S:I

    mul-int/lit8 v2, v2, 0x4

    iget-object v6, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v6, v2}, Lr4/dl;->a(I)V

    iget-object v6, p0, Lr4/hg;->f:Lr4/dl;

    iget-object v6, v6, Lr4/dl;->a:[B

    invoke-virtual {p1, v6, v1, v2, v1}, Lr4/of;->b([BIIZ)Z

    iget v6, p0, Lr4/hg;->M:I

    add-int/2addr v6, v2

    iput v6, p0, Lr4/hg;->M:I

    iget v2, p0, Lr4/hg;->S:I

    shr-int/2addr v2, v5

    add-int/2addr v2, v5

    mul-int/lit8 v6, v2, 0x6

    add-int/2addr v6, v4

    iget-object v7, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_8

    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    :cond_8
    iget-object v7, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    int-to-short v2, v2

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_2
    iget v8, p0, Lr4/hg;->S:I

    if-ge v2, v8, :cond_a

    iget-object v8, p0, Lr4/hg;->f:Lr4/dl;

    invoke-virtual {v8}, Lr4/dl;->u()I

    move-result v8

    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_9

    iget-object v9, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v7, v8

    goto :goto_2

    :cond_a
    iget v2, p0, Lr4/hg;->M:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v7

    and-int/lit8 v7, v8, 0x1

    if-ne v7, v5, :cond_b

    iget-object v7, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    int-to-short v2, v2

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    iget-object v2, p0, Lr4/hg;->l:Lr4/dl;

    iget-object v7, p0, Lr4/hg;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Lr4/dl;->b([BI)V

    iget-object v2, p0, Lr4/hg;->l:Lr4/dl;

    invoke-interface {v0, v2, v6}, Lr4/yf;->c(Lr4/dl;I)V

    iget v2, p0, Lr4/hg;->U:I

    add-int/2addr v2, v6

    iput v2, p0, Lr4/hg;->U:I

    goto :goto_5

    :cond_c
    iget-object v2, p2, Lr4/gg;->f:[B

    if-eqz v2, :cond_d

    iget-object v6, p0, Lr4/hg;->i:Lr4/dl;

    array-length v7, v2

    invoke-virtual {v6, v2, v7}, Lr4/dl;->b([BI)V

    :cond_d
    :goto_5
    iput-boolean v5, p0, Lr4/hg;->N:Z

    :cond_e
    iget-object v2, p0, Lr4/hg;->i:Lr4/dl;

    invoke-virtual {v2}, Lr4/dl;->e()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p2, Lr4/gg;->a:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p2, Lr4/gg;->a:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_6
    iget v2, p0, Lr4/hg;->M:I

    if-ge v2, p3, :cond_12

    sub-int v2, p3, v2

    invoke-virtual {p0, p1, v0, v2}, Lr4/hg;->t(Lr4/of;Lr4/yf;I)I

    goto :goto_6

    :cond_f
    iget-object v2, p0, Lr4/hg;->e:Lr4/dl;

    iget-object v2, v2, Lr4/dl;->a:[B

    aput-byte v1, v2, v1

    aput-byte v1, v2, v5

    aput-byte v1, v2, v4

    iget v4, p2, Lr4/gg;->P:I

    rsub-int/lit8 v5, v4, 0x4

    :goto_7
    iget v6, p0, Lr4/hg;->M:I

    if-ge v6, p3, :cond_12

    iget v6, p0, Lr4/hg;->T:I

    if-nez v6, :cond_11

    iget-object v6, p0, Lr4/hg;->i:Lr4/dl;

    invoke-virtual {v6}, Lr4/dl;->d()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v5, v6

    sub-int v8, v4, v6

    invoke-virtual {p1, v2, v7, v8, v1}, Lr4/of;->b([BIIZ)Z

    if-lez v6, :cond_10

    iget-object v7, p0, Lr4/hg;->i:Lr4/dl;

    invoke-virtual {v7, v2, v5, v6}, Lr4/dl;->k([BII)V

    :cond_10
    iget v6, p0, Lr4/hg;->M:I

    add-int/2addr v6, v4

    iput v6, p0, Lr4/hg;->M:I

    iget-object v6, p0, Lr4/hg;->e:Lr4/dl;

    invoke-virtual {v6, v1}, Lr4/dl;->i(I)V

    iget-object v6, p0, Lr4/hg;->e:Lr4/dl;

    invoke-virtual {v6}, Lr4/dl;->u()I

    move-result v6

    iput v6, p0, Lr4/hg;->T:I

    iget-object v6, p0, Lr4/hg;->d:Lr4/dl;

    invoke-virtual {v6, v1}, Lr4/dl;->i(I)V

    iget-object v6, p0, Lr4/hg;->d:Lr4/dl;

    invoke-interface {v0, v6, v3}, Lr4/yf;->c(Lr4/dl;I)V

    iget v6, p0, Lr4/hg;->U:I

    add-int/2addr v6, v3

    iput v6, p0, Lr4/hg;->U:I

    goto :goto_7

    :cond_11
    invoke-virtual {p0, p1, v0, v6}, Lr4/hg;->t(Lr4/of;Lr4/yf;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lr4/hg;->T:I

    goto :goto_7

    :cond_12
    iget-object p1, p2, Lr4/gg;->a:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lr4/hg;->g:Lr4/dl;

    invoke-virtual {p1, v1}, Lr4/dl;->i(I)V

    iget-object p1, p0, Lr4/hg;->g:Lr4/dl;

    invoke-interface {v0, p1, v3}, Lr4/yf;->c(Lr4/dl;I)V

    iget p1, p0, Lr4/hg;->U:I

    add-int/2addr p1, v3

    iput p1, p0, Lr4/hg;->U:I

    :cond_13
    return-void
.end method

.method public final t(Lr4/of;Lr4/yf;I)I
    .locals 1

    iget-object v0, p0, Lr4/hg;->i:Lr4/dl;

    invoke-virtual {v0}, Lr4/dl;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lr4/hg;->i:Lr4/dl;

    invoke-interface {p2, p3, p1}, Lr4/yf;->c(Lr4/dl;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lr4/yf;->b(Lr4/of;IZ)I

    move-result p1

    :goto_0
    iget p2, p0, Lr4/hg;->M:I

    add-int/2addr p2, p1

    iput p2, p0, Lr4/hg;->M:I

    iget p2, p0, Lr4/hg;->U:I

    add-int/2addr p2, p1

    iput p2, p0, Lr4/hg;->U:I

    return p1
.end method
