.class Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranslationVisitor"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/dx/dex/code/RopTranslator;

.field private block:Lw1/b;

.field private lastAddress:Lcom/android/dx/dex/code/CodeAddress;

.field private final output:Lcom/android/dx/dex/code/OutputCollector;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->a:Lcom/android/dx/dex/code/RopTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    return-void
.end method

.method private getNextMoveResultPseudo()Lw1/q;
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lw1/b;

    invoke-virtual {v0}, Lw1/b;->f()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->a:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v2}, Lcom/android/dx/dex/code/RopTranslator;->f(Lcom/android/dx/dex/code/RopTranslator;)Lw1/u;

    move-result-object v2

    invoke-virtual {v2}, Lw1/u;->b()Lw1/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw1/c;->L(I)Lw1/b;

    move-result-object v0

    invoke-virtual {v0}, Lw1/b;->d()Lw1/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lw1/i;->A(I)Lw1/h;

    move-result-object v0

    invoke-virtual {v0}, Lw1/h;->i()Lw1/t;

    move-result-object v2

    invoke-virtual {v2}, Lw1/t;->d()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lw1/h;->k()Lw1/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOutput(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->addSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public getPrevNonSpecialInsn()Lcom/android/dx/dex/code/DalvInsn;
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/OutputCollector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/OutputCollector;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBlock(Lw1/b;Lcom/android/dx/dex/code/CodeAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lw1/b;

    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    return-void
.end method

.method public visitFillArrayDataInsn(Lw1/g;)V
    .locals 6

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v0

    invoke-virtual {p1}, Lw1/g;->t()Lx1/a;

    move-result-object v1

    invoke-virtual {p1}, Lw1/g;->u()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v3

    invoke-virtual {v3}, Lw1/t;->b()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v3, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;)V

    new-instance v4, Lcom/android/dx/dex/code/ArrayData;

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v4, v0, v5, v2, v1}, Lcom/android/dx/dex/code/ArrayData;-><init>(Lw1/w;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lx1/a;)V

    new-instance v1, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->FILL_ARRAY_DATA:Lcom/android/dx/dex/code/Dop;

    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->a(Lw1/h;)Lw1/r;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lcom/android/dx/dex/code/CodeAddress;)V

    iget-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    new-instance p1, Lcom/android/dx/dex/code/OddSpacer;

    invoke-direct {p1, v0}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lw1/w;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitInvokePolymorphicInsn(Lw1/j;)V
    .locals 6

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lw1/h;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v2

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lw1/t;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p1}, Lw1/h;->m()Lw1/r;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lx1/a;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lw1/j;->w()Lx1/z;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lw1/j;->u()Lx1/b0;

    move-result-object p1

    aput-object p1, v3, v4

    new-instance p1, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;[Lx1/a;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected call-like operation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BRANCH_THROW got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitPlainCstInsn(Lw1/n;)V
    .locals 5

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lw1/h;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v2

    invoke-virtual {v2}, Lw1/t;->d()I

    move-result v3

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->a:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v2}, Lcom/android/dx/dex/code/RopTranslator;->c(Lcom/android/dx/dex/code/RopTranslator;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lw1/h;->k()Lw1/q;

    move-result-object v2

    invoke-virtual {p1}, Lw1/d;->t()Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/p;

    invoke-virtual {p1}, Lx1/p;->B()I

    move-result p1

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->a:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v3}, Lcom/android/dx/dex/code/RopTranslator;->d(Lcom/android/dx/dex/code/RopTranslator;)I

    move-result v3

    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->a:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v4}, Lcom/android/dx/dex/code/RopTranslator;->e(Lcom/android/dx/dex/code/RopTranslator;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-virtual {v2}, Lw1/q;->getType()Ly1/c;

    move-result-object p1

    invoke-static {v3, p1}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object p1

    new-instance v3, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-static {v2, p1}, Lw1/r;->E(Lw1/q;Lw1/q;)Lw1/r;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->a(Lw1/h;)Lw1/r;

    move-result-object v2

    new-instance v3, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lw1/d;->t()Lx1/a;

    move-result-object p1

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lx1/a;)V

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitPlainInsn(Lw1/o;)V
    .locals 5

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v1

    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lw1/h;)Lcom/android/dx/dex/code/Dop;

    move-result-object v2

    invoke-virtual {v0}, Lw1/t;->b()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lw1/b;

    invoke-virtual {v0}, Lw1/b;->h()Lb2/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lb2/j;->B(I)I

    move-result v0

    new-instance v3, Lcom/android/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->a(Lw1/h;)Lw1/r;

    move-result-object p1

    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->a:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v4}, Lcom/android/dx/dex/code/RopTranslator;->b(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-direct {v3, v2, v1, p1, v0}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lcom/android/dx/dex/code/CodeAddress;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v3, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->a(Lw1/h;)Lw1/r;

    move-result-object p1

    invoke-direct {v3, v2, v1, p1}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public visitSwitchInsn(Lw1/x;)V
    .locals 9

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v0

    invoke-virtual {p1}, Lw1/x;->t()Lb2/j;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lw1/b;

    invoke-virtual {v2}, Lw1/b;->h()Lb2/j;

    move-result-object v2

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v3

    invoke-virtual {v2}, Lb2/j;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lw1/b;

    invoke-virtual {v5}, Lw1/b;->f()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lb2/j;->B(I)I

    move-result v4

    if-ne v5, v4, :cond_2

    new-array v4, v3, [Lcom/android/dx/dex/code/CodeAddress;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Lb2/j;->B(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->a:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v8}, Lcom/android/dx/dex/code/RopTranslator;->b(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v2, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;)V

    new-instance v3, Lcom/android/dx/dex/code/CodeAddress;

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v5}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;Z)V

    new-instance v5, Lcom/android/dx/dex/code/SwitchData;

    invoke-direct {v5, v0, v3, v1, v4}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lw1/w;Lcom/android/dx/dex/code/CodeAddress;Lb2/j;[Lcom/android/dx/dex/code/CodeAddress;)V

    invoke-virtual {v5}, Lcom/android/dx/dex/code/SwitchData;->isPacked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/dx/dex/code/Dops;->SPARSE_SWITCH:Lcom/android/dx/dex/code/Dop;

    :goto_1
    new-instance v4, Lcom/android/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->a(Lw1/h;)Lw1/r;

    move-result-object p1

    invoke-direct {v4, v1, v0, p1, v2}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lcom/android/dx/dex/code/CodeAddress;)V

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    new-instance p1, Lcom/android/dx/dex/code/OddSpacer;

    invoke-direct {p1, v0}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lw1/w;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {p0, v5}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public visitThrowingCstInsn(Lw1/y;)V
    .locals 10

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lw1/h;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v2

    invoke-virtual {p1}, Lw1/d;->t()Lx1/a;

    move-result-object v3

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    invoke-virtual {v2}, Lw1/t;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lw1/h;->m()Lw1/r;

    move-result-object p1

    new-instance v2, Lcom/android/dx/dex/code/CstInsn;

    invoke-direct {v2, v1, v0, p1, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lx1/a;)V

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lw1/q;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/dx/dex/code/RopTranslator;->g(Lw1/h;Lw1/q;)Lw1/r;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lw1/t;->d()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ne v6, v4, :cond_7

    invoke-virtual {v2}, Lw1/t;->d()I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_4

    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    new-instance p1, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-direct {p1, v1, v0, v5}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/android/dx/dex/code/CstInsn;

    invoke-direct {p1, v1, v0, v5, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;Lx1/a;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getPrevNonSpecialInsn()Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_5

    const/16 v3, 0x8

    if-eq v1, v3, :cond_5

    const/16 v3, 0x9

    if-ne v1, v3, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    if-le v1, v8, :cond_6

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v1

    invoke-virtual {v1, v7}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v2

    invoke-virtual {v2, v8}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    if-ne v1, v2, :cond_6

    new-instance v1, Lcom/android/dx/dex/code/SimpleInsn;

    sget-object v2, Lcom/android/dx/dex/code/Dops;->NOP:Lcom/android/dx/dex/code/Dop;

    sget-object v3, Lw1/r;->a:Lw1/r;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    :goto_4
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BRANCH_THROW got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visitThrowingInsn(Lw1/z;)V
    .locals 5

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object v0

    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lw1/h;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v2

    invoke-virtual {v2}, Lw1/t;->b()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lw1/q;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    move-result v3

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    new-instance v3, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-static {p1, v2}, Lcom/android/dx/dex/code/RopTranslator;->g(Lw1/h;Lw1/q;)Lw1/r;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
