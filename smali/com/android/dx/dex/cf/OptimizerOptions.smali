.class public Lcom/android/dx/dex/cf/OptimizerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dontOptimizeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optimizeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optimizeListsLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error with optimize list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public compareOptimizerStep(Lw1/u;IZLcom/android/dx/dex/cf/CfOptions;Lw1/a0;Lw1/u;)V
    .locals 7

    const-class v0, Lz1/m$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    sget-object v0, Lz1/m$a;->k:Lz1/m$a;

    invoke-virtual {v6, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    iget-boolean v4, p4, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lz1/m;->d(Lw1/u;IZZLw1/a0;Ljava/util/EnumSet;)Lw1/u;

    move-result-object p1

    invoke-virtual {p6}, Lw1/u;->b()Lw1/c;

    move-result-object p2

    invoke-virtual {p2}, Lw1/c;->H()I

    move-result p2

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p3

    invoke-virtual {p3}, Lw1/c;->H()I

    move-result p3

    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/Object;

    invoke-virtual {p6}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lw1/c;->K()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p5, v1

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lw1/c;->K()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p5, v1

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lw1/c;->K()I

    move-result v0

    invoke-virtual {p6}, Lw1/u;->b()Lw1/c;

    move-result-object p6

    invoke-virtual {p6}, Lw1/c;->K()I

    move-result p6

    sub-int/2addr v0, p6

    int-to-float p6, v0

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p1

    invoke-virtual {p1}, Lw1/c;->K()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p6, p1

    float-to-double v0, p6

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p6, 0x2

    aput-object p1, p5, p6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x3

    aput-object p1, p5, p6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x4

    aput-object p1, p5, p6

    sub-int p1, p3, p2

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p5, p2

    const-string p1, "optimize step regs:(%d/%d/%.2f%%) insns:(%d/%d/%.2f%%)\n"

    invoke-virtual {p4, p1, p5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public loadOptimizeLists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/dex/cf/OptimizerOptions;->optimizeListsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "optimize and don\'t optimize lists  are mutually exclusive."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/android/dx/dex/cf/OptimizerOptions;->loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/cf/OptimizerOptions;->optimizeList:Ljava/util/HashSet;

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/android/dx/dex/cf/OptimizerOptions;->loadStringsFromFile(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/dex/cf/OptimizerOptions;->dontOptimizeList:Ljava/util/HashSet;

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/dx/dex/cf/OptimizerOptions;->optimizeListsLoaded:Z

    return-void
.end method

.method public shouldOptimize(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/cf/OptimizerOptions;->optimizeList:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/cf/OptimizerOptions;->dontOptimizeList:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    return v1
.end method
