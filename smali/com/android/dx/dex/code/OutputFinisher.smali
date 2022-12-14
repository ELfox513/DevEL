.class public final Lcom/android/dx/dex/code/OutputFinisher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private hasAnyLocalInfo:Z

.field private hasAnyPositionInfo:Z

.field private insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramSize:I

.field private reservedCount:I

.field private reservedParameterCount:I

.field private final unreservedRegCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iput p3, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    iput-boolean p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    iput p4, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lx1/a;",
            ">;",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lx1/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/dx/dex/code/MultiCstInsn;

    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lx1/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalSnapshot;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lw1/s;

    move-result-object p1

    invoke-virtual {p1}, Lw1/s;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lw1/s;->z(I)Lw1/q;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lw1/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lw1/q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lw1/q;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lw1/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lx1/a;",
            ">;",
            "Lw1/q;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lw1/q;->z()Lw1/k;

    move-result-object v0

    invoke-virtual {v0}, Lw1/k;->f()Lx1/d0;

    move-result-object v1

    invoke-virtual {v0}, Lw1/k;->h()Lx1/d0;

    move-result-object v0

    invoke-virtual {p1}, Lw1/q;->getType()Ly1/c;

    move-result-object p1

    sget-object v2, Ly1/c;->C:Ly1/c;

    if-eq p1, v2, :cond_1

    invoke-static {p1}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Ly1/c;->K:Ly1/c;

    invoke-static {p1}, Lx1/e0;->C(Ly1/c;)Lx1/e0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private addReservedParameters(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->shiftParameters(I)V

    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    return-void
.end method

.method private addReservedRegisters(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->shiftAllRegisters(I)V

    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    return-void
.end method

.method private align64bits([Lcom/android/dx/dex/code/Dop;)V
    .locals 12

    :cond_0
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v7}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v7}, Lb2/f;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v7, v9}, Lw1/r;->A(I)Lw1/q;

    move-result-object v10

    invoke-virtual {v10}, Lw1/q;->H()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lw1/q;->B()I

    move-result v11

    if-lt v11, v0, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v10}, Lw1/q;->I()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v11, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    if-le v3, v4, :cond_8

    if-le v5, v6, :cond_8

    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    goto :goto_3

    :cond_8
    if-le v3, v4, :cond_9

    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    goto :goto_3

    :cond_9
    if-le v5, v6, :cond_b

    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    if-eqz v0, :cond_a

    if-le v4, v3, :cond_a

    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/android/dx/dex/code/Dop;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_b
    return-void
.end method

.method private assignAddresses()V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v3, v2}, Lcom/android/dx/dex/code/DalvInsn;->setAddress(I)V

    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assignAddressesAndFixBranches()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddresses()V

    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->fixBranches()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lx1/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lx1/a;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    :cond_0
    instance-of v1, v0, Lx1/x;

    if-eqz v1, :cond_1

    check-cast v0, Lx1/x;

    invoke-virtual {v0}, Lx1/x;->n()Lx1/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lx1/a;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1
    return-void
.end method

