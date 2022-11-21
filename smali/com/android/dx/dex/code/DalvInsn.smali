.class public abstract Lcom/android/dx/dex/code/DalvInsn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:I

.field private final opcode:Lcom/android/dx/dex/code/Dop;

.field private final position:Lw1/w;

.field private final registers:Lw1/r;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    iput-object p1, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    iput-object p2, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lw1/w;

    iput-object p3, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeMove(Lw1/w;Lw1/q;Lw1/q;)Lcom/android/dx/dex/code/SimpleInsn;
    .locals 5

    invoke-virtual {p1}, Lw1/q;->x()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lw1/q;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->N()Z

    move-result v0

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v2

    invoke-virtual {p2}, Lw1/q;->B()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT_FROM16:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_FROM16:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE_FROM16:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_OBJECT_16:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_16:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/dx/dex/code/Dops;->MOVE_WIDE_16:Lcom/android/dx/dex/code/Dop;

    :goto_1
    new-instance v1, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-static {p1, p2}, Lw1/r;->E(Lw1/q;Lw1/q;)Lw1/r;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    return-object v1
.end method


# virtual methods
.method public abstract argString()Ljava/lang/String;
.end method

.method public abstract codeSize()I
.end method

.method public cstComment()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cstString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandedPrefix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {v0, p1}, Lw1/r;->H(Ljava/util/BitSet;)Lw1/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    invoke-virtual {v0}, Lb2/f;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Lcom/android/dx/dex/code/HighRegisterPrefix;

    iget-object v1, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lw1/w;

    invoke-direct {p1, v1, v0}, Lcom/android/dx/dex/code/HighRegisterPrefix;-><init>(Lw1/w;Lw1/r;)V

    return-object p1
.end method

.method public expandedSuffix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 2

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    invoke-virtual {p1, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    iget-object v1, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lw1/w;

    invoke-virtual {p1, v0}, Lw1/q;->S(I)Lw1/q;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/android/dx/dex/code/DalvInsn;->makeMove(Lw1/w;Lw1/q;Lw1/q;)Lcom/android/dx/dex/code/SimpleInsn;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public expandedVersion(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lw1/r;->I(IZLjava/util/BitSet;)Lw1/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/DalvInsn;->withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1
.end method

.method public final getAddress()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLowRegVersion()Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lw1/r;->I(IZLjava/util/BitSet;)Lw1/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/DalvInsn;->withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    return-object v0
.end method

.method public final getMinimumRegisterRequirement(Ljava/util/BitSet;)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    invoke-virtual {v3, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->x()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    invoke-virtual {v4, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->x()I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final getNextAddress()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getOpcode()Lcom/android/dx/dex/code/Dop;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    return-object v0
.end method

.method public final getPosition()Lw1/w;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lw1/w;

    return-object v0
.end method

.method public final getRegisters()Lw1/r;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    return-object v0
.end method

.method public final hasAddress()Z
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasResult()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    move-result v0

    return v0
.end method

.method public final identifierString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%04x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final listingString(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p3}, Lcom/android/dx/dex/code/DalvInsn;->listingString0(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    :goto_0
    const-string v1, ""

    invoke-static {p1, v0, v1, p3, p2}, Lb2/s;->h(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract listingString0(Z)Ljava/lang/String;
.end method

.method public final setAddress(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/android/dx/dex/code/DalvInsn;->address:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/code/DalvInsn;->position:Lw1/w;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/code/DalvInsn;->opcode:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    invoke-virtual {v2}, Lb2/f;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dx/dex/code/DalvInsn;->registers:Lw1/r;

    const/4 v3, 0x0

    const-string v4, " "

    const-string v5, ", "

    invoke-virtual {v2, v4, v5, v3}, Lb2/f;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->argString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMapper(Lz1/p;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz1/p;->c(Lw1/r;)Lw1/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/DalvInsn;->withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1
.end method

.method public abstract withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
.end method

.method public abstract writeTo(Lb2/a;)V
.end method
