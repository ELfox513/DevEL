.class public final Lcom/android/dx/dex/file/DebugInfoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private address:I

.field private annotateTo:Lb2/a;

.field private final codeSize:I

.field private debugPrint:Ljava/io/PrintWriter;

.field private final desc:Ly1/a;

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

.field private line:I

.field private final locals:Lcom/android/dx/dex/code/LocalList;

.field private final output:Lb2/e;

.field private final positions:Lcom/android/dx/dex/code/PositionList;

.field private prefix:Ljava/lang/String;

.field private final regSize:I

.field private shouldConsume:Z


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;Lcom/android/dx/dex/file/DexFile;IIZLx1/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    iput-object p2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {p7}, Lx1/e;->z()Ly1/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Ly1/a;

    iput-boolean p6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    iput p4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    iput p5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    new-instance p1, Lb2/e;

    invoke-direct {p1}, Lb2/e;-><init>()V

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    new-array p1, p5, [Lcom/android/dx/dex/code/LocalList$Entry;

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    return-void
.end method

.method private annotate(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private buildSortedPositions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/android/dx/dex/code/PositionList;

    invoke-virtual {v3, v1}, Lcom/android/dx/dex/code/PositionList;->get(I)Lcom/android/dx/dex/code/PositionList$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoEncoder$1;

    invoke-direct {v0, p0}, Lcom/android/dx/dex/file/DebugInfoEncoder$1;-><init>(Lcom/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private static computeOpcode(II)I
    .locals 2

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0xf

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameter out of range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private convert0()[B
    .locals 10

    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->buildSortedPositions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->extractMethodArguments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lb2/e;->writeByte(I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%04x: prologue end"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v3}, Lb2/f;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalsAtAddress(I)I

    move-result v2

    invoke-direct {p0, v4, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPositionsAtAddress(ILjava/util/ArrayList;)I

    move-result v4

    const v5, 0x7fffffff

    if-ge v2, v3, :cond_2

    iget-object v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v6, v2}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v6

    goto :goto_1

    :cond_2
    const v6, 0x7fffffff

    :goto_1
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v7}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v7

    goto :goto_2

    :cond_3
    const v7, 0x7fffffff

    :goto_2
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v5, :cond_4

    goto :goto_3

    :cond_4
    iget v9, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    if-ne v8, v9, :cond_5

    if-ne v6, v5, :cond_5

    if-ne v7, v5, :cond_5

    :goto_3
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitEndSequence()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lb2/e;->r()[B

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v8, v7, :cond_6

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v4}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V

    move v4, v5

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int/2addr v8, v5

    invoke-direct {p0, v8}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    goto :goto_0
.end method

.method private emitAdvanceLine(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lb2/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lb2/e;->writeByte(I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v1, p1}, Lb2/e;->u(I)I

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {p1}, Lb2/e;->a()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "line = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitAdvancePc(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lb2/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lb2/e;->writeByte(I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v1, p1}, Lb2/e;->h(I)I

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {p1}, Lb2/e;->a()I

    move-result p1

    sub-int/2addr p1, v0

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%04x: advance pc"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitEndSequence()V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb2/e;->writeByte(I)V

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v3}, Lb2/e;->a()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lw1/w;

    move-result-object p1

    invoke-virtual {p1}, Lw1/w;->a()I

    move-result p1

    iput p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    :cond_2
    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {p1, v4}, Lb2/e;->h(I)I

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {p1}, Lb2/e;->a()I

    move-result p1

    sub-int/2addr p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line_start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result p1

    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Ly1/a;

    invoke-virtual {v3}, Ly1/a;->l()Ly1/b;

    move-result-object v3

    invoke-virtual {v3}, Lb2/f;->size()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    if-nez v5, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v7

    if-ne p1, v7, :cond_4

    iget-object v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    aput-object v6, v5, p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    :cond_6
    iget-object v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v5}, Lb2/e;->a()I

    move-result v5

    iget-object v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v6, v4}, Lb2/e;->h(I)I

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v6}, Lb2/e;->a()I

    move-result v6

    sub-int/2addr v6, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v5, "parameters_size: %04x"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_f

    invoke-virtual {v3, v2}, Ly1/b;->A(I)Ly1/c;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v6}, Lb2/e;->a()I

    move-result v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {v8}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v10

    if-ne p1, v10, :cond_8

    invoke-virtual {v8}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lx1/d0;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-direct {p0, v9}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lx1/d0;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lx1/d0;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lx1/d0;)V

    :goto_3
    iget-object v7, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    aput-object v8, v7, p1

    goto :goto_4

    :cond_a
    move-object v8, v9

    :goto_4
    if-nez v8, :cond_b

    invoke-direct {p0, v9}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lx1/d0;)V

    :cond_b
    if-eqz v0, :cond_e

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lx1/d0;

    move-result-object v7

    if-eqz v7, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lx1/d0;

    move-result-object v7

    invoke-virtual {v7}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_d
    :goto_5
    const-string v7, "<unnamed>"

    :goto_6
    iget-object v8, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v8}, Lb2/e;->a()I

    move-result v8

    sub-int/2addr v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parameter "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_e
    invoke-virtual {v5}, Ly1/c;->n()I

    move-result v5

    add-int/2addr p1, v5

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_f
    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_12

    aget-object v0, p1, v1

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lx1/d0;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V

    :cond_11
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return-void
.end method