.method private static assignIndices(Lcom/android/dx/dex/code/MultiCstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lx1/a;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lx1/a;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/dx/dex/code/MultiCstInsn;->setIndex(II)V

    instance-of v2, v1, Lx1/x;

    if-eqz v2, :cond_0

    check-cast v1, Lx1/x;

    invoke-virtual {v1}, Lx1/x;->n()Lx1/e0;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lx1/a;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->setClassIndex(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I
    .locals 6

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    aget-object v4, p1, v2

    invoke-direct {p0, v3, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dx/dex/code/DalvInsn;->getMinimumRegisterRequirement(Ljava/util/BitSet;)I

    move-result v3

    if-le v3, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    aput-object v5, p1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;
    .locals 3

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getLowRegVersion()Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No expanded opcode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;
    .locals 2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/InsnFormat;->isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-boolean v0, v0, Lcom/android/dx/dex/DexOptions;->forceJumbo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-static {p2, v0}, Lcom/android/dx/dex/code/Dops;->getNextOrNull(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/Dop;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method private fixBranches()Z
    .locals 11

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    instance-of v4, v3, Lcom/android/dx/dex/code/TargetInsn;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Lcom/android/dx/dex/code/TargetInsn;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/dx/dex/code/InsnFormat;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v2

    const/16 v7, 0x28

    if-ne v2, v7, :cond_3

    invoke-direct {p0, v3, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/CodeAddress;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v7, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v6}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v8

    sget-object v9, Lw1/r;->a:Lw1/r;

    invoke-virtual {v6}, Lcom/android/dx/dex/code/TargetInsn;->getTarget()Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lcom/android/dx/dex/code/CodeAddress;)V

    iget-object v7, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    :goto_1
    const/4 v2, 0x1

    :goto_2
    add-int/2addr v1, v5

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return v2
.end method

.method private static hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 5

    instance-of v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lw1/s;

    move-result-object p0

    invoke-virtual {p0}, Lw1/s;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lw1/s;->z(I)Lw1/q;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lw1/q;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lw1/q;

    move-result-object p0

    invoke-static {p0}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lw1/q;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private static hasLocalInfo(Lw1/q;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lw1/q;->z()Lw1/k;

    move-result-object p0

    invoke-virtual {p0}, Lw1/k;->f()Lx1/d0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/dx/dex/code/Dop;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private massageInstructions([Lcom/android/dx/dex/code/Dop;)V
    .locals 5

    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method private performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/dx/dex/code/Dop;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    aget-object v6, p1, v3

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move-object v9, v7

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/dx/dex/code/DalvInsn;->expandedPrefix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v8

    invoke-virtual {v4, v7}, Lcom/android/dx/dex/code/DalvInsn;->expandedSuffix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v9

    invoke-virtual {v4, v7}, Lcom/android/dx/dex/code/DalvInsn;->expandedVersion(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v4

    move-object v7, v8

    :goto_1
    instance-of v8, v4, Lcom/android/dx/dex/code/CodeAddress;

    if-eqz v8, :cond_1

    move-object v8, v4

    check-cast v8, Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v8}, Lcom/android/dx/dex/code/CodeAddress;->getBindsClosely()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v7, v4, Lcom/android/dx/dex/code/ZeroSizeInsn;

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-eq v6, v5, :cond_5

    invoke-virtual {v4, v6}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v4

    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_6

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private reserveRegisters([Lcom/android/dx/dex/code/Dop;)Z
    .locals 7

    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I

    move-result v3

    if-lt v0, v3, :cond_1

    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    return v2

    :cond_1
    sub-int v0, v3, v0

    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/code/DalvInsn;

    instance-of v6, v5, Lcom/android/dx/dex/code/CodeAddress;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lcom/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    move v0, v3

    goto :goto_0
.end method

.method private shiftAllRegisters(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    instance-of v3, v2, Lcom/android/dx/dex/code/CodeAddress;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lcom/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shiftParameters(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    sub-int v2, v1, v2

    new-instance v3, Lz1/a;

    invoke-direct {v3, v1}, Lz1/a;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    const/4 v6, 0x1

    if-lt v5, v2, :cond_0

    add-int v7, v5, p1

    invoke-virtual {v3, v5, v7, v6}, Lz1/a;->e(III)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v5, v5, v6}, Lz1/a;->e(III)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_3

    iget-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/DalvInsn;

    instance-of v1, p1, Lcom/android/dx/dex/code/CodeAddress;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Lcom/android/dx/dex/code/DalvInsn;->withMapper(Lz1/p;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    invoke-virtual {v0}, Lw1/w;->a()I

    move-result v0

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/code/DalvInsn;

    instance-of v2, v1, Lcom/android/dx/dex/code/CstInsn;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/dx/dex/code/CstInsn;

    invoke-static {v1, p1}, Lcom/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/dx/dex/code/MultiCstInsn;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-static {v1, p1}, Lcom/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/android/dx/dex/code/MultiCstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public finishProcessingAndGetList()Lcom/android/dx/dex/code/DalvInsnList;
    .locals 3

    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/android/dx/dex/code/Dop;)Z

    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-boolean v1, v1, Lcom/android/dx/dex/DexOptions;->ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->align64bits([Lcom/android/dx/dex/code/Dop;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->massageInstructions([Lcom/android/dx/dex/code/Dop;)V

    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddressesAndFixBranches()V

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/dx/dex/code/DalvInsnList;->makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/DalvInsn;

    return-object p1
.end method

.method public getAllConstants()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lx1/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    invoke-static {v0, v2}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasAnyLocalInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    return v0
.end method

.method public hasAnyPositionInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    return v0
.end method

.method public insert(ILcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/TargetInsn;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "non-reversible instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few instructions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
