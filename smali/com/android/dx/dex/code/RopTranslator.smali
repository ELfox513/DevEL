.class public final Lcom/android/dx/dex/code/RopTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;,
        Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
    }
.end annotation


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final locals:Lw1/m;

.field private final method:Lw1/u;

.field private order:[I

.field private final output:Lcom/android/dx/dex/code/OutputCollector;

.field private final paramSize:I

.field private final paramsAreInOrder:Z

.field private final positionInfo:I

.field private final regCount:I

.field private final translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;


# direct methods
.method private constructor <init>(Lw1/u;ILw1/m;ILcom/android/dx/dex/DexOptions;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/dx/dex/code/RopTranslator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lw1/u;

    iput p2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    iput-object p3, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lw1/m;

    new-instance p2, Lcom/android/dx/dex/code/BlockAddresses;

    invoke-direct {p2, p1}, Lcom/android/dx/dex/code/BlockAddresses;-><init>(Lw1/u;)V

    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    iput p4, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    invoke-static {p1, p4}, Lcom/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lw1/u;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    mul-int/lit8 v4, v0, 0x3

    invoke-virtual {p1}, Lw1/c;->I()I

    move-result v1

    add-int/2addr v1, v4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lw1/m;->A()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_0
    move v3, v1

    invoke-virtual {p1}, Lw1/c;->K()I

    move-result p1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    move p2, p4

    :goto_0
    add-int v5, p1, p2

    iput v5, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    new-instance p1, Lcom/android/dx/dex/code/OutputCollector;

    move-object v1, p1

    move-object v2, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/dx/dex/code/OutputCollector;-><init>(Lcom/android/dx/dex/DexOptions;IIII)V

    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    if-eqz p3, :cond_2

    new-instance p2, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;Lw1/m;)V

    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    invoke-direct {p2, p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V

    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    :goto_1
    return-void
.end method

.method public static synthetic a(Lw1/h;)Lw1/r;
    .locals 0

    invoke-static {p0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lw1/h;)Lw1/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;
    .locals 0

    iget-object p0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/dx/dex/code/RopTranslator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    return p0
.end method

.method private static calculateParamsAreInOrder(Lw1/u;I)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    invoke-virtual {p0}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lw1/c;->K()I

    move-result v0

    invoke-virtual {p0}, Lw1/u;->b()Lw1/c;

    move-result-object p0

    new-instance v3, Lcom/android/dx/dex/code/RopTranslator$1;

    invoke-direct {v3, v1, v0, p1}, Lcom/android/dx/dex/code/RopTranslator$1;-><init>([ZII)V

    invoke-virtual {p0, v3}, Lw1/c;->E(Lw1/h$b;)V

    aget-boolean p0, v1, v2

    return p0
.end method

.method public static synthetic d(Lcom/android/dx/dex/code/RopTranslator;)I
    .locals 0

    iget p0, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    return p0
.end method

.method public static synthetic e(Lcom/android/dx/dex/code/RopTranslator;)I
    .locals 0

    iget p0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    return p0
.end method

.method public static synthetic f(Lcom/android/dx/dex/code/RopTranslator;)Lw1/u;
    .locals 0

    iget-object p0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lw1/u;

    return-object p0
.end method

.method public static synthetic g(Lw1/h;Lw1/q;)Lw1/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lw1/h;Lw1/q;)Lw1/r;

    move-result-object p0

    return-object p0
.end method

.method private static getRegs(Lw1/h;)Lw1/r;
    .locals 1

    invoke-virtual {p0}, Lw1/h;->k()Lw1/q;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lw1/h;Lw1/q;)Lw1/r;

    move-result-object p0

    return-object p0
.end method

.method private static getRegs(Lw1/h;Lw1/q;)Lw1/r;
    .locals 3

    invoke-virtual {p0}, Lw1/h;->m()Lw1/r;

    move-result-object v0

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object p0

    invoke-virtual {p0}, Lw1/t;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v0

    invoke-static {p0, v0}, Lw1/r;->E(Lw1/q;Lw1/q;)Lw1/r;

    move-result-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lw1/r;->J(Lw1/q;)Lw1/r;

    move-result-object p0

    return-object p0
.end method

.method private outputBlock(Lw1/b;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lw1/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lw1/m;->C(Lw1/b;)Lw1/s;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    new-instance v3, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lw1/w;Lw1/s;)V

    invoke-virtual {v2, v3}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->setBlock(Lw1/b;Lcom/android/dx/dex/code/CodeAddress;)V

    invoke-virtual {p1}, Lw1/b;->d()Lw1/i;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    invoke-virtual {v0, v1}, Lw1/i;->z(Lw1/h$b;)V

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p1}, Lw1/b;->f()I

    move-result v0

    invoke-virtual {p1}, Lw1/b;->e()Lw1/h;

    move-result-object v1

    if-ltz v0, :cond_2

    if-eq v0, p2, :cond_2

    invoke-virtual {v1}, Lw1/h;->i()Lw1/t;

    move-result-object v2

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lw1/b;->g()I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    const/4 p2, 0x1

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/dx/dex/code/OutputCollector;->reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/dx/dex/code/TargetInsn;

    sget-object p2, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v1}, Lw1/h;->j()Lw1/w;

    move-result-object v1

    sget-object v2, Lw1/r;->a:Lw1/r;

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v3, v0}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lcom/android/dx/dex/code/CodeAddress;)V

    iget-object p2, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {p2, p1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private outputInstructions()V
    .locals 6

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lw1/u;

    invoke-virtual {v0}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-ne v4, v5, :cond_0

    const/4 v5, -0x1

    goto :goto_1

    :cond_0
    aget v5, v1, v4

    :goto_1
    aget v3, v1, v3

    invoke-virtual {v0, v3}, Lw1/c;->L(I)Lw1/b;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/dx/dex/code/RopTranslator;->outputBlock(Lw1/b;I)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pickOrder()V
    .locals 14

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lw1/u;

    invoke-virtual {v0}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    invoke-virtual {v0}, Lb2/m;->z()I

    move-result v2

    invoke-static {v2}, Lb2/c;->i(I)[I

    move-result-object v3

    invoke-static {v2}, Lb2/c;->i(I)[I

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {v0, v5}, Lw1/c;->F(I)Lw1/b;

    move-result-object v6

    invoke-virtual {v6}, Lw1/b;->a()I

    move-result v6

    invoke-static {v3, v6}, Lb2/c;->k([II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v1, [I

    iget-object v6, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lw1/u;

    invoke-virtual {v6}, Lw1/u;->c()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    :goto_2
    iget-object v9, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lw1/u;

    invoke-virtual {v9, v6}, Lw1/u;->d(I)Lb2/j;

    move-result-object v9

    invoke-virtual {v9}, Lb2/j;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_4

    invoke-virtual {v9, v11}, Lb2/j;->B(I)I

    move-result v12

    invoke-static {v2, v12}, Lb2/c;->f([II)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_5

    :cond_1
    invoke-static {v3, v12}, Lb2/c;->f([II)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v12}, Lw1/c;->L(I)Lw1/b;

    move-result-object v13

    invoke-virtual {v13}, Lw1/b;->f()I

    move-result v13

    if-ne v13, v6, :cond_3

    invoke-static {v2, v12}, Lb2/c;->k([II)V

    move v6, v12

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    if-eq v6, v8, :cond_a

    invoke-static {v3, v6}, Lb2/c;->c([II)V

    invoke-static {v2, v6}, Lb2/c;->c([II)V

    aput v6, v5, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v6}, Lw1/c;->L(I)Lw1/b;

    move-result-object v6

    invoke-virtual {v0, v6}, Lw1/c;->M(Lw1/b;)Lw1/b;

    move-result-object v9

    if-nez v9, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v9}, Lw1/b;->a()I

    move-result v9

    invoke-virtual {v6}, Lw1/b;->f()I

    move-result v10

    invoke-static {v3, v9}, Lb2/c;->f([II)Z

    move-result v11

    if-eqz v11, :cond_6

    move v6, v9

    goto :goto_5

    :cond_6
    if-eq v10, v9, :cond_7

    if-ltz v10, :cond_7

    invoke-static {v3, v10}, Lb2/c;->f([II)Z

    move-result v9

    if-eqz v9, :cond_7

    move v6, v10

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lw1/b;->h()Lb2/j;

    move-result-object v6

    invoke-virtual {v6}, Lb2/j;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_9

    invoke-virtual {v6, v10}, Lb2/j;->B(I)I

    move-result v11

    invoke-static {v3, v11}, Lb2/c;->f([II)Z

    move-result v12

    if-eqz v12, :cond_8

    move v6, v11

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, -0x1

    goto :goto_5

    :cond_a
    :goto_7
    invoke-static {v3, v4}, Lb2/c;->e([II)I

    move-result v6

    goto/16 :goto_1

    :cond_b
    if-ne v7, v1, :cond_c

    iput-object v5, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    return-void

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public static translate(Lw1/u;ILw1/m;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;
    .locals 7

    new-instance v6, Lcom/android/dx/dex/code/RopTranslator;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/code/RopTranslator;-><init>(Lw1/u;ILw1/m;ILcom/android/dx/dex/DexOptions;)V

    invoke-direct {v6}, Lcom/android/dx/dex/code/RopTranslator;->translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;

    move-result-object p0

    return-object p0
.end method

.method private translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;
    .locals 4

    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->pickOrder()V

    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->outputInstructions()V

    new-instance v0, Lcom/android/dx/dex/code/StdCatchBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lw1/u;

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/dex/code/StdCatchBuilder;-><init>(Lw1/u;[ILcom/android/dx/dex/code/BlockAddresses;)V

    new-instance v1, Lcom/android/dx/dex/code/DalvCode;

    iget v2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v3}, Lcom/android/dx/dex/code/OutputCollector;->getFinisher()Lcom/android/dx/dex/code/OutputFinisher;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/dx/dex/code/DalvCode;-><init>(ILcom/android/dx/dex/code/OutputFinisher;Lcom/android/dx/dex/code/CatchBuilder;)V

    return-object v1
.end method
