.class public final Lcom/android/dx/dex/code/MultiCstInsn;
.super Lcom/android/dx/dex/code/FixedSizeInsn;
.source "SourceFile"


# static fields
.field private static final NOT_SET:I = -0x1


# instance fields
.field private classIndex:I

.field private final constants:[Lx1/a;

.field private final index:[I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;[Lx1/a;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    if-eqz p4, :cond_2

    iput-object p4, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    array-length p3, p2

    const/4 v0, -0x1

    if-ge p1, p3, :cond_1

    aget-object p3, p4, p1

    if-eqz p3, :cond_0

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constants[i] == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constants == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private constructor <init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;[Lx1/a;[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    iput-object p4, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    iput-object p5, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    iput p6, p0, Lcom/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return-void
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstComment()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->hasIndex(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lx1/a;

    move-result-object v2

    invoke-virtual {v2}, Lx1/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_2

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/MultiCstInsn;->argString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/dx/dex/code/MultiCstInsn;->hasClassIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstant(I)Lx1/a;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getIndex(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/MultiCstInsn;->hasIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index not yet set for constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberOfConstants()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    array-length v0, v0

    return v0
.end method

.method public hasClassIndex()Z
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->classIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIndex(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setClassIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/MultiCstInsn;->hasClassIndex()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndex(II)V
    .locals 1

    if-ltz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/MultiCstInsn;->hasIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    aput p2, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index already set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 8

    new-instance v7, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    iget-object v5, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    iget v6, p0, Lcom/android/dx/dex/code/MultiCstInsn;->classIndex:I

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;[Lx1/a;[II)V

    return-object v7
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 8

    new-instance v7, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dx/dex/code/MultiCstInsn;->constants:[Lx1/a;

    iget-object v5, p0, Lcom/android/dx/dex/code/MultiCstInsn;->index:[I

    iget v6, p0, Lcom/android/dx/dex/code/MultiCstInsn;->classIndex:I

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;[Lx1/a;[II)V

    return-object v7
.end method
