.class public Lcom/prineside/tdi2/ibxm/Pattern;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:[B

.field public numRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Pattern;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    iget-object p1, p1, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getNote(ILcom/prineside/tdi2/ibxm/Note;)Lcom/prineside/tdi2/ibxm/Note;
    .locals 2

    mul-int/lit8 p1, p1, 0x5

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/prineside/tdi2/ibxm/Note;->key:I

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/prineside/tdi2/ibxm/Note;->instrument:I

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/prineside/tdi2/ibxm/Note;->volume:I

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/prineside/tdi2/ibxm/Note;->effect:I

    add-int/lit8 p1, p1, 0x4

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p2, Lcom/prineside/tdi2/ibxm/Note;->param:I

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    mul-int/lit8 v2, v1, 0x5

    div-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0xb

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ibxm/Pattern;->toStringBuffer(Ljava/lang/StringBuffer;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBuffer(Ljava/lang/StringBuffer;)V
    .locals 8

    new-instance v0, Lcom/prineside/tdi2/ibxm/Note;

    invoke-direct {v0}, Lcom/prineside/tdi2/ibxm/Note;-><init>()V

    const/16 v1, 0xa

    new-array v2, v1, [C

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    array-length v3, v3

    iget v4, p0, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    mul-int/lit8 v4, v4, 0x5

    div-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/prineside/tdi2/ibxm/Pattern;->numRows:I

    if-ge v5, v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_0

    mul-int v7, v3, v5

    add-int/2addr v7, v6

    invoke-virtual {p0, v7, v0}, Lcom/prineside/tdi2/ibxm/Pattern;->getNote(ILcom/prineside/tdi2/ibxm/Note;)Lcom/prineside/tdi2/ibxm/Note;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ibxm/Note;->toChars([C)[C

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