.method private emitLocalEnd(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lb2/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lb2/e;->writeByte(I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v2

    invoke-virtual {v1, v2}, Lb2/e;->h(I)I

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v1}, Lb2/e;->a()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: -local %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalRestart(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lb2/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lb2/e;->writeByte(I)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v1}, Lb2/e;->a()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: +local restart %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalStart(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lx1/d0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lb2/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lb2/e;->writeByte(I)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lx1/d0;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lx1/d0;)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lx1/e0;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lx1/e0;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v1}, Lb2/e;->a()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: +local %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private emitLocalStartExtended(Lcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lb2/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lb2/e;->writeByte(I)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lx1/d0;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lx1/d0;)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lx1/e0;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lx1/e0;)V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lx1/d0;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lx1/d0;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v1}, Lb2/e;->a()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%04x: +localx %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalsAtAddress(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_5

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v1

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/android/dx/dex/code/LocalList$Entry;

    aget-object v4, v3, v1

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    aput-object p1, v3, v1

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalRestart(Lcom/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalStart(Lcom/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v1

    sget-object v3, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-eq v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitLocalEnd(Lcom/android/dx/dex/code/LocalList$Entry;)V

    :cond_4
    :goto_1
    move p1, v2

    goto :goto_0

    :cond_5
    return p1
.end method

.method private emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lw1/w;

    move-result-object v0

    invoke-virtual {v0}, Lw1/w;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p1

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_6

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v1

    and-int/lit16 v3, v1, -0x100

    if-lez v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    invoke-static {v0, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v1

    and-int/lit16 p1, v1, -0x100

    if-lez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    invoke-static {v2, v2}, Lcom/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v3, v1}, Lb2/e;->writeByte(I)V

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%04x: line %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Position entries must be in ascending address order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private emitPositionsAtAddress(ILjava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/PositionList$Entry;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v1

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, p1}, Lcom/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/android/dx/dex/code/PositionList$Entry;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private emitStringIndex(Lx1/d0;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lx1/d0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lb2/e;->h(I)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb2/e;->h(I)I

    :goto_1
    return-void
.end method

.method private emitTypeIndex(Lx1/e0;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/android/dx/dex/file/DexFile;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lx1/e0;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lb2/e;->h(I)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb2/e;->h(I)I

    :goto_1
    return-void
.end method

.method private emitUnsignedLeb128(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->output:Lb2/e;

    invoke-virtual {v0, p1}, Lb2/e;->h(I)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed value where unsigned required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private entryAnnotationString(Lcom/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getName()Lx1/d0;

    move-result-object v2

    const-string v3, "null"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getType()Lx1/e0;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getSignature()Lx1/d0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractMethodArguments()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Ly1/a;

    invoke-virtual {v1}, Ly1/a;->l()Ly1/b;

    move-result-object v1

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget-object v3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v3}, Lb2/f;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/android/dx/dex/code/LocalList;

    invoke-virtual {v5, v4}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v6

    if-ge v6, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v6, v1

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/dx/dex/file/DebugInfoEncoder$2;

    invoke-direct {v1, p0}, Lcom/android/dx/dex/file/DebugInfoEncoder$2;-><init>(Lcom/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private getParamBase()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->desc:Ly1/a;

    invoke-virtual {v1}, Ly1/a;->l()Ly1/b;

    move-result-object v1

    invoke-virtual {v1}, Ly1/b;->B()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public convert()[B
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert0()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Ll1/d;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ll1/d;

    move-result-object v0

    throw v0
.end method

.method public convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lb2/a;Z)[B
    .locals 0

    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lb2/a;

    iput-boolean p4, p0, Lcom/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    invoke-virtual {p0}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    move-result-object p1

    return-object p1
.end method
