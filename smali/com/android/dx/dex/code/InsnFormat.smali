.class public abstract Lcom/android/dx/dex/code/InsnFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_EXTENDED_OPCODES:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argIndex(Lcom/android/dx/dex/code/DalvInsn;)I
    .locals 1

    check-cast p0, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lx1/a;

    move-result-object p0

    check-cast p0, Lx1/p;

    invoke-virtual {p0}, Lx1/p;->B()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus insn"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static branchComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lcom/android/dx/dex/code/TargetInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result p0

    int-to-short v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lb2/g;->c(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lb2/g;->d(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static branchString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lcom/android/dx/dex/code/TargetInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetAddress()I

    move-result p0

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static codeUnit(II)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static codeUnit(IIII)S
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_3

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_2

    and-int/lit8 v0, p2, 0xf

    if-ne v0, p2, :cond_1

    and-int/lit8 v0, p3, 0xf

    if-ne v0, p3, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xc

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n3 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n2 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n1 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n0 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isRegListSequential(Lw1/r;)Z
    .locals 7

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lw1/r;->A(I)Lw1/q;

    move-result-object v5

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v6

    if-eq v6, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {v5}, Lw1/q;->x()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static literalBitsComment(Lx1/v;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lx1/u;

    if-eqz v1, :cond_0

    check-cast p0, Lx1/u;

    invoke-virtual {p0}, Lx1/u;->A()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lx1/v;->z()I

    move-result p0

    int-to-long v1, p0

    :goto_0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_5

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4

    const/16 p0, 0x10

    if-eq p1, p0, :cond_3

    const/16 p0, 0x20

    if-eq p1, p0, :cond_2

    const/16 p0, 0x40

    if-ne p1, p0, :cond_1

    invoke-static {v1, v2}, Lb2/g;->k(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    long-to-int p0, v1

    invoke-static {p0}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    invoke-static {p0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    long-to-int p0, v1

    invoke-static {p0}, Lb2/g;->f(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    long-to-int p0, v1

    invoke-static {p0}, Lb2/g;->l(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static literalBitsString(Lx1/v;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lx1/s;

    if-eqz v1, :cond_0

    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lx1/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeByte(II)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_1

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;)S
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result p0

    const/16 v0, 0x100

    if-lt p0, v0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "opcode out of range 0..65535"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S
    .locals 1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result p0

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "opcode out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static regListString(Lw1/r;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static regRangeString(Lw1/r;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->x()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Lw1/q;->R(I)Lw1/q;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p0

    invoke-virtual {p0}, Lw1/q;->N()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lw1/q;->N()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p0

    invoke-virtual {p0}, Lw1/q;->N()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static signedFitsInByte(I)Z
    .locals 1

    int-to-byte v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static signedFitsInNibble(I)Z
    .locals 1

    const/4 v0, -0x8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static signedFitsInShort(I)Z
    .locals 1

    int-to-short v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unsignedFitsInByte(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unsignedFitsInNibble(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unsignedFitsInShort(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static write(Lb2/a;S)V
    .locals 0

    invoke-interface {p0, p1}, Lb2/q;->writeShort(I)V

    return-void
.end method

.method public static write(Lb2/a;SI)V
    .locals 1

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2}, Lcom/android/dx/dex/code/InsnFormat;->write(Lb2/a;SSS)V

    return-void
.end method

.method public static write(Lb2/a;SIS)V
    .locals 1

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/dx/dex/code/InsnFormat;->write(Lb2/a;SSSS)V

    return-void
.end method

.method public static write(Lb2/a;SISS)V
    .locals 6

    int-to-short v2, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short v3, p2

    move-object v0, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/dx/dex/code/InsnFormat;->write(Lb2/a;SSSSS)V

    return-void
.end method

.method public static write(Lb2/a;SJ)V
    .locals 7

    long-to-int v0, p2

    int-to-short v3, v0

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v1, v0

    int-to-short v4, v1

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v1, v0

    int-to-short v5, v1

    const/16 v0, 0x30

    shr-long/2addr p2, v0

    long-to-int p3, p2

    int-to-short v6, p3

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/dx/dex/code/InsnFormat;->write(Lb2/a;SSSSS)V

    return-void
.end method

.method public static write(Lb2/a;SS)V
    .locals 0

    invoke-interface {p0, p1}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lb2/q;->writeShort(I)V

    return-void
.end method

.method public static write(Lb2/a;SSS)V
    .locals 0

    invoke-interface {p0, p1}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p3}, Lb2/q;->writeShort(I)V

    return-void
.end method

.method public static write(Lb2/a;SSSS)V
    .locals 0

    invoke-interface {p0, p1}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p3}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p4}, Lb2/q;->writeShort(I)V

    return-void
.end method

.method public static write(Lb2/a;SSSSS)V
    .locals 0

    invoke-interface {p0, p1}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p2}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p3}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p4}, Lb2/q;->writeShort(I)V

    invoke-interface {p0, p5}, Lb2/q;->writeShort(I)V

    return-void
.end method


# virtual methods
.method public branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract codeSize()I
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 0

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    return-object p1
.end method

.method public abstract insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
.end method

.method public abstract insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
.end method

.method public abstract isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
.end method

.method public final listingString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/InsnFormat;->insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/InsnFormat;->insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " // "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract writeTo(Lb2/a;Lcom/android/dx/dex/code/DalvInsn;)V
.end method
