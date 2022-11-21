.class public final Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/PerformanceSurvey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinaryTreesTest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(II[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->c(II[Ljava/lang/String;)V

    return-void
.end method

.method public static b(I)Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;
    .locals 3

    const/4 v0, 0x0

    if-lez p0, :cond_0

    new-instance v1, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->b(I)Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    move-result-object v2

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->b(I)Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;-><init>(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;Lcom/prineside/tdi2/utils/PerformanceSurvey$1;)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;-><init>(Lcom/prineside/tdi2/utils/PerformanceSurvey$1;)V

    return-object p0
.end method

.method public static synthetic c(II[Ljava/lang/String;)V
    .locals 3

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    const/4 v0, 0x1

    shl-int p0, v0, p0

    const/4 v1, 0x0

    :goto_0
    if-gt v0, p0, :cond_0

    invoke-static {p1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->b(I)Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->a(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x4

    div-int/lit8 v0, v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\t trees of depth "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\t check: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    return-void
.end method

.method public static run(I)V
    .locals 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 v1, p0, 0x1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stretch tree of depth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\t check: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->b(I)Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->a(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest;->b(I)Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;

    move-result-object v1

    add-int/lit8 v2, p0, -0x4

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v5, 0x4

    :goto_0
    if-gt v5, p0, :cond_0

    new-instance v6, Lcom/prineside/tdi2/utils/d;

    invoke-direct {v6, p0, v5, v3}, Lcom/prineside/tdi2/utils/d;-><init>(II[Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v5, 0x3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v5, v6, v7}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v5, v3, v0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long lived tree of depth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;->a(Lcom/prineside/tdi2/utils/PerformanceSurvey$BinaryTreesTest$TreeNode;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
