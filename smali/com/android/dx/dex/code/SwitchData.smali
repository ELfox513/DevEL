.class public final Lcom/android/dx/dex/code/SwitchData;
.super Lcom/android/dx/dex/code/VariableSizeInsn;
.source "SourceFile"


# instance fields
.field private final cases:Lb2/j;

.field private final packed:Z

.field private final targets:[Lcom/android/dx/dex/code/CodeAddress;

.field private final user:Lcom/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lw1/w;Lcom/android/dx/dex/code/CodeAddress;Lb2/j;[Lcom/android/dx/dex/code/CodeAddress;)V
    .locals 1

    sget-object v0, Lw1/r;->a:Lw1/r;

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lw1/w;Lw1/r;)V

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lb2/j;->size()I

    move-result p1

    array-length v0, p4

    if-ne p1, v0, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iput-object p2, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    iput-object p3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    iput-object p4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-static {p3}, Lcom/android/dx/dex/code/SwitchData;->shouldPack(Lb2/j;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too many cases"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cases / targets mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targets == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cases == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static packedCodeSize(Lb2/j;)J
    .locals 5

    invoke-virtual {p0}, Lb2/j;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lb2/j;->B(I)I

    move-result v1

    int-to-long v1, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb2/j;->B(I)I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    const-wide/16 v0, 0x2

    mul-long v3, v3, v0

    const-wide/16 v0, 0x4

    add-long/2addr v3, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, v3, v0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3
.end method

.method private static shouldPack(Lb2/j;)Z
    .locals 8

    invoke-virtual {p0}, Lb2/j;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lb2/j;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lb2/j;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p0, v2, v6

    if-ltz p0, :cond_1

    const-wide/16 v6, 0x5

    mul-long v4, v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static sparseCodeSize(Lb2/j;)J
    .locals 4

    invoke-virtual {p0}, Lb2/j;->size()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    invoke-virtual {v3, v2}, Lb2/j;->B(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public codeSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lb2/j;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lb2/j;)J

    move-result-wide v0

    :goto_0
    long-to-int v1, v0

    return v1
.end method

.method public isPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    return v0
.end method

.method public listingString0(Z)Ljava/lang/String;
    .locals 6

    iget-object p1, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v1, v1

    iget-boolean v2, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v2, :cond_0

    const-string v2, "packed"

    goto :goto_0

    :cond_0
    const-string v2, "sparse"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-switch-payload // for switch @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    sub-int v4, v3, p1

    const-string v5, "\n  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    invoke-virtual {v5, v2}, Lb2/j;->B(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lb2/g;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    new-instance p1, Lcom/android/dx/dex/code/SwitchData;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lw1/w;Lcom/android/dx/dex/code/CodeAddress;Lb2/j;[Lcom/android/dx/dex/code/CodeAddress;)V

    return-object p1
.end method

.method public writeTo(Lb2/a;)V
    .locals 8

    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v0

    sget-object v1, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/code/InsnFormat;->codeSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v2, v2

    iget-boolean v3, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    invoke-virtual {v3, v4}, Lb2/j;->B(I)I

    move-result v3

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lb2/j;->B(I)I

    move-result v2

    :goto_1
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x100

    invoke-interface {p1, v5}, Lb2/q;->writeShort(I)V

    invoke-interface {p1, v2}, Lb2/q;->writeShort(I)V

    invoke-interface {p1, v3}, Lb2/q;->writeInt(I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    add-int v6, v3, v4

    iget-object v7, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    invoke-virtual {v7, v5}, Lb2/j;->B(I)I

    move-result v7

    if-le v7, v6, :cond_2

    move v6, v1

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v6

    sub-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    :goto_3
    invoke-interface {p1, v6}, Lb2/q;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 v1, 0x200

    invoke-interface {p1, v1}, Lb2/q;->writeShort(I)V

    invoke-interface {p1, v2}, Lb2/q;->writeShort(I)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lb2/j;

    invoke-virtual {v3, v1}, Lb2/j;->B(I)I

    move-result v3

    invoke-interface {p1, v3}, Lb2/q;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v4, v2, :cond_5

    iget-object v1, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Lb2/q;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method
