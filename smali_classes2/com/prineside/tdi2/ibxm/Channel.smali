.class public Lcom/prineside/tdi2/ibxm/Channel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LINEAR:I = 0x1

.field public static final NEAREST:I = 0x0

.field public static final SINC:I = 0x2

.field public static e0:[I

.field public static final f0:[S


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public final a:Lcom/prineside/tdi2/ibxm/Module;

.field public a0:I

.field public final b:Lcom/prineside/tdi2/ibxm/GlobalVol;

.field public b0:I

.field public c:Lcom/prineside/tdi2/ibxm/Instrument;

.field public c0:I

.field public d:Lcom/prineside/tdi2/ibxm/Sample;

.field public d0:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public plRow:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x81

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/ibxm/Channel;->e0:[I

    const/16 v0, 0x20

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/prineside/tdi2/ibxm/Channel;->f0:[S

    return-void

    nop

    :array_0
    .array-data 4
        0x8000
        0x80b2
        0x8165
        0x8219
        0x82ce
        0x8383
        0x843a
        0x84f2
        0x85ab
        0x8665
        0x871f
        0x87db
        0x8898    # 4.9E-41f
        0x8956
        0x8a15
        0x8ad5
        0x8b96
        0x8c58
        0x8d1b
        0x8ddf
        0x8ea4
        0x8f6b
        0x9032
        0x90fa
        0x91c4
        0x928e
        0x935a
        0x9427
        0x94f5
        0x95c4
        0x9694
        0x9765
        0x9838
        0x990c
        0x99e0
        0x9ab6
        0x9b8d
        0x9c65
        0x9d3f
        0x9e19
        0x9ef5
        0x9fd2
        0xa0b0
        0xa190
        0xa270
        0xa352
        0xa435
        0xa519
        0xa5ff
        0xa6e6
        0xa7ce
        0xa8b7
        0xa9a1
        0xaa8d
        0xab7a
        0xac69
        0xad58
        0xae49
        0xaf3b
        0xb02f
        0xb124
        0xb21a
        0xb312
        0xb40b
        0xb505
        0xb601
        0xb6fe
        0xb7fc
        0xb8fc
        0xb9fd
        0xbaff
        0xbc03
        0xbd09
        0xbe0f
        0xbf18
        0xc021
        0xc12c
        0xc239
        0xc347
        0xc456
        0xc567
        0xc67a
        0xc78d
        0xc8a3
        0xc9ba
        0xcad2
        0xcbec
        0xcd08
        0xce25
        0xcf43
        0xd063
        0xd185
        0xd2a8
        0xd3cd
        0xd4f3
        0xd61b
        0xd745
        0xd870
        0xd99d
        0xdacc
        0xdbfc
        0xdd2e
        0xde61
        0xdf96
        0xe0cd
        0xe205
        0xe340
        0xe47b
        0xe5b9
        0xe6f8
        0xe839
        0xe97c
        0xeac1
        0xec07
        0xed4f
        0xee99
        0xefe5
        0xf132
        0xf281
        0xf3d3
        0xf525
        0xf67a
        0xf7d1
        0xf929
        0xfa84
        0xfbe0
        0xfd3e
        0xfe9e
        0x10000
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x18s
        0x31s
        0x4as
        0x61s
        0x78s
        0x8ds
        0xa1s
        0xb4s
        0xc5s
        0xd4s
        0xe0s
        0xebs
        0xf4s
        0xfas
        0xfds
        0xffs
        0xfds
        0xfas
        0xf4s
        0xebs
        0xe0s
        0xd4s
        0xc5s
        0xb4s
        0xa1s
        0x8ds
        0x78s
        0x61s
        0x4as
        0x31s
        0x18s
    .end array-data
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Module;ILcom/prineside/tdi2/ibxm/GlobalVol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iput p2, p0, Lcom/prineside/tdi2/ibxm/Channel;->c0:I

    iput-object p3, p0, Lcom/prineside/tdi2/ibxm/Channel;->b:Lcom/prineside/tdi2/ibxm/GlobalVol;

    iget-object p1, p1, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    aget p1, p1, p2

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    new-instance p1, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {p1}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object p1, p1, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    add-int/lit8 p2, p2, 0x1

    const p1, 0xabcdef

    mul-int p2, p2, p1

    iput p2, p0, Lcom/prineside/tdi2/ibxm/Channel;->d0:I

    return-void
.end method

.method public static exp2(I)I
    .locals 3

    and-int/lit16 v0, p0, 0x7fff

    shr-int/lit8 v0, v0, 0x8

    sget-object v1, Lcom/prineside/tdi2/ibxm/Channel;->e0:[I

    aget v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    sub-int/2addr v0, v2

    and-int/lit16 v1, p0, 0xff

    mul-int v0, v0, v1

    shr-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0xf

    shr-int/lit8 p0, p0, 0xf

    rsub-int/lit8 p0, p0, 0xf

    shr-int p0, v0, p0

    return p0
.end method

.method public static log2(I)I
    .locals 4

    const/high16 v0, 0x80000

    const/high16 v1, 0x80000

    :goto_0
    if-lez v0, :cond_1

    sub-int v2, v1, v0

    invoke-static {v2}, Lcom/prineside/tdi2/ibxm/Channel;->exp2(I)I

    move-result v3

    if-lt v3, p0, :cond_0

    move v1, v2

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget v1, v0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoDepth:I

    and-int/lit8 v1, v1, 0x7f

    if-lez v1, :cond_1

    iget v2, v0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoSweep:I

    and-int/lit8 v2, v2, 0x7f

    iget v3, v0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoRate:I

    and-int/lit8 v3, v3, 0x7f

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoType:I

    iget v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->z:I

    if-ge v4, v2, :cond_0

    mul-int v1, v1, v4

    div-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->a0:I

    mul-int v4, v4, v3

    shr-int/lit8 v3, v4, 0x2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v3, v0}, Lcom/prineside/tdi2/ibxm/Channel;->n(II)I

    move-result v0

    mul-int v0, v0, v1

    shr-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->a0:I

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->z:I

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->e:Z

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v3, v3, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    iget-boolean v4, v3, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    if-eqz v4, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->t:I

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/ibxm/Envelope;->calculateAmpl(I)I

    move-result v0

    :cond_1
    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    iget v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->Z:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v2, v2, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    mul-int v1, v1, v2

    const v2, 0x8000

    mul-int v1, v1, v2

    shr-int/lit8 v1, v1, 0xd

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->s:I

    mul-int v1, v1, v2

    shr-int/lit8 v1, v1, 0xf

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->b:Lcom/prineside/tdi2/ibxm/GlobalVol;

    iget v2, v2, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    mul-int v1, v1, v2

    mul-int v1, v1, v0

    shr-int/lit8 v0, v1, 0xc

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->o:I

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v0, v0, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    iget-boolean v1, v0, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    const/16 v2, 0x20

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->u:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ibxm/Envelope;->calculateAmpl(I)I

    move-result v0

    goto :goto_3

    :cond_4
    const/16 v0, 0x20

    :goto_3
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    const/16 v3, 0x80

    if-ge v1, v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    rsub-int v3, v1, 0xff

    :goto_4
    sub-int/2addr v0, v2

    mul-int v3, v3, v0

    shr-int/lit8 v0, v3, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->p:I

    return-void
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->a0:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-boolean v2, v1, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    const/16 v3, 0x1c

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->b0:I

    shl-int/lit8 v2, v2, 0x6

    sub-int/2addr v0, v2

    const/16 v2, 0x1e00

    if-lt v0, v3, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v0, 0x1e00

    :cond_1
    iget v1, v1, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    shr-int/lit8 v1, v1, 0x4

    rsub-int v0, v0, 0x1200

    shl-int/lit8 v0, v0, 0xf

    div-int/lit16 v0, v0, 0x300

    invoke-static {v0}, Lcom/prineside/tdi2/ibxm/Channel;->exp2(I)I

    move-result v0

    mul-int v1, v1, v0

    shr-int/lit8 v0, v1, 0xb

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->n:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x715d

    if-le v0, v1, :cond_3

    const/16 v0, 0x715d

    :cond_3
    shl-int/lit8 v0, v0, 0xf

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->b0:I

    shl-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Lcom/prineside/tdi2/ibxm/Channel;->exp2(I)I

    move-result v2

    div-int/2addr v0, v2

    if-ge v0, v3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    mul-int/lit16 v0, v0, 0x6b0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->n:I

    :goto_1
    return-void
.end method

.method public final d(I)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    if-lez v0, :cond_3

    and-int/lit16 v1, p1, 0xf0

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_1

    const/16 v2, 0xf0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-lez v1, :cond_2

    shl-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-nez v1, :cond_2

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-nez v1, :cond_2

    and-int/lit8 p1, p1, 0xf

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    const v0, 0xffff

    if-le p1, v0, :cond_3

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    :cond_3
    return-void
.end method

.method public final e(I)V
    .locals 2

    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    shl-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    and-int/lit8 p1, p1, 0xf

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    if-gez p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->O:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->N:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_4
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_5
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_6
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_7
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_8
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_9
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_a
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, -0x10

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_b
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_c
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_d
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :pswitch_e
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final g()V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->w:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->C:I

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->C:I

    shl-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->W:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->V:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/ibxm/Channel;->n(II)I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->Y:I

    mul-int v0, v0, v1

    shr-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->Z:I

    return-void
.end method

.method public final i()V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->P:I

    if-lt v0, v1, :cond_0

    const/16 v2, -0x40

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->Z:I

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->Q:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->Z:I

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 10

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->g:I

    const/4 v1, 0x1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-lez v0, :cond_4

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v5, v4, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    if-gt v0, v5, :cond_4

    iget-object v4, v4, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v4, v0, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    iget-object v0, v0, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    iget v5, p0, Lcom/prineside/tdi2/ibxm/Channel;->f:I

    const/16 v6, 0x61

    if-ge v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    aget v0, v0, v5

    aget-object v0, v4, v0

    iget v4, v0, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    if-lt v4, v2, :cond_1

    const/16 v4, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v4, 0x3f

    :goto_1
    iput v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    iget v4, v0, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    if-ltz v4, :cond_2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    :cond_2
    iget v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    if-lez v4, :cond_3

    invoke-virtual {v0}, Lcom/prineside/tdi2/ibxm/Sample;->looped()Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    :cond_3
    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->u:I

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->t:I

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->k:I

    const v0, 0x8000

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->s:I

    iput-boolean v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->e:Z

    :cond_4
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    const/16 v4, 0x9

    if-eq v0, v4, :cond_5

    const/16 v4, 0x8f

    if-ne v0, v4, :cond_7

    :cond_5
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez v0, :cond_6

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->D:I

    :cond_6
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->D:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->k:I

    :cond_7
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->h:I

    const/16 v4, 0x60

    const/16 v5, 0x10

    if-lt v0, v5, :cond_9

    if-ge v0, v4, :cond_9

    const/16 v5, 0x50

    if-ge v0, v5, :cond_8

    add-int/lit8 v5, v0, -0x10

    goto :goto_2

    :cond_8
    const/16 v5, 0x40

    :goto_2
    iput v5, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_9
    and-int/lit16 v5, v0, 0xf0

    const/16 v6, 0x80

    const/16 v7, 0xf0

    if-eq v5, v6, :cond_10

    const/16 v8, 0x90

    if-eq v5, v8, :cond_f

    const/16 v2, 0xa0

    if-eq v5, v2, :cond_e

    const/16 v2, 0xb0

    if-eq v5, v2, :cond_c

    const/16 v2, 0xc0

    if-eq v5, v2, :cond_b

    if-eq v5, v7, :cond_a

    goto :goto_3

    :cond_a
    and-int/lit8 v2, v0, 0xf

    if-lez v2, :cond_11

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->C:I

    goto :goto_3

    :cond_b
    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x11

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    goto :goto_3

    :cond_c
    and-int/lit8 v2, v0, 0xf

    if-lez v2, :cond_d

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->U:I

    :cond_d
    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    goto :goto_3

    :cond_e
    and-int/lit8 v2, v0, 0xf

    if-lez v2, :cond_11

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    goto :goto_3

    :cond_f
    iget v5, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    and-int/lit8 v0, v0, 0xf

    add-int/2addr v5, v0

    iput v5, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-le v5, v2, :cond_11

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_3

    :cond_10
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    and-int/lit8 v0, v0, 0xf

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-gez v2, :cond_11

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_11
    :goto_3
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->f:I

    if-lez v0, :cond_1d

    if-le v0, v4, :cond_12

    iput-boolean v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->e:Z

    goto/16 :goto_7

    :cond_12
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->h:I

    and-int/2addr v2, v7

    if-eq v2, v7, :cond_14

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_14

    const/4 v4, 0x5

    if-eq v2, v4, :cond_14

    const/16 v4, 0x87

    if-eq v2, v4, :cond_14

    const/16 v4, 0x8c

    if-ne v2, v4, :cond_13

    goto :goto_4

    :cond_13
    const/4 v2, 0x0

    goto :goto_5

    :cond_14
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_15

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v5, v4, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    iget-object v4, v4, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    aget v4, v4, v0

    aget-object v4, v5, v4

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    :cond_15
    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    iget v5, v4, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    iget v7, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    const/16 v8, 0x75

    const/4 v9, 0x4

    if-eq v7, v8, :cond_16

    const/16 v8, 0xf2

    if-ne v7, v8, :cond_17

    :cond_16
    iget v5, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v9

    sub-int/2addr v5, v6

    :cond_17
    iget v4, v4, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    add-int/2addr v0, v4

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    const/16 v4, 0x78

    if-le v0, v4, :cond_19

    const/16 v0, 0x78

    :cond_19
    shl-int/lit8 v0, v0, 0x6

    shr-int/lit8 v1, v5, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-boolean v1, v1, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    if-eqz v1, :cond_1a

    rsub-int v0, v0, 0x1e40

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->w:I

    goto :goto_6

    :cond_1a
    shl-int/lit8 v0, v0, 0xf

    div-int/lit16 v0, v0, -0x300

    invoke-static {v0}, Lcom/prineside/tdi2/ibxm/Channel;->exp2(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x715d

    shr-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->w:I

    :goto_6
    if-nez v2, :cond_1d

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->w:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->k:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->R:I

    if-ge v0, v9, :cond_1b

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    :cond_1b
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->V:I

    if-ge v0, v9, :cond_1c

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->W:I

    :cond_1c
    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->z:I

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    :cond_1d
    :goto_7
    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v1, v0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    iget-boolean v2, v1, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->e:Z

    if-nez v2, :cond_0

    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->s:I

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Instrument;->volumeFadeOut:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->s:I

    if-gez v3, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->s:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->t:I

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ibxm/Envelope;->nextTick(IZ)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->t:I

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v0, v0, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    iget-boolean v1, v0, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->u:I

    iget-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ibxm/Envelope;->nextTick(IZ)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->u:I

    :cond_2
    return-void
.end method

.method public final l(Z)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->R:I

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/ibxm/Channel;->n(II)I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->U:I

    mul-int v0, v0, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    shr-int p1, v0, p1

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->a0:I

    return-void
.end method

.method public final m()V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->I:I

    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0xf

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    if-lez v1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    if-lez v0, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-boolean v2, v2, Lcom/prineside/tdi2/ibxm/Module;->fastVolSlides:Z

    if-eqz v2, :cond_3

    :cond_2
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_3
    :goto_0
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    const/16 v1, 0x40

    if-le v0, v1, :cond_4

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_4
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_5
    return-void
.end method

.method public final n(II)I
    .locals 1

    const/16 v0, 0xff

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object p2, Lcom/prineside/tdi2/ibxm/Channel;->f0:[S

    and-int/lit8 v0, p1, 0x1f

    aget-short p2, p2, v0

    and-int/lit8 p1, p1, 0x20

    if-lez p1, :cond_0

    neg-int p1, p2

    goto :goto_1

    :pswitch_1
    add-int/lit8 p1, p1, 0x20

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x3

    sub-int/2addr p1, v0

    goto :goto_1

    :pswitch_2
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->d0:I

    shr-int/lit8 p2, p1, 0x14

    sub-int/2addr p2, v0

    mul-int/lit8 p1, p1, 0x41

    add-int/lit8 p1, p1, 0x11

    const v0, 0x1fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->d0:I

    :cond_0
    move p1, p2

    goto :goto_1

    :pswitch_3
    and-int/lit8 p1, p1, 0x20

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0xff

    :goto_0
    move p1, v0

    goto :goto_1

    :pswitch_4
    add-int/lit8 p1, p1, 0x20

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x3

    rsub-int p1, p1, 0xff

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public resample([IIIII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p5

    iget v2, v0, Lcom/prineside/tdi2/ibxm/Channel;->o:I

    if-gtz v2, :cond_0

    return-void

    :cond_0
    iget v3, v0, Lcom/prineside/tdi2/ibxm/Channel;->p:I

    rsub-int v4, v3, 0xff

    mul-int v4, v4, v2

    shr-int/lit8 v9, v4, 0x8

    mul-int v2, v2, v3

    shr-int/lit8 v10, v2, 0x8

    iget v2, v0, Lcom/prineside/tdi2/ibxm/Channel;->n:I

    shl-int/lit8 v2, v2, 0xc

    shr-int/lit8 v3, p4, 0x3

    div-int v8, v2, v3

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v5, v0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    iget v6, v0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    iget v7, v0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    move-object v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/prineside/tdi2/ibxm/Sample;->resampleLinear(IIIII[III)V

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    iget v6, v0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    iget v7, v0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    move-object v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/prineside/tdi2/ibxm/Sample;->resampleSinc(IIIII[III)V

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    iget v6, v0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    iget v7, v0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    move-object v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/prineside/tdi2/ibxm/Sample;->resampleNearest(IIIII[III)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->e:Z

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->b0:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->a0:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->Z:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->Y:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->X:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->W:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->V:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->U:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->R:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->Q:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->P:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->O:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->N:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->M:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->L:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->K:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->J:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->I:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->H:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->G:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->F:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->E:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->D:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->C:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->B:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->A:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->z:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->w:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->v:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->u:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->t:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->s:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->p:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->o:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->n:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->k:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->h:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->g:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->f:I

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-object v1, v1, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->c0:I

    aget v1, v1, v2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->c:Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v1, v1, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    add-int/lit8 v2, v2, 0x1

    const v0, 0xabcdef

    mul-int v2, v2, v0

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->d0:I

    return-void
.end method

.method public row(Lcom/prineside/tdi2/ibxm/Note;)V
    .locals 7

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Note;->key:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->f:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Note;->instrument:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->g:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Note;->volume:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->h:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    iget p1, p1, Lcom/prineside/tdi2/ibxm/Note;->param:I

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->b0:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->Z:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->a0:I

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_0

    const/16 v3, 0xfd

    if-ne v0, v3, :cond_1

    :cond_0
    if-gtz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->j()V

    :cond_2
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2c

    const/16 v0, 0xc

    const/16 v3, 0x40

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x19

    if-eq p1, v0, :cond_29

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_26

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_23

    const/16 v0, 0x21

    const/16 v4, 0x10

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x74

    const/16 v5, 0x8

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x77

    if-eq p1, v0, :cond_1d

    const/16 v0, 0xf8

    const/16 v6, 0x11

    if-eq p1, v0, :cond_1c

    const/16 v0, 0xfc

    if-eq p1, v0, :cond_1b

    if-eq p1, v4, :cond_19

    if-eq p1, v6, :cond_18

    const/16 v0, 0x14

    if-eq p1, v0, :cond_17

    const/16 v0, 0x15

    const/16 v4, 0xff

    if-eq p1, v0, :cond_16

    const/16 v0, 0x71

    if-eq p1, v0, :cond_14

    const/16 v0, 0x72

    if-eq p1, v0, :cond_12

    const/16 v0, 0x91

    if-eq p1, v0, :cond_26

    const/16 v0, 0x92

    if-eq p1, v0, :cond_f

    const/16 v0, 0x95

    if-eq p1, v0, :cond_c

    const/16 v0, 0x96

    if-eq p1, v0, :cond_19

    const/16 v0, 0xf3

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xf4

    if-eq p1, v0, :cond_1d

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_2e

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->H:I

    goto/16 :goto_2

    :pswitch_1
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_3

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->M:I

    :cond_3
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->M:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-gez p1, :cond_2e

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto/16 :goto_2

    :pswitch_2
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_4

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->L:I

    :cond_4
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->L:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-le p1, v3, :cond_2e

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto/16 :goto_2

    :pswitch_3
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    const/16 v0, 0x80

    if-ge p1, v0, :cond_5

    shl-int/lit8 v4, p1, 0x1

    :cond_5
    iput v4, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    goto/16 :goto_2

    :pswitch_4
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_6

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->I:I

    :cond_6
    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->m()V

    goto/16 :goto_2

    :pswitch_5
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_7

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->I:I

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->m()V

    goto/16 :goto_2

    :pswitch_6
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    shr-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_8

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    :cond_8
    and-int/lit8 v0, p1, 0xf

    if-lez v0, :cond_9

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->U:I

    :cond_9
    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    goto/16 :goto_2

    :pswitch_7
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_2e

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->C:I

    goto/16 :goto_2

    :pswitch_8
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_a

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->B:I

    :cond_a
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->B:I

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Channel;->d(I)V

    goto/16 :goto_2

    :pswitch_9
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_b

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->A:I

    :cond_b
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->A:I

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Channel;->e(I)V

    goto/16 :goto_2

    :cond_c
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    shr-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_d

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    :cond_d
    and-int/lit8 v0, p1, 0xf

    if-lez v0, :cond_e

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->U:I

    :cond_e
    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    goto/16 :goto_2

    :cond_f
    :pswitch_a
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    shr-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_10

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->X:I

    :cond_10
    and-int/lit8 v0, p1, 0xf

    if-lez v0, :cond_11

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->Y:I

    :cond_11
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->h()V

    goto/16 :goto_2

    :cond_12
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_13

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->F:I

    :cond_13
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->F:I

    and-int/lit8 p1, p1, 0xf

    or-int/lit16 p1, p1, 0xf0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Channel;->d(I)V

    goto/16 :goto_2

    :cond_14
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_15

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->E:I

    :cond_15
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->E:I

    and-int/lit8 p1, p1, 0xf

    or-int/lit16 p1, p1, 0xf0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Channel;->e(I)V

    goto/16 :goto_2

    :cond_16
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    and-int/2addr p1, v4

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->u:I

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->t:I

    goto/16 :goto_2

    :cond_17
    iput-boolean v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->e:Z

    goto/16 :goto_2

    :cond_18
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_2e

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->J:I

    goto/16 :goto_2

    :cond_19
    iget-object p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->b:Lcom/prineside/tdi2/ibxm/GlobalVol;

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lt v0, v3, :cond_1a

    goto :goto_0

    :cond_1a
    and-int/lit8 v3, v0, 0x3f

    :goto_0
    iput v3, p1, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    goto/16 :goto_2

    :cond_1b
    :pswitch_b
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-gtz p1, :cond_2e

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto/16 :goto_2

    :cond_1c
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    mul-int/lit8 p1, p1, 0x11

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    goto/16 :goto_2

    :cond_1d
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-ge p1, v5, :cond_2e

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->V:I

    goto/16 :goto_2

    :cond_1e
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-ge p1, v5, :cond_2e

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->R:I

    goto/16 :goto_2

    :cond_1f
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_20

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->G:I

    :cond_20
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->G:I

    and-int/lit16 v0, p1, 0xf0

    if-eq v0, v4, :cond_22

    const/16 v1, 0x20

    if-eq v0, v1, :cond_21

    goto :goto_2

    :cond_21
    and-int/lit8 p1, p1, 0xf

    or-int/lit16 p1, p1, 0xe0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Channel;->d(I)V

    goto :goto_2

    :cond_22
    and-int/lit8 p1, p1, 0xf

    or-int/lit16 p1, p1, 0xe0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Channel;->e(I)V

    goto :goto_2

    :cond_23
    :pswitch_c
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    shr-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_24

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->P:I

    :cond_24
    and-int/lit8 v0, p1, 0xf

    if-lez v0, :cond_25

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->Q:I

    :cond_25
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->i()V

    goto :goto_2

    :cond_26
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    shr-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_27

    shr-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->N:I

    :cond_27
    and-int/lit8 v0, p1, 0xf

    if-lez v0, :cond_28

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->O:I

    :cond_28
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->f()V

    goto :goto_2

    :cond_29
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_2e

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->K:I

    goto :goto_2

    :cond_2a
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lt p1, v3, :cond_2b

    goto :goto_1

    :cond_2b
    and-int/lit8 v3, p1, 0x3f

    :goto_1
    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_2

    :cond_2c
    :pswitch_d
    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lez p1, :cond_2d

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->I:I

    :cond_2d
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->m()V

    :cond_2e
    :goto_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->a()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->c()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->b()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7a
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x84
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public tick()V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->a0:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->x:I

    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    const/16 v4, 0x7d

    const/16 v5, 0xff

    const/16 v6, 0x40

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-le v1, v3, :cond_7

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->h:I

    and-int/lit16 v3, v1, 0xf0

    const/16 v7, 0x60

    if-eq v3, v7, :cond_6

    const/16 v7, 0x70

    if-eq v3, v7, :cond_5

    const/16 v7, 0xb0

    if-eq v3, v7, :cond_4

    const/16 v7, 0xd0

    if-eq v3, v7, :cond_3

    const/16 v7, 0xe0

    if-eq v3, v7, :cond_2

    const/16 v1, 0xf0

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->g()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v3, v1

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    if-le v3, v5, :cond_7

    iput v5, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    and-int/lit8 v1, v1, 0xf

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    if-gez v3, :cond_7

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v3, v1

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-le v3, v6, :cond_7

    iput v6, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    and-int/lit8 v1, v1, 0xf

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    if-gez v3, :cond_7

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    :cond_7
    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->i:I

    const/16 v3, 0xa

    if-eq v1, v3, :cond_16

    const/16 v3, 0x11

    if-eq v1, v3, :cond_14

    const/16 v3, 0x19

    if-eq v1, v3, :cond_12

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_11

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_10

    const/16 v3, 0x79

    if-eq v1, v3, :cond_f

    const/16 v3, 0x95

    if-eq v1, v3, :cond_e

    const/16 v3, 0x7c

    if-eq v1, v3, :cond_d

    if-eq v1, v4, :cond_c

    const/16 v3, 0x91

    if-eq v1, v3, :cond_11

    const/16 v3, 0x92

    if-eq v1, v3, :cond_b

    const/16 v3, 0xfc

    if-eq v1, v3, :cond_d

    const/16 v3, 0xfd

    if-eq v1, v3, :cond_c

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_8

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    :cond_8
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-nez v1, :cond_9

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->b0:I

    :cond_9
    if-ne v1, v2, :cond_a

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->H:I

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->b0:I

    :cond_a
    if-ne v1, v3, :cond_17

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->H:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->b0:I

    goto/16 :goto_1

    :pswitch_1
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->m()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->g()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->m()V

    goto/16 :goto_1

    :pswitch_3
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->g()V

    goto/16 :goto_1

    :pswitch_5
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->B:I

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/Channel;->d(I)V

    goto/16 :goto_1

    :pswitch_6
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->A:I

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/Channel;->e(I)V

    goto/16 :goto_1

    :cond_b
    :pswitch_7
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->W:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->X:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->W:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->h()V

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-ne v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->j()V

    goto :goto_1

    :cond_d
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    if-ne v1, v2, :cond_17

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->q:I

    goto :goto_1

    :cond_e
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->T:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->S:I

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ibxm/Channel;->l(Z)V

    goto :goto_1

    :cond_f
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->j:I

    if-lt v1, v2, :cond_17

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->y:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    goto :goto_1

    :cond_10
    :pswitch_8
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->i()V

    goto :goto_1

    :cond_11
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->f()V

    goto :goto_1

    :cond_12
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Channel;->K:I

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    if-gez v1, :cond_13

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    :cond_13
    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    if-le v0, v5, :cond_17

    iput v5, p0, Lcom/prineside/tdi2/ibxm/Channel;->r:I

    goto :goto_1

    :cond_14
    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Channel;->b:Lcom/prineside/tdi2/ibxm/GlobalVol;

    iget v2, v1, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    iget v3, p0, Lcom/prineside/tdi2/ibxm/Channel;->J:I

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    iput v2, v1, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    if-gez v2, :cond_15

    iput v0, v1, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    :cond_15
    iget v0, v1, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    if-le v0, v6, :cond_17

    iput v6, v1, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    goto :goto_1

    :cond_16
    :pswitch_9
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->m()V

    :cond_17
    :goto_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->a()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->c()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->b()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/Channel;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateSampleIdx(II)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->n:I

    shl-int/lit8 v0, v0, 0xc

    shr-int/lit8 p2, p2, 0x3

    div-int/2addr v0, p2

    iget p2, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    mul-int v0, v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    iget-object p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->d:Lcom/prineside/tdi2/ibxm/Sample;

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    shr-int/lit8 p2, p2, 0xf

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ibxm/Sample;->normaliseSampleIdx(I)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->l:I

    iget p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    and-int/lit16 p1, p1, 0x7fff

    iput p1, p0, Lcom/prineside/tdi2/ibxm/Channel;->m:I

    return-void
.end method
