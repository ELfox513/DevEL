.class public final Lr4/q24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final b0:Lr4/g04;

.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:[B

.field public static final f0:Ljava/util/UUID;

.field public static final g0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:J

.field public B:Lr4/fb;

.field public C:Lr4/fb;

.field public D:Z

.field public E:Z

.field public F:I

.field public G:J

.field public H:J

.field public I:I

.field public J:I

.field public K:[I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:Z

.field public Q:I

.field public R:I

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:I

.field public X:B

.field public Y:Z

.field public Z:Lr4/d04;

.field public final a:Lr4/s24;

.field public final a0:Lr4/j24;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/o24;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lr4/xb;

.field public final e:Lr4/xb;

.field public final f:Lr4/xb;

.field public final g:Lr4/xb;

.field public final h:Lr4/xb;

.field public final i:Lr4/xb;

.field public final j:Lr4/xb;

.field public final k:Lr4/xb;

.field public final l:Lr4/xb;

.field public final m:Lr4/xb;

.field public n:Ljava/nio/ByteBuffer;

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:Lr4/o24;

.field public u:Z

.field public v:I

.field public w:J

.field public x:Z

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lr4/l24;->a:Lr4/g04;

    sput-object v0, Lr4/q24;->b0:Lr4/g04;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lr4/q24;->c0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Lr4/lc;->X(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lr4/q24;->d0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lr4/q24;->e0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lr4/q24;->f0:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr4/q24;->g0:Ljava/util/Map;

    return-void

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
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
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
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4

    new-instance p1, Lr4/j24;

    invoke-direct {p1}, Lr4/j24;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/q24;->p:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lr4/q24;->q:J

    iput-wide v2, p0, Lr4/q24;->r:J

    iput-wide v2, p0, Lr4/q24;->s:J

    iput-wide v0, p0, Lr4/q24;->y:J

    iput-wide v0, p0, Lr4/q24;->z:J

    iput-wide v2, p0, Lr4/q24;->A:J

    iput-object p1, p0, Lr4/q24;->a0:Lr4/j24;

    new-instance v0, Lr4/m24;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/m24;-><init>(Lr4/q24;Lr4/n24;)V

    invoke-virtual {p1, v0}, Lr4/j24;->a(Lr4/k24;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/q24;->c:Z

    new-instance v0, Lr4/s24;

    invoke-direct {v0}, Lr4/s24;-><init>()V

    iput-object v0, p0, Lr4/q24;->a:Lr4/s24;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lr4/q24;->b:Landroid/util/SparseArray;

    new-instance v0, Lr4/xb;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/q24;->f:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lr4/xb;-><init>([B)V

    iput-object v0, p0, Lr4/q24;->g:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/q24;->h:Lr4/xb;

    new-instance v0, Lr4/xb;

    sget-object v2, Lr4/nb;->a:[B

    invoke-direct {v0, v2}, Lr4/xb;-><init>([B)V

    iput-object v0, p0, Lr4/q24;->d:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/q24;->e:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-direct {v0}, Lr4/xb;-><init>()V

    iput-object v0, p0, Lr4/q24;->i:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-direct {v0}, Lr4/xb;-><init>()V

    iput-object v0, p0, Lr4/q24;->j:Lr4/xb;

    new-instance v0, Lr4/xb;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/q24;->k:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-direct {v0}, Lr4/xb;-><init>()V

    iput-object v0, p0, Lr4/q24;->l:Lr4/xb;

    new-instance v0, Lr4/xb;

    invoke-direct {v0}, Lr4/xb;-><init>()V

    iput-object v0, p0, Lr4/q24;->m:Lr4/xb;

    new-array p1, p1, [I

    iput-object p1, p0, Lr4/q24;->K:[I

    return-void
.end method

.method public static synthetic a()[B
    .locals 1

    sget-object v0, Lr4/q24;->d0:[B

    return-object v0
.end method

.method public static synthetic b()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lr4/q24;->f0:Ljava/util/UUID;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/Map;
    .locals 1

    sget-object v0, Lr4/q24;->g0:Ljava/util/Map;

    return-object v0
.end method

.method public static final n(I)I
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
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
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
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
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
        0x536e -> :sswitch_3
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
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
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

.method public static final o(I)Z
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

.method public static w(JLjava/lang/String;J)[B
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lr4/ja;->a(Z)V

    const-wide v2, 0xd693a400L

    div-long v2, p0, v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0xe10

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    const-wide/32 v4, 0x3938700

    div-long v4, p0, v4

    long-to-int v2, v4

    mul-int/lit8 v4, v2, 0x3c

    int-to-long v4, v4

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    div-long v4, p0, v6

    long-to-int v5, v4

    int-to-long v8, v5

    mul-long v8, v8, v6

    sub-long/2addr p0, v8

    div-long/2addr p0, p3

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x3

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v0

    invoke-static {p3, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr4/lc;->X(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static z([II)[I
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
.method public final d(IJJ)V
    .locals 5

    iget-object v0, p0, Lr4/q24;->Z:Lr4/d04;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0xae

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_a

    const/16 v0, 0x4dbb

    const-wide/16 v3, -0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x5035

    const/4 v1, 0x1

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
    iget-boolean p1, p0, Lr4/q24;->u:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lr4/q24;->c:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lr4/q24;->y:J

    cmp-long p3, p1, v3

    if-eqz p3, :cond_1

    iput-boolean v1, p0, Lr4/q24;->x:Z

    return-void

    :cond_1
    iget-object p1, p0, Lr4/q24;->Z:Lr4/d04;

    new-instance p2, Lr4/y04;

    iget-wide p3, p0, Lr4/q24;->s:J

    const-wide/16 v2, 0x0

    invoke-direct {p2, p3, p4, v2, v3}, Lr4/y04;-><init>(JJ)V

    invoke-interface {p1, p2}, Lr4/d04;->j(Lr4/z04;)V

    iput-boolean v1, p0, Lr4/q24;->u:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lr4/fb;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lr4/fb;-><init>(I)V

    iput-object p1, p0, Lr4/q24;->B:Lr4/fb;

    new-instance p1, Lr4/fb;

    invoke-direct {p1, p2}, Lr4/fb;-><init>(I)V

    iput-object p1, p0, Lr4/q24;->C:Lr4/fb;

    return-void

    :cond_4
    iget-wide v0, p0, Lr4/q24;->p:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_6

    cmp-long p1, v0, p2

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "Multiple Segment elements not supported"

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_6
    :goto_1
    iput-wide p2, p0, Lr4/q24;->p:J

    iput-wide p4, p0, Lr4/q24;->o:J

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput-boolean v1, p1, Lr4/o24;->x:Z

    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput-boolean v1, p1, Lr4/o24;->h:Z

    return-void

    :cond_9
    const/4 p1, -0x1

    iput p1, p0, Lr4/q24;->v:I

    iput-wide v3, p0, Lr4/q24;->w:J

    return-void

    :cond_a
    iput-boolean v1, p0, Lr4/q24;->D:Z

    return-void

    :cond_b
    new-instance p1, Lr4/o24;

    invoke-direct {p1, v2}, Lr4/o24;-><init>(Lr4/n24;)V

    iput-object p1, p0, Lr4/q24;->t:Lr4/o24;

    return-void

    :cond_c
    iput-boolean v1, p0, Lr4/q24;->P:Z

    return-void
.end method

.method public final e(Lr4/b04;)Z
    .locals 1

    new-instance v0, Lr4/r24;

    invoke-direct {v0}, Lr4/r24;-><init>()V

    invoke-virtual {v0, p1}, Lr4/r24;->a(Lr4/b04;)Z

    move-result p1

    return p1
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/q24;->E:Z

    :cond_0
    iget-boolean v1, p0, Lr4/q24;->E:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lr4/q24;->a0:Lr4/j24;

    invoke-virtual {v1, p1}, Lr4/j24;->c(Lr4/b04;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v1

    iget-boolean v3, p0, Lr4/q24;->x:Z

    if-eqz v3, :cond_1

    iput-wide v1, p0, Lr4/q24;->z:J

    iget-wide v1, p0, Lr4/q24;->y:J

    iput-wide v1, p2, Lr4/w04;->a:J

    iput-boolean v0, p0, Lr4/q24;->x:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lr4/q24;->u:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lr4/q24;->z:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, p2, Lr4/w04;->a:J

    iput-wide v3, p0, Lr4/q24;->z:J

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lr4/q24;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lr4/q24;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/o24;

    invoke-static {p1}, Lr4/o24;->e(Lr4/o24;)V

    iget-object p2, p1, Lr4/o24;->T:Lr4/p24;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lr4/p24;->d(Lr4/o24;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    return v0
.end method

.method public final g(I)V
    .locals 21

    move-object/from16 v7, p0

    move/from16 v0, p1

    iget-object v1, v7, Lr4/q24;->Z:Lr4/d04;

    invoke-static {v1}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_15

    const/16 v1, 0xae

    const/4 v3, -0x1

    if-eq v0, v1, :cond_12

    const/16 v1, 0x4dbb

    const-wide/16 v5, -0x1

    const v2, 0x1c53bb6b

    if-eq v0, v1, :cond_f

    const/16 v1, 0x6240

    if-eq v0, v1, :cond_d

    const/16 v1, 0x6d80

    if-eq v0, v1, :cond_b

    const v1, 0x1549a966

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v1, :cond_9

    const v1, 0x1654ae6b

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, v7, Lr4/q24;->u:Z

    if-nez v0, :cond_6

    iget-object v0, v7, Lr4/q24;->Z:Lr4/d04;

    iget-object v1, v7, Lr4/q24;->B:Lr4/fb;

    iget-object v2, v7, Lr4/q24;->C:Lr4/fb;

    iget-wide v12, v7, Lr4/q24;->p:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v5

    if-eqz v16, :cond_5

    iget-wide v5, v7, Lr4/q24;->s:J

    cmp-long v12, v5, v10

    if-eqz v12, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lr4/fb;->c()I

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lr4/fb;->c()I

    move-result v5

    invoke-virtual {v1}, Lr4/fb;->c()I

    move-result v6

    if-eq v5, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Lr4/fb;->c()I

    move-result v5

    new-array v6, v5, [I

    new-array v10, v5, [J

    new-array v11, v5, [J

    new-array v12, v5, [J

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_2

    invoke-virtual {v1, v13}, Lr4/fb;->b(I)J

    move-result-wide v16

    aput-wide v16, v12, v13

    iget-wide v8, v7, Lr4/q24;->p:J

    invoke-virtual {v2, v13}, Lr4/fb;->b(I)J

    move-result-wide v18

    add-long v8, v8, v18

    aput-wide v8, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v1, v5, -0x1

    if-ge v9, v1, :cond_3

    add-int/lit8 v1, v9, 0x1

    aget-wide v17, v10, v1

    aget-wide v19, v10, v9

    sub-long v3, v17, v19

    long-to-int v2, v3

    aput v2, v6, v9

    aget-wide v2, v12, v1

    aget-wide v17, v12, v9

    sub-long v2, v2, v17

    aput-wide v2, v11, v9

    move v9, v1

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    iget-wide v2, v7, Lr4/q24;->p:J

    iget-wide v4, v7, Lr4/q24;->o:J

    add-long/2addr v2, v4

    aget-wide v4, v10, v1

    sub-long/2addr v2, v4

    long-to-int v3, v2

    aput v3, v6, v1

    iget-wide v2, v7, Lr4/q24;->s:J

    aget-wide v4, v12, v1

    sub-long/2addr v2, v4

    aput-wide v2, v11, v1

    cmp-long v4, v2, v14

    if-gtz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x48

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MatroskaExtractor"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    :cond_4
    new-instance v1, Lr4/tz3;

    invoke-direct {v1, v6, v10, v11, v12}, Lr4/tz3;-><init>([I[J[J[J)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v1, Lr4/y04;

    iget-wide v2, v7, Lr4/q24;->s:J

    invoke-direct {v1, v2, v3, v14, v15}, Lr4/y04;-><init>(JJ)V

    :goto_3
    invoke-interface {v0, v1}, Lr4/d04;->j(Lr4/z04;)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Lr4/q24;->u:Z

    :cond_6
    const/4 v0, 0x0

    iput-object v0, v7, Lr4/q24;->B:Lr4/fb;

    iput-object v0, v7, Lr4/q24;->C:Lr4/fb;

    return-void

    :cond_7
    const/4 v0, 0x0

    iget-object v1, v7, Lr4/q24;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v7, Lr4/q24;->Z:Lr4/d04;

    invoke-interface {v0}, Lr4/d04;->y()V

    return-void

    :cond_8
    const-string v1, "No valid tracks were found"

    invoke-static {v1, v0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_9
    iget-wide v0, v7, Lr4/q24;->q:J

    cmp-long v2, v0, v10

    if-nez v2, :cond_a

    const-wide/32 v0, 0xf4240

    iput-wide v0, v7, Lr4/q24;->q:J

    :cond_a
    iget-wide v0, v7, Lr4/q24;->r:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_10

    invoke-virtual {v7, v0, v1}, Lr4/q24;->y(J)J

    move-result-wide v0

    iput-wide v0, v7, Lr4/q24;->s:J

    return-void

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lr4/q24;->p(I)V

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    iget-boolean v1, v0, Lr4/o24;->h:Z

    if-eqz v1, :cond_10

    iget-object v0, v0, Lr4/o24;->i:[B

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lr4/q24;->p(I)V

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    iget-boolean v1, v0, Lr4/o24;->h:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lr4/o24;->j:Lr4/c14;

    if-eqz v1, :cond_e

    new-instance v1, Lr4/fz3;

    const/4 v2, 0x1

    new-array v2, v2, [Lr4/dy3;

    new-instance v3, Lr4/dy3;

    sget-object v4, Lr4/e3;->a:Ljava/util/UUID;

    iget-object v5, v7, Lr4/q24;->t:Lr4/o24;

    iget-object v5, v5, Lr4/o24;->j:Lr4/c14;

    iget-object v5, v5, Lr4/c14;->b:[B

    const-string v6, "video/webm"

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8, v6, v5}, Lr4/dy3;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v1, v8, v2}, Lr4/fz3;-><init>(Ljava/lang/String;[Lr4/dy3;)V

    iput-object v1, v0, Lr4/o24;->l:Lr4/fz3;

    return-void

    :cond_e
    const/4 v8, 0x0

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v0, v8}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_f
    iget v0, v7, Lr4/q24;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-wide v3, v7, Lr4/q24;->w:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    if-ne v0, v2, :cond_10

    iput-wide v3, v7, Lr4/q24;->y:J

    :cond_10
    :goto_4
    return-void

    :cond_11
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_12
    const/4 v1, -0x1

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lr4/o24;->b:Ljava/lang/String;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v2, "A_OPUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xb

    goto/16 :goto_6

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x16

    goto/16 :goto_6

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x11

    goto/16 :goto_6

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto/16 :goto_6

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x1b

    goto/16 :goto_6

    :sswitch_5
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x8

    goto/16 :goto_6

    :sswitch_6
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x1c

    goto/16 :goto_6

    :sswitch_7
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x18

    goto/16 :goto_6

    :sswitch_8
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x19

    goto/16 :goto_6

    :sswitch_9
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x1a

    goto/16 :goto_6

    :sswitch_a
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x14

    goto/16 :goto_6

    :sswitch_b
    const-string v2, "V_THEORA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xa

    goto/16 :goto_6

    :sswitch_c
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x1e

    goto/16 :goto_6

    :sswitch_d
    const-string v2, "V_VP9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto/16 :goto_6

    :sswitch_e
    const-string v2, "V_VP8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_6

    :sswitch_f
    const-string v4, "V_AV1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_6

    :sswitch_10
    const-string v2, "A_DTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x13

    goto/16 :goto_6

    :sswitch_11
    const-string v2, "A_AC3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x10

    goto/16 :goto_6

    :sswitch_12
    const-string v2, "A_AAC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xd

    goto/16 :goto_6

    :sswitch_13
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x15

    goto/16 :goto_6

    :sswitch_14
    const-string v2, "S_VOBSUB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x1d

    goto/16 :goto_6

    :sswitch_15
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x7

    goto/16 :goto_6

    :sswitch_16
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    goto/16 :goto_6

    :sswitch_17
    const-string v2, "S_DVBSUB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x1f

    goto :goto_6

    :sswitch_18
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x9

    goto :goto_6

    :sswitch_19
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xf

    goto :goto_6

    :sswitch_1a
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xe

    goto :goto_6

    :sswitch_1b
    const-string v2, "A_VORBIS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xc

    goto :goto_6

    :sswitch_1c
    const-string v2, "A_TRUEHD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x12

    goto :goto_6

    :sswitch_1d
    const-string v2, "A_MS/ACM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x17

    goto :goto_6

    :sswitch_1e
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    goto :goto_6

    :sswitch_1f
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v2, -0x1

    :goto_6
    packed-switch v2, :pswitch_data_0

    :goto_7
    const/4 v0, 0x0

    goto :goto_8

    :pswitch_0
    iget-object v1, v7, Lr4/q24;->Z:Lr4/d04;

    iget v2, v0, Lr4/o24;->c:I

    invoke-virtual {v0, v1, v2}, Lr4/o24;->d(Lr4/d04;I)V

    iget-object v1, v7, Lr4/q24;->b:Landroid/util/SparseArray;

    iget v2, v0, Lr4/o24;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    :goto_8
    iput-object v0, v7, Lr4/q24;->t:Lr4/o24;

    return-void

    :cond_14
    const/4 v0, 0x0

    const-string v1, "CodecId is missing in TrackEntry element"

    invoke-static {v1, v0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_15
    iget v0, v7, Lr4/q24;->F:I

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_9
    iget v1, v7, Lr4/q24;->J:I

    if-ge v4, v1, :cond_16

    iget-object v1, v7, Lr4/q24;->K:[I

    aget v1, v1, v4

    add-int/2addr v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_16
    iget-object v1, v7, Lr4/q24;->b:Landroid/util/SparseArray;

    iget v2, v7, Lr4/q24;->L:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lr4/o24;

    invoke-static {v8}, Lr4/o24;->e(Lr4/o24;)V

    const/4 v4, 0x0

    :goto_a
    iget v1, v7, Lr4/q24;->J:I

    if-ge v4, v1, :cond_19

    iget-wide v1, v7, Lr4/q24;->G:J

    iget v3, v8, Lr4/o24;->e:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v5, v3

    add-long/2addr v5, v1

    iget v1, v7, Lr4/q24;->N:I

    if-nez v4, :cond_18

    iget-boolean v2, v7, Lr4/q24;->P:Z

    if-nez v2, :cond_17

    or-int/lit8 v1, v1, 0x1

    :cond_17
    move v4, v1

    const/4 v9, 0x0

    goto :goto_b

    :cond_18
    move v9, v4

    move v4, v1

    :goto_b
    iget-object v1, v7, Lr4/q24;->K:[I

    aget v10, v1, v9

    sub-int v11, v0, v10

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v5

    move v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lr4/q24;->r(Lr4/o24;JIII)V

    const/4 v0, 0x1

    add-int/lit8 v4, v9, 0x1

    move v0, v11

    goto :goto_a

    :cond_19
    const/4 v1, 0x0

    iput v1, v7, Lr4/q24;->F:I

    :cond_1a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1f
        -0x7ce7f3b0 -> :sswitch_1e
        -0x76567dc0 -> :sswitch_1d
        -0x6a615338 -> :sswitch_1c
        -0x672350af -> :sswitch_1b
        -0x585f4fce -> :sswitch_1a
        -0x585f4fcd -> :sswitch_19
        -0x51dc40b2 -> :sswitch_18
        -0x37a9c464 -> :sswitch_17
        -0x2016c535 -> :sswitch_16
        -0x2016c4e5 -> :sswitch_15
        -0x19552dbd -> :sswitch_14
        -0x1538b2ba -> :sswitch_13
        0x3c02325 -> :sswitch_12
        0x3c02353 -> :sswitch_11
        0x3c030c5 -> :sswitch_10
        0x4e81333 -> :sswitch_f
        0x4e86155 -> :sswitch_e
        0x4e86156 -> :sswitch_d
        0x5e8da3e -> :sswitch_c
        0x1a8350d6 -> :sswitch_b
        0x2056f406 -> :sswitch_a
        0x25e26ee2 -> :sswitch_9
        0x2b45174d -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lr4/d04;)V
    .locals 0

    iput-object p1, p0, Lr4/q24;->Z:Lr4/d04;

    return-void
.end method

.method public final i(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/q24;->A:J

    const/4 p1, 0x0

    iput p1, p0, Lr4/q24;->F:I

    iget-object p2, p0, Lr4/q24;->a0:Lr4/j24;

    invoke-virtual {p2}, Lr4/j24;->b()V

    iget-object p2, p0, Lr4/q24;->a:Lr4/s24;

    invoke-virtual {p2}, Lr4/s24;->a()V

    invoke-virtual {p0}, Lr4/q24;->u()V

    :goto_0
    iget-object p2, p0, Lr4/q24;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lr4/q24;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/o24;

    iget-object p2, p2, Lr4/o24;->T:Lr4/p24;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lr4/p24;->a()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(IJ)V
    .locals 9

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const/4 v2, 0x0

    const-string v3, " not supported"

    if-eq p1, v0, :cond_13

    const/16 v0, 0x5032

    const-wide/16 v4, 0x1

    if-eq p1, v0, :cond_11

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->C:I

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->B:I

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput-boolean v8, p1, Lr4/o24;->x:Z

    long-to-int p1, p2

    invoke-static {p1}, Lr4/av3;->a(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p2, p0, Lr4/q24;->t:Lr4/o24;

    iput p1, p2, Lr4/o24;->y:I

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    long-to-int p1, p2

    invoke-static {p1}, Lr4/av3;->b(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p2, p0, Lr4/q24;->t:Lr4/o24;

    iput p1, p2, Lr4/o24;->z:I

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    long-to-int p1, p2

    if-eq p1, v8, :cond_1

    if-eq p1, v7, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v8, p1, Lr4/o24;->A:I

    return-void

    :cond_1
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v7, p1, Lr4/o24;->A:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Lr4/q24;->q:J

    return-void

    :sswitch_1
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->e:I

    return-void

    :sswitch_2
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v8, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v6, p1, Lr4/o24;->r:I

    return-void

    :cond_3
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v7, p1, Lr4/o24;->r:I

    return-void

    :cond_4
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v8, p1, Lr4/o24;->r:I

    return-void

    :cond_5
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v1, p1, Lr4/o24;->r:I

    return-void

    :sswitch_3
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->P:I

    return-void

    :sswitch_4
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput-wide p2, p1, Lr4/o24;->S:J

    return-void

    :sswitch_5
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput-wide p2, p1, Lr4/o24;->R:J

    return-void

    :sswitch_6
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->f:I

    return-void

    :sswitch_7
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    cmp-long v0, p2, v4

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p1, Lr4/o24;->U:Z

    return-void

    :sswitch_8
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->p:I

    return-void

    :sswitch_9
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->q:I

    return-void

    :sswitch_a
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->o:I

    return-void

    :sswitch_b
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_a

    if-eq p1, v8, :cond_9

    if-eq p1, v6, :cond_8

    const/16 p2, 0xf

    if-eq p1, p2, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v6, p1, Lr4/o24;->w:I

    return-void

    :cond_8
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v8, p1, Lr4/o24;->w:I

    return-void

    :cond_9
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v7, p1, Lr4/o24;->w:I

    return-void

    :cond_a
    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput v1, p1, Lr4/o24;->w:I

    return-void

    :sswitch_c
    iget-wide v0, p0, Lr4/q24;->p:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lr4/q24;->w:J

    return-void

    :sswitch_d
    cmp-long p1, p2, v4

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x38

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :sswitch_e
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x31

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :sswitch_f
    cmp-long p1, p2, v4

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :sswitch_10
    cmp-long p1, p2, v4

    if-ltz p1, :cond_e

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x35

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :sswitch_11
    const-wide/16 v4, 0x3

    cmp-long p1, p2, v4

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :sswitch_12
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    invoke-static {p1, p3}, Lr4/o24;->a(Lr4/o24;I)I

    return-void

    :sswitch_13
    iput-boolean v8, p0, Lr4/q24;->P:Z

    return-void

    :sswitch_14
    iget-boolean v0, p0, Lr4/q24;->D:Z

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lr4/q24;->q(I)V

    iget-object p1, p0, Lr4/q24;->C:Lr4/fb;

    invoke-virtual {p1, p2, p3}, Lr4/fb;->a(J)V

    iput-boolean v8, p0, Lr4/q24;->D:Z

    return-void

    :sswitch_15
    long-to-int p1, p2

    iput p1, p0, Lr4/q24;->O:I

    return-void

    :sswitch_16
    invoke-virtual {p0, p2, p3}, Lr4/q24;->y(J)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/q24;->A:J

    return-void

    :sswitch_17
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->c:I

    return-void

    :sswitch_18
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->n:I

    return-void

    :sswitch_19
    invoke-virtual {p0, p1}, Lr4/q24;->q(I)V

    iget-object p1, p0, Lr4/q24;->B:Lr4/fb;

    invoke-virtual {p0, p2, p3}, Lr4/q24;->y(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lr4/fb;->a(J)V

    return-void

    :sswitch_1a
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->m:I

    return-void

    :sswitch_1b
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->O:I

    return-void

    :sswitch_1c
    invoke-virtual {p0, p2, p3}, Lr4/q24;->y(J)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/q24;->H:J

    return-void

    :sswitch_1d
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    cmp-long v0, p2, v4

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    iput-boolean v1, p1, Lr4/o24;->V:Z

    return-void

    :sswitch_1e
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    long-to-int p3, p2

    iput p3, p1, Lr4/o24;->d:I

    return-void

    :cond_11
    cmp-long p1, p2, v4

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncodingScope "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_13
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-nez p1, :cond_15

    :cond_14
    :goto_0
    return-void

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncodingOrder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1e
        0x88 -> :sswitch_1d
        0x9b -> :sswitch_1c
        0x9f -> :sswitch_1b
        0xb0 -> :sswitch_1a
        0xb3 -> :sswitch_19
        0xba -> :sswitch_18
        0xd7 -> :sswitch_17
        0xe7 -> :sswitch_16
        0xee -> :sswitch_15
        0xf1 -> :sswitch_14
        0xfb -> :sswitch_13
        0x41e7 -> :sswitch_12
        0x4254 -> :sswitch_11
        0x4285 -> :sswitch_10
        0x42f7 -> :sswitch_f
        0x47e1 -> :sswitch_e
        0x47e8 -> :sswitch_d
        0x53ac -> :sswitch_c
        0x53b8 -> :sswitch_b
        0x54b0 -> :sswitch_a
        0x54b2 -> :sswitch_9
        0x54ba -> :sswitch_8
        0x55aa -> :sswitch_7
        0x55ee -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
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

.method public final k(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->u:F

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->t:F

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->s:F

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->M:F

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->L:F

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->K:F

    return-void

    :pswitch_6
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->J:F

    return-void

    :pswitch_7
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->I:F

    return-void

    :pswitch_8
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->H:F

    return-void

    :pswitch_9
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->G:F

    return-void

    :pswitch_a
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->F:F

    return-void

    :pswitch_b
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->E:F

    return-void

    :pswitch_c
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-float p2, p2

    iput p2, p1, Lr4/o24;->D:F

    return-void

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Lr4/q24;->r:J

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    double-to-int p2, p2

    iput p2, p1, Lr4/o24;->Q:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    invoke-static {p1, p2}, Lr4/o24;->c(Lr4/o24;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput-object p2, p1, Lr4/o24;->a:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lr4/q24;->p(I)V

    iget-object p1, p0, Lr4/q24;->t:Lr4/o24;

    iput-object p2, p1, Lr4/o24;->b:Ljava/lang/String;

    return-void
.end method

.method public final m(IILr4/b04;)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0xa3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v2, :cond_b

    if-eq v0, v5, :cond_b

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lr4/q24;->p(I)V

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    new-array v2, v1, [B

    iput-object v2, v0, Lr4/o24;->v:[B

    move-object v0, v8

    check-cast v0, Lr4/vz3;

    invoke-virtual {v0, v2, v10, v1, v10}, Lr4/vz3;->f([BIIZ)Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lr4/q24;->p(I)V

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    new-array v2, v1, [B

    iput-object v2, v0, Lr4/o24;->k:[B

    move-object v0, v8

    check-cast v0, Lr4/vz3;

    invoke-virtual {v0, v2, v10, v1, v10}, Lr4/vz3;->f([BIIZ)Z

    return-void

    :cond_2
    iget-object v0, v7, Lr4/q24;->h:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v7, Lr4/q24;->h:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    move-object v2, v8

    check-cast v2, Lr4/vz3;

    rsub-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v0, v3, v1, v10}, Lr4/vz3;->f([BIIZ)Z

    iget-object v0, v7, Lr4/q24;->h:Lr4/xb;

    invoke-virtual {v0, v10}, Lr4/xb;->p(I)V

    iget-object v0, v7, Lr4/q24;->h:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->B()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v7, Lr4/q24;->v:I

    return-void

    :cond_3
    new-array v2, v1, [B

    move-object v3, v8

    check-cast v3, Lr4/vz3;

    invoke-virtual {v3, v2, v10, v1, v10}, Lr4/vz3;->f([BIIZ)Z

    invoke-virtual/range {p0 .. p1}, Lr4/q24;->p(I)V

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    new-instance v1, Lr4/c14;

    invoke-direct {v1, v9, v2, v10, v10}, Lr4/c14;-><init>(I[BII)V

    iput-object v1, v0, Lr4/o24;->j:Lr4/c14;

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lr4/q24;->p(I)V

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    new-array v2, v1, [B

    iput-object v2, v0, Lr4/o24;->i:[B

    move-object v0, v8

    check-cast v0, Lr4/vz3;

    invoke-virtual {v0, v2, v10, v1, v10}, Lr4/vz3;->f([BIIZ)Z

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lr4/q24;->p(I)V

    iget-object v0, v7, Lr4/q24;->t:Lr4/o24;

    invoke-static {v0}, Lr4/o24;->b(Lr4/o24;)I

    move-result v2

    const v3, 0x64767643

    if-eq v2, v3, :cond_7

    invoke-static {v0}, Lr4/o24;->b(Lr4/o24;)I

    move-result v2

    const v3, 0x64766343

    if-ne v2, v3, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, v8

    check-cast v0, Lr4/vz3;

    invoke-virtual {v0, v1, v10}, Lr4/vz3;->n(IZ)Z

    return-void

    :cond_7
    :goto_0
    new-array v2, v1, [B

    iput-object v2, v0, Lr4/o24;->N:[B

    move-object v0, v8

    check-cast v0, Lr4/vz3;

    invoke-virtual {v0, v2, v10, v1, v10}, Lr4/vz3;->f([BIIZ)Z

    return-void

    :cond_8
    iget v0, v7, Lr4/q24;->F:I

    if-eq v0, v6, :cond_9

    return-void

    :cond_9
    iget-object v0, v7, Lr4/q24;->b:Landroid/util/SparseArray;

    iget v2, v7, Lr4/q24;->L:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/o24;

    iget v2, v7, Lr4/q24;->O:I

    if-ne v2, v4, :cond_a

    iget-object v0, v0, Lr4/o24;->b:Ljava/lang/String;

    const-string v2, "V_VP9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lr4/q24;->m:Lr4/xb;

    invoke-virtual {v0, v1}, Lr4/xb;->i(I)V

    iget-object v0, v7, Lr4/q24;->m:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    move-object v2, v8

    check-cast v2, Lr4/vz3;

    invoke-virtual {v2, v0, v10, v1, v10}, Lr4/vz3;->f([BIIZ)Z

    return-void

    :cond_a
    move-object v0, v8

    check-cast v0, Lr4/vz3;

    invoke-virtual {v0, v1, v10}, Lr4/vz3;->n(IZ)Z

    return-void

    :cond_b
    iget v2, v7, Lr4/q24;->F:I

    const/16 v11, 0x8

    if-nez v2, :cond_c

    iget-object v2, v7, Lr4/q24;->a:Lr4/s24;

    invoke-virtual {v2, v8, v10, v9, v11}, Lr4/s24;->b(Lr4/b04;ZZI)J

    move-result-wide v12

    long-to-int v2, v12

    iput v2, v7, Lr4/q24;->L:I

    iget-object v2, v7, Lr4/q24;->a:Lr4/s24;

    invoke-virtual {v2}, Lr4/s24;->c()I

    move-result v2

    iput v2, v7, Lr4/q24;->M:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v7, Lr4/q24;->H:J

    iput v9, v7, Lr4/q24;->F:I

    iget-object v2, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v2, v10}, Lr4/xb;->i(I)V

    :cond_c
    iget-object v2, v7, Lr4/q24;->b:Landroid/util/SparseArray;

    iget v12, v7, Lr4/q24;->L:I

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lr4/o24;

    if-nez v12, :cond_d

    iget v0, v7, Lr4/q24;->M:I

    move-object v2, v8

    check-cast v2, Lr4/vz3;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0, v10}, Lr4/vz3;->n(IZ)Z

    iput v10, v7, Lr4/q24;->F:I

    return-void

    :cond_d
    invoke-static {v12}, Lr4/o24;->e(Lr4/o24;)V

    iget v2, v7, Lr4/q24;->F:I

    if-ne v2, v9, :cond_1f

    const/4 v2, 0x3

    invoke-virtual {v7, v8, v2}, Lr4/q24;->s(Lr4/b04;I)V

    iget-object v13, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v13}, Lr4/xb;->q()[B

    move-result-object v13

    aget-byte v13, v13, v6

    and-int/lit8 v13, v13, 0x6

    shr-int/2addr v13, v9

    const/16 v14, 0xff

    if-nez v13, :cond_e

    iput v9, v7, Lr4/q24;->J:I

    iget-object v2, v7, Lr4/q24;->K:[I

    invoke-static {v2, v9}, Lr4/q24;->z([II)[I

    move-result-object v2

    iput-object v2, v7, Lr4/q24;->K:[I

    iget v3, v7, Lr4/q24;->M:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3

    aput v1, v2, v10

    goto/16 :goto_6

    :cond_e
    invoke-virtual {v7, v8, v4}, Lr4/q24;->s(Lr4/b04;I)V

    iget-object v15, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v15}, Lr4/xb;->q()[B

    move-result-object v15

    aget-byte v15, v15, v2

    and-int/2addr v15, v14

    add-int/2addr v15, v9

    iput v15, v7, Lr4/q24;->J:I

    iget-object v4, v7, Lr4/q24;->K:[I

    invoke-static {v4, v15}, Lr4/q24;->z([II)[I

    move-result-object v4

    iput-object v4, v7, Lr4/q24;->K:[I

    if-ne v13, v6, :cond_f

    iget v2, v7, Lr4/q24;->M:I

    iget v3, v7, Lr4/q24;->J:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    div-int/2addr v1, v3

    invoke-static {v4, v10, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_f
    if-ne v13, v9, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    :goto_1
    iget v13, v7, Lr4/q24;->J:I

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_11

    iget-object v13, v7, Lr4/q24;->K:[I

    aput v10, v13, v2

    :cond_10
    add-int/2addr v4, v9

    invoke-virtual {v7, v8, v4}, Lr4/q24;->s(Lr4/b04;I)V

    iget-object v13, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v13}, Lr4/xb;->q()[B

    move-result-object v13

    add-int/lit8 v15, v4, -0x1

    aget-byte v13, v13, v15

    and-int/2addr v13, v14

    iget-object v15, v7, Lr4/q24;->K:[I

    aget v16, v15, v2

    add-int v16, v16, v13

    aput v16, v15, v2

    if-eq v13, v14, :cond_10

    add-int v3, v3, v16

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_11
    iget-object v2, v7, Lr4/q24;->K:[I

    iget v15, v7, Lr4/q24;->M:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    aput v1, v2, v13

    goto/16 :goto_6

    :cond_12
    if-ne v13, v2, :cond_1e

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v13, 0x0

    :goto_2
    iget v15, v7, Lr4/q24;->J:I

    add-int/lit8 v15, v15, -0x1

    if-ge v2, v15, :cond_1a

    iget-object v15, v7, Lr4/q24;->K:[I

    aput v10, v15, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v8, v4}, Lr4/q24;->s(Lr4/b04;I)V

    add-int/lit8 v15, v4, -0x1

    iget-object v5, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->q()[B

    move-result-object v5

    aget-byte v5, v5, v15

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v11, :cond_15

    rsub-int/lit8 v17, v5, 0x7

    shl-int v17, v9, v17

    iget-object v6, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->q()[B

    move-result-object v6

    aget-byte v6, v6, v15

    and-int v6, v6, v17

    if-eqz v6, :cond_14

    add-int/2addr v4, v5

    invoke-virtual {v7, v8, v4}, Lr4/q24;->s(Lr4/b04;I)V

    add-int/lit8 v6, v15, 0x1

    iget-object v9, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v9}, Lr4/xb;->q()[B

    move-result-object v9

    aget-byte v9, v9, v15

    and-int/2addr v9, v14

    xor-int/lit8 v15, v17, -0x1

    and-int/2addr v9, v15

    int-to-long v14, v9

    :goto_4
    if-ge v6, v4, :cond_13

    add-int/lit8 v9, v6, 0x1

    shl-long/2addr v14, v11

    iget-object v11, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v11}, Lr4/xb;->q()[B

    move-result-object v11

    aget-byte v6, v11, v6

    const/16 v11, 0xff

    and-int/2addr v6, v11

    int-to-long v10, v6

    or-long/2addr v14, v10

    move v6, v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    goto :goto_4

    :cond_13
    if-lez v2, :cond_16

    const-wide/16 v9, 0x1

    mul-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x6

    shl-long v5, v9, v5

    const-wide/16 v9, -0x1

    add-long/2addr v5, v9

    sub-long/2addr v14, v5

    goto :goto_5

    :cond_14
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v14, 0xff

    goto :goto_3

    :cond_15
    const-wide/16 v14, 0x0

    :cond_16
    :goto_5
    const-wide/32 v5, -0x80000000

    cmp-long v9, v14, v5

    if-ltz v9, :cond_18

    const-wide/32 v5, 0x7fffffff

    cmp-long v9, v14, v5

    if-gtz v9, :cond_18

    long-to-int v5, v14

    iget-object v6, v7, Lr4/q24;->K:[I

    if-eqz v2, :cond_17

    add-int/lit8 v9, v2, -0x1

    aget v9, v6, v9

    add-int/2addr v5, v9

    :cond_17
    aput v5, v6, v2

    add-int/2addr v13, v5

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0xa3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v14, 0xff

    goto/16 :goto_2

    :cond_18
    const-string v0, "EBML lacing sample size out of range."

    invoke-static {v0, v3}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_19
    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v3}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_1a
    iget-object v2, v7, Lr4/q24;->K:[I

    iget v3, v7, Lr4/q24;->M:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v13

    aput v1, v2, v15

    :goto_6
    iget-object v1, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iget-object v2, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    iget-wide v3, v7, Lr4/q24;->A:J

    const/16 v5, 0x8

    shl-int/2addr v1, v5

    const/16 v5, 0xff

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Lr4/q24;->y(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    iput-wide v3, v7, Lr4/q24;->G:J

    iget v1, v12, Lr4/o24;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1c

    iget-object v0, v7, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    aget-byte v0, v0, v2

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1b

    const/16 v0, 0xa3

    goto :goto_7

    :cond_1b
    const/16 v0, 0xa3

    :cond_1c
    const/4 v1, 0x0

    goto :goto_8

    :cond_1d
    :goto_7
    const/4 v1, 0x1

    :goto_8
    iput v1, v7, Lr4/q24;->N:I

    iput v2, v7, Lr4/q24;->F:I

    const/4 v1, 0x0

    iput v1, v7, Lr4/q24;->I:I

    goto :goto_9

    :cond_1e
    const-string v0, "Unexpected lacing value: 2"

    invoke-static {v0, v3}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v0

    throw v0

    :cond_1f
    :goto_9
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_21

    :goto_a
    iget v0, v7, Lr4/q24;->I:I

    iget v1, v7, Lr4/q24;->J:I

    if-ge v0, v1, :cond_20

    iget-object v1, v7, Lr4/q24;->K:[I

    aget v0, v1, v0

    invoke-virtual {v7, v8, v12, v0}, Lr4/q24;->t(Lr4/b04;Lr4/o24;I)I

    move-result v5

    iget-wide v0, v7, Lr4/q24;->G:J

    iget v2, v7, Lr4/q24;->I:I

    iget v3, v12, Lr4/o24;->e:I

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Lr4/q24;->N:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v6}, Lr4/q24;->r(Lr4/o24;JIII)V

    iget v0, v7, Lr4/q24;->I:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lr4/q24;->I:I

    goto :goto_a

    :cond_20
    const/4 v0, 0x0

    iput v0, v7, Lr4/q24;->F:I

    return-void

    :cond_21
    :goto_b
    iget v0, v7, Lr4/q24;->I:I

    iget v1, v7, Lr4/q24;->J:I

    if-ge v0, v1, :cond_22

    iget-object v1, v7, Lr4/q24;->K:[I

    aget v2, v1, v0

    invoke-virtual {v7, v8, v12, v2}, Lr4/q24;->t(Lr4/b04;Lr4/o24;I)I

    move-result v2

    aput v2, v1, v0

    iget v0, v7, Lr4/q24;->I:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lr4/q24;->I:I

    goto :goto_b

    :cond_22
    return-void
.end method

.method public final p(I)V
    .locals 2

    iget-object v0, p0, Lr4/q24;->t:Lr4/o24;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lr4/q24;->B:Lr4/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/q24;->C:Lr4/fb;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1
.end method

.method public final r(Lr4/o24;JIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v2, Lr4/o24;->T:Lr4/p24;

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lr4/p24;->c(Lr4/o24;JIII)V

    goto/16 :goto_8

    :cond_0
    iget-object v1, v2, Lr4/o24;->b:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "S_TEXT/ASS"

    if-nez v1, :cond_1

    iget-object v1, v2, Lr4/o24;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, v0, Lr4/q24;->J:I

    const-string v5, "MatroskaExtractor"

    if-le v1, v8, :cond_2

    const-string v1, "Skipping subtitle sample in laced block."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-wide v6, v0, Lr4/q24;->H:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v9

    if-nez v1, :cond_4

    const-string v1, "Skipping subtitle sample with no duration."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    move/from16 v1, p5

    goto/16 :goto_6

    :cond_4
    iget-object v1, v2, Lr4/o24;->b:Ljava/lang/String;

    iget-object v5, v0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->q()[B

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x2c0618eb

    const/4 v11, 0x0

    if-eq v9, v10, :cond_6

    const v4, 0x54c61e47

    if-eq v9, v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_9

    if-ne v1, v8, :cond_8

    const-wide/16 v3, 0x2710

    const-string v1, "%01d:%02d:%02d:%02d"

    invoke-static {v6, v7, v1, v3, v4}, Lr4/q24;->w(JLjava/lang/String;J)[B

    move-result-object v1

    const/16 v3, 0x15

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_9
    const-wide/16 v3, 0x3e8

    const-string v1, "%02d:%02d:%02d,%03d"

    invoke-static {v6, v7, v1, v3, v4}, Lr4/q24;->w(JLjava/lang/String;J)[B

    move-result-object v1

    const/16 v3, 0x13

    :goto_3
    array-length v4, v1

    invoke-static {v1, v11, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->o()I

    move-result v1

    :goto_4
    iget-object v3, v0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->m()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, v0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-nez v3, :cond_a

    iget-object v3, v0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v3, v1}, Lr4/xb;->n(I)V

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    iget-object v1, v2, Lr4/o24;->X:Lr4/d14;

    iget-object v3, v0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->m()I

    move-result v4

    invoke-static {v1, v3, v4}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget-object v1, v0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->m()I

    move-result v1

    add-int v1, p5, v1

    :goto_6
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_d

    iget v3, v0, Lr4/q24;->J:I

    if-le v3, v8, :cond_c

    const v3, -0x10000001

    and-int v3, p4, v3

    move v13, v1

    move v12, v3

    goto :goto_7

    :cond_c
    iget-object v3, v0, Lr4/q24;->m:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->m()I

    move-result v3

    iget-object v4, v2, Lr4/o24;->X:Lr4/d14;

    iget-object v5, v0, Lr4/q24;->m:Lr4/xb;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v3, v6}, Lr4/d14;->c(Lr4/xb;II)V

    add-int/2addr v1, v3

    :cond_d
    move/from16 v12, p4

    move v13, v1

    :goto_7
    iget-object v9, v2, Lr4/o24;->X:Lr4/d14;

    iget-object v15, v2, Lr4/o24;->j:Lr4/c14;

    move-wide/from16 v10, p2

    move/from16 v14, p6

    invoke-interface/range {v9 .. v15}, Lr4/d14;->e(JIIILr4/c14;)V

    :goto_8
    iput-boolean v8, v0, Lr4/q24;->E:Z

    return-void
.end method

.method public final s(Lr4/b04;I)V
    .locals 4

    iget-object v0, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->m()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->r()I

    move-result v0

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->r()I

    move-result v1

    add-int/2addr v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lr4/xb;->k(I)V

    :cond_1
    iget-object v0, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->m()I

    move-result v1

    iget-object v2, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->m()I

    move-result v2

    check-cast p1, Lr4/vz3;

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lr4/vz3;->f([BIIZ)Z

    iget-object p1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {p1, p2}, Lr4/xb;->n(I)V

    return-void
.end method

.method public final t(Lr4/b04;Lr4/o24;I)I
    .locals 10

    iget-object v0, p2, Lr4/o24;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lr4/q24;->c0:[B

    invoke-virtual {p0, p1, p2, p3}, Lr4/q24;->v(Lr4/b04;[BI)V

    iget p1, p0, Lr4/q24;->R:I

    invoke-virtual {p0}, Lr4/q24;->u()V

    return p1

    :cond_0
    iget-object v0, p2, Lr4/o24;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lr4/q24;->e0:[B

    invoke-virtual {p0, p1, p2, p3}, Lr4/q24;->v(Lr4/b04;[BI)V

    iget p1, p0, Lr4/q24;->R:I

    invoke-virtual {p0}, Lr4/q24;->u()V

    return p1

    :cond_1
    iget-object v0, p2, Lr4/o24;->X:Lr4/d14;

    iget-boolean v1, p0, Lr4/q24;->T:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_f

    iget-boolean v1, p2, Lr4/o24;->h:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lr4/q24;->N:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lr4/q24;->N:I

    iget-boolean v1, p0, Lr4/q24;->U:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    move-object v7, p1

    check-cast v7, Lr4/vz3;

    invoke-virtual {v7, v1, v5, v4, v5}, Lr4/vz3;->f([BIIZ)Z

    iget v1, p0, Lr4/q24;->Q:I

    add-int/2addr v1, v4

    iput v1, p0, Lr4/q24;->Q:I

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lr4/q24;->X:B

    iput-boolean v4, p0, Lr4/q24;->U:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const-string p2, "Extension bit is set in signal byte"

    invoke-static {p2, p1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    iget-byte v1, p0, Lr4/q24;->X:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_d

    and-int/2addr v1, v2

    iget v7, p0, Lr4/q24;->N:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lr4/q24;->N:I

    iget-boolean v7, p0, Lr4/q24;->Y:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lr4/q24;->k:Lr4/xb;

    invoke-virtual {v7}, Lr4/xb;->q()[B

    move-result-object v7

    move-object v8, p1

    check-cast v8, Lr4/vz3;

    const/16 v9, 0x8

    invoke-virtual {v8, v7, v5, v9, v5}, Lr4/vz3;->f([BIIZ)Z

    iget v7, p0, Lr4/q24;->Q:I

    add-int/2addr v7, v9

    iput v7, p0, Lr4/q24;->Q:I

    iput-boolean v4, p0, Lr4/q24;->Y:Z

    iget-object v7, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v7}, Lr4/xb;->q()[B

    move-result-object v7

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    iget-object v6, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v6, v5}, Lr4/xb;->p(I)V

    iget-object v6, p0, Lr4/q24;->f:Lr4/xb;

    invoke-interface {v0, v6, v4, v4}, Lr4/d14;->c(Lr4/xb;II)V

    iget v6, p0, Lr4/q24;->R:I

    add-int/2addr v6, v4

    iput v6, p0, Lr4/q24;->R:I

    iget-object v6, p0, Lr4/q24;->k:Lr4/xb;

    invoke-virtual {v6, v5}, Lr4/xb;->p(I)V

    iget-object v6, p0, Lr4/q24;->k:Lr4/xb;

    invoke-interface {v0, v6, v9, v4}, Lr4/d14;->c(Lr4/xb;II)V

    iget v6, p0, Lr4/q24;->R:I

    add-int/2addr v6, v9

    iput v6, p0, Lr4/q24;->R:I

    :cond_5
    if-ne v1, v2, :cond_d

    iget-boolean v1, p0, Lr4/q24;->V:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    move-object v6, p1

    check-cast v6, Lr4/vz3;

    invoke-virtual {v6, v1, v5, v4, v5}, Lr4/vz3;->f([BIIZ)Z

    iget v1, p0, Lr4/q24;->Q:I

    add-int/2addr v1, v4

    iput v1, p0, Lr4/q24;->Q:I

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1, v5}, Lr4/xb;->p(I)V

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->v()I

    move-result v1

    iput v1, p0, Lr4/q24;->W:I

    iput-boolean v4, p0, Lr4/q24;->V:Z

    :cond_6
    iget v1, p0, Lr4/q24;->W:I

    mul-int/lit8 v1, v1, 0x4

    iget-object v6, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v6, v1}, Lr4/xb;->i(I)V

    iget-object v6, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->q()[B

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lr4/vz3;

    invoke-virtual {v7, v6, v5, v1, v5}, Lr4/vz3;->f([BIIZ)Z

    iget v6, p0, Lr4/q24;->Q:I

    add-int/2addr v6, v1

    iput v6, p0, Lr4/q24;->Q:I

    iget v1, p0, Lr4/q24;->W:I

    shr-int/2addr v1, v4

    add-int/2addr v1, v4

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v2

    iget-object v7, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_8

    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    :cond_8
    iget-object v7, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_2
    iget v8, p0, Lr4/q24;->W:I

    if-ge v1, v8, :cond_a

    iget-object v8, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v8}, Lr4/xb;->b()I

    move-result v8

    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_9

    iget-object v9, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_2

    :cond_a
    iget v1, p0, Lr4/q24;->Q:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    and-int/lit8 v7, v8, 0x1

    if-ne v7, v4, :cond_b

    iget-object v7, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    iget-object v1, p0, Lr4/q24;->l:Lr4/xb;

    iget-object v7, p0, Lr4/q24;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lr4/xb;->j([BI)V

    iget-object v1, p0, Lr4/q24;->l:Lr4/xb;

    invoke-interface {v0, v1, v6, v4}, Lr4/d14;->c(Lr4/xb;II)V

    iget v1, p0, Lr4/q24;->R:I

    add-int/2addr v1, v6

    iput v1, p0, Lr4/q24;->R:I

    goto :goto_5

    :cond_c
    iget-object v1, p2, Lr4/o24;->i:[B

    if-eqz v1, :cond_d

    iget-object v6, p0, Lr4/q24;->i:Lr4/xb;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lr4/xb;->j([BI)V

    :cond_d
    :goto_5
    iget v1, p2, Lr4/o24;->f:I

    if-lez v1, :cond_e

    iget v1, p0, Lr4/q24;->N:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Lr4/q24;->N:I

    iget-object v1, p0, Lr4/q24;->m:Lr4/xb;

    invoke-virtual {v1, v5}, Lr4/xb;->i(I)V

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1, v3}, Lr4/xb;->i(I)V

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    const/4 v6, 0x3

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    iget-object v1, p0, Lr4/q24;->f:Lr4/xb;

    invoke-interface {v0, v1, v3, v2}, Lr4/d14;->c(Lr4/xb;II)V

    iget v1, p0, Lr4/q24;->R:I

    add-int/2addr v1, v3

    iput v1, p0, Lr4/q24;->R:I

    :cond_e
    iput-boolean v4, p0, Lr4/q24;->T:Z

    :cond_f
    iget-object v1, p0, Lr4/q24;->i:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->m()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p2, Lr4/o24;->b:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p2, Lr4/o24;->b:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    iget-object v1, p2, Lr4/o24;->T:Lr4/p24;

    if-nez v1, :cond_11

    goto :goto_7

    :cond_11
    iget-object v1, p0, Lr4/q24;->i:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->m()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lr4/ja;->d(Z)V

    iget-object v1, p2, Lr4/o24;->T:Lr4/p24;

    invoke-virtual {v1, p1}, Lr4/p24;->b(Lr4/b04;)V

    :goto_7
    iget v1, p0, Lr4/q24;->Q:I

    if-ge v1, p3, :cond_16

    sub-int v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Lr4/q24;->x(Lr4/b04;Lr4/d14;I)I

    move-result v1

    iget v2, p0, Lr4/q24;->Q:I

    add-int/2addr v2, v1

    iput v2, p0, Lr4/q24;->Q:I

    iget v2, p0, Lr4/q24;->R:I

    add-int/2addr v2, v1

    iput v2, p0, Lr4/q24;->R:I

    goto :goto_7

    :cond_13
    :goto_8
    iget-object v1, p0, Lr4/q24;->e:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    aput-byte v5, v1, v5

    aput-byte v5, v1, v4

    aput-byte v5, v1, v2

    iget v2, p2, Lr4/o24;->Y:I

    rsub-int/lit8 v4, v2, 0x4

    :goto_9
    iget v6, p0, Lr4/q24;->Q:I

    if-ge v6, p3, :cond_16

    iget v6, p0, Lr4/q24;->S:I

    if-nez v6, :cond_15

    iget-object v6, p0, Lr4/q24;->i:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->l()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v7, p1

    check-cast v7, Lr4/vz3;

    add-int v8, v4, v6

    sub-int v9, v2, v6

    invoke-virtual {v7, v1, v8, v9, v5}, Lr4/vz3;->f([BIIZ)Z

    if-lez v6, :cond_14

    iget-object v7, p0, Lr4/q24;->i:Lr4/xb;

    invoke-virtual {v7, v1, v4, v6}, Lr4/xb;->u([BII)V

    :cond_14
    iget v6, p0, Lr4/q24;->Q:I

    add-int/2addr v6, v2

    iput v6, p0, Lr4/q24;->Q:I

    iget-object v6, p0, Lr4/q24;->e:Lr4/xb;

    invoke-virtual {v6, v5}, Lr4/xb;->p(I)V

    iget-object v6, p0, Lr4/q24;->e:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->b()I

    move-result v6

    iput v6, p0, Lr4/q24;->S:I

    iget-object v6, p0, Lr4/q24;->d:Lr4/xb;

    invoke-virtual {v6, v5}, Lr4/xb;->p(I)V

    iget-object v6, p0, Lr4/q24;->d:Lr4/xb;

    invoke-static {v0, v6, v3}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v6, p0, Lr4/q24;->R:I

    add-int/2addr v6, v3

    iput v6, p0, Lr4/q24;->R:I

    goto :goto_9

    :cond_15
    invoke-virtual {p0, p1, v0, v6}, Lr4/q24;->x(Lr4/b04;Lr4/d14;I)I

    move-result v6

    iget v7, p0, Lr4/q24;->Q:I

    add-int/2addr v7, v6

    iput v7, p0, Lr4/q24;->Q:I

    iget v7, p0, Lr4/q24;->R:I

    add-int/2addr v7, v6

    iput v7, p0, Lr4/q24;->R:I

    iget v7, p0, Lr4/q24;->S:I

    sub-int/2addr v7, v6

    iput v7, p0, Lr4/q24;->S:I

    goto :goto_9

    :cond_16
    iget-object p1, p2, Lr4/o24;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lr4/q24;->g:Lr4/xb;

    invoke-virtual {p1, v5}, Lr4/xb;->p(I)V

    iget-object p1, p0, Lr4/q24;->g:Lr4/xb;

    invoke-static {v0, p1, v3}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget p1, p0, Lr4/q24;->R:I

    add-int/2addr p1, v3

    iput p1, p0, Lr4/q24;->R:I

    :cond_17
    iget p1, p0, Lr4/q24;->R:I

    invoke-virtual {p0}, Lr4/q24;->u()V

    return p1
.end method

.method public final u()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lr4/q24;->Q:I

    iput v0, p0, Lr4/q24;->R:I

    iput v0, p0, Lr4/q24;->S:I

    iput-boolean v0, p0, Lr4/q24;->T:Z

    iput-boolean v0, p0, Lr4/q24;->U:Z

    iput-boolean v0, p0, Lr4/q24;->V:Z

    iput v0, p0, Lr4/q24;->W:I

    iput-byte v0, p0, Lr4/q24;->X:B

    iput-boolean v0, p0, Lr4/q24;->Y:Z

    iget-object v1, p0, Lr4/q24;->i:Lr4/xb;

    invoke-virtual {v1, v0}, Lr4/xb;->i(I)V

    return-void
.end method

.method public final v(Lr4/b04;[BI)V
    .locals 5

    array-length v0, p2

    add-int/lit8 v0, p3, 0x20

    iget-object v1, p0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->r()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lr4/q24;->j:Lr4/xb;

    add-int v4, v0, p3

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    array-length v4, p2

    invoke-virtual {v1, p2, v4}, Lr4/xb;->j([BI)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p2, p0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->q()[B

    move-result-object p2

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, p2, v2, p3, v3}, Lr4/vz3;->f([BIIZ)Z

    iget-object p1, p0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {p1, v3}, Lr4/xb;->p(I)V

    iget-object p1, p0, Lr4/q24;->j:Lr4/xb;

    invoke-virtual {p1, v0}, Lr4/xb;->n(I)V

    return-void
.end method

.method public final x(Lr4/b04;Lr4/d14;I)I
    .locals 1

    iget-object v0, p0, Lr4/q24;->i:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->l()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lr4/q24;->i:Lr4/xb;

    invoke-static {p2, p3, p1}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, p1, p3, v0}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final y(J)J
    .locals 6

    iget-wide v2, p0, Lr4/q24;->q:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lr4/lc;->h(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-static {p2, p1}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1
.end method
