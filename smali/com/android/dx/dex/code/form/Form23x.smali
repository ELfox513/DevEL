.class public final Lcom/android/dx/dex/code/form/Form23x;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "SourceFile"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dx/dex/code/form/Form23x;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form23x;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form23x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

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

    const/4 v0, 0x2

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 3

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    invoke-static {v2}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    invoke-static {v2}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-static {p1}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->N()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    instance-of p1, p1, Lcom/android/dx/dex/code/SimpleInsn;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    invoke-virtual {v0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-static {p1}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-static {p1}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-static {p1}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInByte(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeTo(Lb2/a;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/dx/dex/code/InsnFormat;->codeUnit(II)S

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/dx/dex/code/InsnFormat;->write(Lb2/a;SS)V

    return-void
.end method
