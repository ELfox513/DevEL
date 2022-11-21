.class public final Lcom/android/dx/dex/code/HighRegisterPrefix;
.super Lcom/android/dx/dex/code/VariableSizeInsn;
.source "SourceFile"


# instance fields
.field private insns:[Lcom/android/dx/dex/code/SimpleInsn;


# direct methods
.method public constructor <init>(Lw1/w;Lw1/r;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lw1/w;Lw1/r;)V

    invoke-virtual {p2}, Lb2/f;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "registers.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateInsnsIfNecessary()V
    .locals 7

    iget-object v0, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/dx/dex/code/SimpleInsn;

    iput-object v2, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    invoke-static {v4, v3}, Lcom/android/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lw1/q;I)Lcom/android/dx/dex/code/SimpleInsn;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4}, Lw1/q;->x()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static moveInsnFor(Lw1/q;I)Lcom/android/dx/dex/code/SimpleInsn;
    .locals 2

    sget-object v0, Lw1/w;->d:Lw1/w;

    invoke-virtual {p0}, Lw1/q;->getType()Ly1/c;

    move-result-object v1

    invoke-static {p1, v1}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/dx/dex/code/DalvInsn;->makeMove(Lw1/w;Lw1/q;Lw1/q;)Lcom/android/dx/dex/code/SimpleInsn;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public codeSize()I
    .locals 5

    invoke-direct {p0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    iget-object v0, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/dx/dex/code/FixedSizeInsn;->codeSize()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public listingString0(Z)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/dx/dex/code/HighRegisterPrefix;->moveInsnFor(Lw1/q;I)Lcom/android/dx/dex/code/SimpleInsn;

    move-result-object v6

    if-eqz v3, :cond_0

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v6, p1}, Lcom/android/dx/dex/code/FixedSizeInsn;->listingString0(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lw1/q;->x()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 2

    new-instance v0, Lcom/android/dx/dex/code/HighRegisterPrefix;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/HighRegisterPrefix;-><init>(Lw1/w;Lw1/r;)V

    return-object v0
.end method

.method public writeTo(Lb2/a;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/dx/dex/code/HighRegisterPrefix;->calculateInsnsIfNecessary()V

    iget-object v0, p0, Lcom/android/dx/dex/code/HighRegisterPrefix;->insns:[Lcom/android/dx/dex/code/SimpleInsn;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/android/dx/dex/code/FixedSizeInsn;->writeTo(Lb2/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
