.class public Lcom/prineside/tdi2/ibxm/IBXM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERSION:Ljava/lang/String; = "a73 (c)2017 mumart@gmail.com"


# instance fields
.field public final a:Lcom/prineside/tdi2/ibxm/Module;

.field public final b:[I

.field public final c:[Z

.field public final channels:[Lcom/prineside/tdi2/ibxm/Channel;

.field public final d:[[B

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public interpolation:I

.field public j:I

.field public k:I

.field public l:I

.field public lastSeqPos:I

.field public m:I

.field public n:I

.field public final o:Lcom/prineside/tdi2/ibxm/GlobalVol;

.field public final p:Lcom/prineside/tdi2/ibxm/Note;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Module;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->b:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->interpolation:I

    new-instance v1, Lcom/prineside/tdi2/ibxm/GlobalVol;

    invoke-direct {v1}, Lcom/prineside/tdi2/ibxm/GlobalVol;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->o:Lcom/prineside/tdi2/ibxm/GlobalVol;

    new-instance v1, Lcom/prineside/tdi2/ibxm/Note;

    invoke-direct {v1}, Lcom/prineside/tdi2/ibxm/Note;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->p:Lcom/prineside/tdi2/ibxm/Note;

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ibxm/IBXM;->setSampleRate(I)V

    iget p2, p1, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v0

    aput p2, v1, v2

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    iput-object p2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->d:[[B

    iget p2, p1, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    new-array v0, p2, [Lcom/prineside/tdi2/ibxm/Channel;

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->c:[Z

    const/4 p2, 0x0

    :goto_0
    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    new-instance v1, Lcom/prineside/tdi2/ibxm/Channel;

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->o:Lcom/prineside/tdi2/ibxm/GlobalVol;

    invoke-direct {v1, p1, p2, v3}, Lcom/prineside/tdi2/ibxm/Channel;-><init>(Lcom/prineside/tdi2/ibxm/Module;ILcom/prineside/tdi2/ibxm/GlobalVol;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    mul-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p1, 0x2

    div-int/2addr p2, p1

    return p2
.end method

.method public final b([II)V
    .locals 6

    mul-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x4

    aget v4, p1, v3

    shr-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    aput v2, p1, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v1, 0x3

    aget v5, p1, v5

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x5

    aget v1, p1, v1

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    aput v4, p1, v2

    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 10

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    const/4 v2, -0x1

    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v3, v3, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    if-lt v0, v3, :cond_1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    iget v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    aget v3, v3, v4

    iget v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    if-lt v3, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    if-lt v4, v0, :cond_1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->f:I

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v3, v3, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    aget-object v3, v3, v0

    iput v1, v3, Lcom/prineside/tdi2/ibxm/Channel;->plRow:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    iget-object v4, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    iget v5, p0, Lcom/prineside/tdi2/ibxm/IBXM;->f:I

    aget v4, v4, v5

    aget-object v3, v3, v4

    iget v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    iput v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    iget v6, v3, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    if-lt v4, v6, :cond_5

    iput v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    :cond_5
    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->d:[[B

    aget-object v4, v4, v5

    iget v5, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    aget-byte v7, v4, v5

    iget v8, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    if-gez v8, :cond_6

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_6

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    :cond_6
    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    if-lt v4, v6, :cond_7

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    :cond_7
    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    mul-int v5, v5, v0

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v2, v2, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge v0, v2, :cond_17

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    aget-object v2, v2, v0

    add-int v4, v5, v0

    iget-object v6, p0, Lcom/prineside/tdi2/ibxm/IBXM;->p:Lcom/prineside/tdi2/ibxm/Note;

    invoke-virtual {v3, v4, v6}, Lcom/prineside/tdi2/ibxm/Pattern;->getNote(ILcom/prineside/tdi2/ibxm/Note;)Lcom/prineside/tdi2/ibxm/Note;

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->p:Lcom/prineside/tdi2/ibxm/Note;

    iget v6, v4, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    const/16 v7, 0xe

    const/16 v8, 0xf

    if-ne v6, v7, :cond_8

    iget v6, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    shr-int/lit8 v7, v6, 0x4

    or-int/lit8 v7, v7, 0x70

    iput v7, v4, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    and-int/2addr v6, v8

    iput v6, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    :cond_8
    iget v6, v4, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    const/16 v7, 0x93

    if-ne v6, v7, :cond_9

    iget v6, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    shr-int/lit8 v7, v6, 0x4

    or-int/lit16 v7, v7, 0xf0

    iput v7, v4, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    and-int/2addr v6, v8

    iput v6, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    :cond_9
    iget v6, v4, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    if-nez v6, :cond_a

    iget v6, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-lez v6, :cond_a

    const/16 v6, 0x8a

    iput v6, v4, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    :cond_a
    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ibxm/Channel;->row(Lcom/prineside/tdi2/ibxm/Note;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->p:Lcom/prineside/tdi2/ibxm/Note;

    iget v6, v4, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    const/16 v7, 0xb

    if-eq v6, v7, :cond_15

    const/16 v7, 0xd

    if-eq v6, v7, :cond_13

    const/16 v7, 0x20

    if-eq v6, v8, :cond_11

    const/16 v9, 0x76

    if-eq v6, v9, :cond_d

    const/16 v9, 0x7e

    if-eq v6, v9, :cond_c

    const/16 v9, 0x94

    if-eq v6, v9, :cond_b

    const/16 v7, 0xfb

    if-eq v6, v7, :cond_d

    const/16 v2, 0xfe

    if-eq v6, v2, :cond_c

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget v2, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-lez v2, :cond_16

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->k:I

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->j:I

    goto/16 :goto_4

    :cond_b
    iget v2, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-le v2, v7, :cond_16

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    goto/16 :goto_4

    :cond_c
    iget v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->k:I

    iget v4, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    mul-int v4, v4, v2

    add-int/2addr v2, v4

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->j:I

    goto :goto_4

    :cond_d
    iget v4, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-nez v4, :cond_e

    iget v6, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    iput v6, v2, Lcom/prineside/tdi2/ibxm/Channel;->plRow:I

    :cond_e
    iget v6, v2, Lcom/prineside/tdi2/ibxm/Channel;->plRow:I

    iget v7, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    if-ge v6, v7, :cond_16

    iget v8, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    if-gez v8, :cond_16

    iget v8, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    if-gez v8, :cond_f

    iput v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->n:I

    :cond_f
    iget v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->n:I

    if-ne v4, v0, :cond_16

    iget v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    if-nez v4, :cond_10

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/prineside/tdi2/ibxm/Channel;->plRow:I

    goto :goto_3

    :cond_10
    iput v6, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    :goto_3
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    goto :goto_4

    :cond_11
    iget v2, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    if-lez v2, :cond_16

    if-ge v2, v7, :cond_12

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->k:I

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->j:I

    goto :goto_4

    :cond_12
    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    goto :goto_4

    :cond_13
    :pswitch_1
    iget v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    if-gez v2, :cond_16

    iget v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    if-gez v2, :cond_14

    iget v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    :cond_14
    iget v2, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    shr-int/lit8 v4, v2, 0x4

    mul-int/lit8 v4, v4, 0xa

    and-int/2addr v2, v8

    add-int/2addr v4, v2

    iput v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    goto :goto_4

    :cond_15
    :pswitch_2
    iget v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    if-gez v2, :cond_16

    iget v2, v4, Lcom/prineside/tdi2/ibxm/Note;->param:I

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    :cond_16
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public calculateSongDuration()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_0

    iget v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    iget v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    invoke-virtual {p0, v1, v3}, Lcom/prineside/tdi2/ibxm/IBXM;->a(II)I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/IBXM;->d()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    return v2
.end method

.method public final d()Z
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->j:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->j:I

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->k:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->j:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/IBXM;->c()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v3, v3, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/prineside/tdi2/ibxm/Channel;->tick()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->d:[[B

    iget v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->f:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    aget-byte v0, v0, v3

    if-le v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final e([II)V
    .locals 8

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    const/high16 v1, 0x80000

    div-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x100

    if-ge v2, v4, :cond_0

    rsub-int v4, v2, 0x100

    aget v5, p1, v3

    mul-int v5, v5, v2

    iget-object v6, p0, Lcom/prineside/tdi2/ibxm/IBXM;->b:[I

    aget v7, v6, v3

    mul-int v7, v7, v4

    add-int/2addr v5, v7

    shr-int/lit8 v5, v5, 0x8

    aput v5, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget v7, p1, v5

    mul-int v7, v7, v2

    aget v6, v6, v5

    mul-int v6, v6, v4

    add-int/2addr v7, v6

    shr-int/lit8 v4, v7, 0x8

    aput v4, p1, v5

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->b:[I

    const/16 v2, 0x80

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getAudio([I)I
    .locals 10

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/ibxm/IBXM;->a(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x41

    mul-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aput v3, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v2, v2, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->c:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_1

    const/4 v6, 0x0

    mul-int/lit8 v7, v1, 0x2

    iget v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    mul-int/lit8 v8, v4, 0x2

    iget v9, p0, Lcom/prineside/tdi2/ibxm/IBXM;->interpolation:I

    move-object v4, v2

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/ibxm/Channel;->resample([IIIII)V

    :cond_1
    mul-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/prineside/tdi2/ibxm/Channel;->updateSampleIdx(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x40

    invoke-virtual {p0, p1, v1}, Lcom/prineside/tdi2/ibxm/IBXM;->b([II)V

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ibxm/IBXM;->e([II)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/IBXM;->d()Z

    return v0
.end method

.method public getGlobalVol()Lcom/prineside/tdi2/ibxm/GlobalVol;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->o:Lcom/prineside/tdi2/ibxm/GlobalVol;

    return-object v0
.end method

.method public getMixBufferLength()I
    .locals 2

    const/16 v0, 0x20

    const v1, 0x1f400

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/ibxm/IBXM;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x41

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getModule()Lcom/prineside/tdi2/ibxm/Module;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    return v0
.end method

.method public getSequencePos()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->f:I

    return v0
.end method

.method public seek(I)I
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    iget v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    invoke-virtual {p0, v1, v2}, Lcom/prineside/tdi2/ibxm/IBXM;->a(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p1, v2

    if-lt v3, v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v4, v4, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    aget-object v4, v4, v3

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/ibxm/Channel;->updateSampleIdx(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/IBXM;->d()Z

    iget v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    iget v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    invoke-virtual {p0, v1, v3}, Lcom/prineside/tdi2/ibxm/IBXM;->a(II)I

    move-result v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public seekSequencePos(II)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v1, v1, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-object v2, v1, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    iget-object v1, v1, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    aget v1, v1, p1

    aget-object v1, v2, v1

    iget v1, v1, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    if-lt p2, v1, :cond_2

    const/4 p2, 0x0

    :cond_2
    iget v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->f:I

    if-lt v1, p1, :cond_4

    iget v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->h:I

    if-ge v1, p2, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    invoke-virtual {p0, v1, v2}, Lcom/prineside/tdi2/ibxm/IBXM;->a(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v3, v3, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/prineside/tdi2/ibxm/Channel;->updateSampleIdx(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/IBXM;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/IBXM;->setSequencePos(I)V

    return-void
.end method

.method public setInterpolation(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->interpolation:I

    return-void
.end method

.method public setMuted(IZ)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->c:[Z

    aput-boolean p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->c:[Z

    aput-boolean p2, v0, p1

    :cond_1
    return-void
.end method

.method public setSampleRate(I)V
    .locals 1

    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_0

    const v0, 0x1f400

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported sampling rate!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSequencePos(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v1, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->g:I

    iput v2, p0, Lcom/prineside/tdi2/ibxm/IBXM;->i:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->j:I

    iget-object p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->o:Lcom/prineside/tdi2/ibxm/GlobalVol;

    iget v1, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    iput v1, p1, Lcom/prineside/tdi2/ibxm/GlobalVol;->volume:I

    iget p1, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    :goto_0
    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->k:I

    iget p1, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x7d

    :goto_1
    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->l:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->n:I

    iput p1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->m:I

    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->d:[[B

    array-length v1, v0

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget-object v3, v1, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    aget v3, v3, p1

    iget v4, v1, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    if-ge v3, v4, :cond_3

    iget-object v1, v1, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    aget-object v3, v0, p1

    array-length v3, v3

    if-ge v3, v1, :cond_4

    new-array v1, v1, [B

    aput-object v1, v0, p1

    :cond_4
    aget-object v0, v0, p1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_4
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->a:Lcom/prineside/tdi2/ibxm/Module;

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->channels:[Lcom/prineside/tdi2/ibxm/Channel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/prineside/tdi2/ibxm/Channel;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_5
    const/16 v0, 0x80

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/IBXM;->b:[I

    aput v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/IBXM;->d()Z

    return-void
.end method
