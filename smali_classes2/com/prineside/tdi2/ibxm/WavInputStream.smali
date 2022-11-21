.class public Lcom/prineside/tdi2/ibxm/WavInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;
    }
.end annotation


# static fields
.field public static final header:[B


# instance fields
.field public a:Lcom/prineside/tdi2/ibxm/IBXM;

.field public b:[I

.field public d:[B

.field public k:I

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream;->header:[B

    return-void

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x41t
        0x56t
        0x45t
        0x66t
        0x6dt
        0x74t
        0x20t
        0x10t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x10t
        0x0t
        0x64t
        0x61t
        0x74t
        0x61t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/IBXM;ILcom/prineside/tdi2/ibxm/WavInputStream$Mode;)V
    .locals 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->INTRO_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object p3

    iget p3, p3, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    add-int/lit8 p3, p3, -0x1

    move v0, p3

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;->LOOPING_PART:Lcom/prineside/tdi2/ibxm/WavInputStream$Mode;

    if-ne p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object p3

    iget p3, p3, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    const/4 v0, -0x1

    :goto_0
    if-eq p3, v1, :cond_2

    new-instance v1, Lcom/prineside/tdi2/ibxm/Module;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/prineside/tdi2/ibxm/Module;-><init>(Lcom/prineside/tdi2/ibxm/Module;)V

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    iget-object v3, v1, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    new-array v4, v0, [I

    iput-object v4, v1, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    invoke-static {v3, p3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p1, Lcom/prineside/tdi2/ibxm/IBXM;->interpolation:I

    new-instance v0, Lcom/prineside/tdi2/ibxm/IBXM;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getSampleRate()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/prineside/tdi2/ibxm/IBXM;-><init>(Lcom/prineside/tdi2/ibxm/Module;I)V

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/ibxm/IBXM;->setInterpolation(I)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->calculateSongDuration()I

    move-result p3

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->a:Lcom/prineside/tdi2/ibxm/IBXM;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getMixBufferLength()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    const/4 v0, 0x4

    mul-int/lit8 p3, p3, 0x4

    invoke-virtual {p1}, Lcom/prineside/tdi2/ibxm/IBXM;->getSampleRate()I

    move-result p1

    sget-object v1, Lcom/prineside/tdi2/ibxm/WavInputStream;->header:[B

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    add-int/lit8 v4, p3, 0x24

    invoke-static {v3, v0, v4}, Lcom/prineside/tdi2/ibxm/WavInputStream;->writeInt32([BII)V

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    const/16 v4, 0x18

    invoke-static {v3, v4, p1}, Lcom/prineside/tdi2/ibxm/WavInputStream;->writeInt32([BII)V

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    const/16 v4, 0x1c

    mul-int/lit8 p1, p1, 0x4

    invoke-static {v3, v4, p1}, Lcom/prineside/tdi2/ibxm/WavInputStream;->writeInt32([BII)V

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    const/16 v3, 0x28

    invoke-static {v0, v3, p3}, Lcom/prineside/tdi2/ibxm/WavInputStream;->writeInt32([BII)V

    iput v2, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    array-length v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->p:I

    array-length v0, v1

    add-int/2addr v0, p3

    iput v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    mul-int p1, p1, p2

    iput p1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->r:I

    return-void
.end method

.method public static readInt32([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static writeInt32([BII)V
    .locals 2

    int-to-byte v0, p2

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->p:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->a:Lcom/prineside/tdi2/ibxm/IBXM;

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->b:[I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ibxm/IBXM;->getAudio([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    iget v2, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->r:I

    if-ge v1, v2, :cond_0

    shr-int/lit8 v2, v2, 0xa

    div-int/2addr v1, v2

    mul-int v2, v1, v1

    mul-int v2, v2, v1

    shr-int/lit8 v1, v2, 0x14

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->b:[I

    aget v5, v5, v3

    mul-int v5, v5, v1

    shr-int/lit8 v5, v5, 0xa

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_1

    const/16 v5, 0x7fff

    :cond_1
    const/16 v6, -0x8000

    if-ge v5, v6, :cond_2

    const/16 v5, -0x8000

    :cond_2
    iget-object v6, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    add-int/lit8 v7, v4, 0x1

    int-to-byte v8, v5

    aput-byte v8, v6, v4

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->p:I

    return-void
.end method

.method public getRemain()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    return v0
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    iget v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->p:I

    if-lt v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/WavInputStream;->c()V

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    if-lez v0, :cond_3

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->p:I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->d:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->k:I

    iget p2, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->p:I

    if-lt p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/ibxm/WavInputStream;->c()V

    :cond_2
    iget p1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/prineside/tdi2/ibxm/WavInputStream;->q:I

    goto :goto_1

    :cond_3
    const/4 p3, -0x1

    :goto_1
    return p3
.end method
