.class public final Lcom/android/dx/dex/code/form/Form3rc;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "SourceFile"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dx/dex/code/form/Form3rc;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form3rc;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form3rc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/code/InsnFormat;->regRangeString(Lw1/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lx1/a;

    move-result-object v2

    invoke-static {v0}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, v2, Lx1/z;

    if-nez v0, :cond_2

    instance-of v0, v2, Lx1/e0;

    if-nez v0, :cond_2

    instance-of v0, v2, Lx1/j;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/dx/dex/code/InsnFormat;->isRegListSequential(Lw1/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-static {v0}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lw1/r;->B()I

    move-result p1

    invoke-static {p1}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public writeTo(Lb2/a;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v3

    :goto_0
    invoke-virtual {v0}, Lw1/r;->B()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    int-to-short v0, v1

    int-to-short v1, v3

    invoke-static {p1, p2, v0, v1}, Lcom/android/dx/dex/code/InsnFormat;->write(Lb2/a;SSS)V

    return-void
.end method
