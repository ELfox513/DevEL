.class public final Lcom/android/dx/dex/code/CstInsn;
.super Lcom/android/dx/dex/code/FixedSizeInsn;
.source "SourceFile"


# instance fields
.field private classIndex:I

.field private final constant:Lx1/a;

.field private index:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lx1/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lx1/a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constant == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lx1/a;

    invoke-interface {v0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstComment()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->hasIndex()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lx1/a;

    move-result-object v1

    invoke-virtual {v1}, Lx1/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lx1/a;

    instance-of v1, v0, Lx1/d0;

    if-eqz v1, :cond_0

    check-cast v0, Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassIndex()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstant()Lx1/a;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lx1/a;

    return-object v0
.end method

.method public getIndex()I
    .locals 3

    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index not yet set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lx1/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasClassIndex()Z
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIndex()Z
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setClassIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-gez v0, :cond_0

    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

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

.method public setIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-gez v0, :cond_0

    iput p1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lx1/a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lx1/a;)V

    iget p1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    :cond_0
    iget p1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1
    return-object v0
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    new-instance v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/dex/code/CstInsn;->constant:Lx1/a;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lx1/a;)V

    iget p1, p0, Lcom/android/dx/dex/code/CstInsn;->index:I

    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    :cond_0
    iget p1, p0, Lcom/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1
    return-object v0
.end method
