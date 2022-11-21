.class public final Lcom/android/dx/dex/code/form/Form45cc;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "SourceFile"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/dx/dex/code/form/Form45cc;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form45cc;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form45cc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    return-void
.end method

.method private static explicitize(Lw1/r;)Lw1/r;
    .locals 7

    invoke-static {p0}, Lcom/android/dx/dex/code/form/Form45cc;->wordCount(Lw1/r;)I

    move-result v0

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lw1/r;

    invoke-direct {v2, v0}, Lw1/r;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lw1/r;->F(ILw1/q;)V

    invoke-virtual {v4}, Lw1/q;->x()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    sget-object v6, Ly1/c;->B:Ly1/c;

    invoke-static {v4, v6}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lw1/r;->F(ILw1/q;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    return-object v2
.end method

.method private static wordCount(Lw1/r;)I
    .locals 7

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v5

    invoke-virtual {v5}, Lw1/q;->x()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v6

    invoke-virtual {v5}, Lw1/q;->x()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gt v4, v1, :cond_3

    move v2, v4

    :cond_3
    return v2
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 5

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v4

    invoke-virtual {v3}, Lw1/q;->x()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInNibble(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form45cc;->explicitize(Lw1/r;)Lw1/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/dx/dex/code/InsnFormat;->regListString(Lw1/r;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .locals 4

    instance-of v0, p1, Lcom/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v3

    invoke-static {v0}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/dx/dex/code/InsnFormat;->unsignedFitsInShort(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lx1/a;

    move-result-object v0

    instance-of v0, v0, Lx1/z;

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lx1/a;

    move-result-object v0

    instance-of v0, v0, Lx1/b0;

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form45cc;->wordCount(Lw1/r;)I

    move-result p1

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_0
    return v1
.end method

.method public writeTo(Lb2/a;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 10

    move-object v0, p2

    check-cast v0, Lcom/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    int-to-short v2, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form45cc;->explicitize(Lw1/r;)Lw1/r;

    move-result-object v4

    invoke-virtual {v4}, Lb2/f;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v6

    invoke-virtual {v6}, Lw1/q;->B()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-le v5, v3, :cond_1

    invoke-virtual {v4, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v7, 0x2

    if-le v5, v7, :cond_2

    invoke-virtual {v4, v7}, Lw1/r;->A(I)Lw1/q;

    move-result-object v7

    invoke-virtual {v7}, Lw1/q;->B()I

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x3

    if-le v5, v8, :cond_3

    invoke-virtual {v4, v8}, Lw1/r;->A(I)Lw1/q;

    move-result-object v8

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x4

    if-le v5, v9, :cond_4

    invoke-virtual {v4, v9}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    :cond_4
    invoke-static {v1, v5}, Lcom/android/dx/dex/code/InsnFormat;->makeByte(II)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/dx/dex/code/InsnFormat;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result p2

    invoke-static {v6, v3, v7, v8}, Lcom/android/dx/dex/code/InsnFormat;->codeUnit(IIII)S

    move-result v1

    invoke-static {p1, p2, v2, v1, v0}, Lcom/android/dx/dex/code/InsnFormat;->write(Lb2/a;SSSS)V

    return-void
.end method
