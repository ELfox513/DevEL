.class public Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final threads:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;->threads:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;->threads:I

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;

    iget p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;->threads:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;->threads:I

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;"
        }
    .end annotation

    new-instance v6, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService;

    iget v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;->threads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    return-object v6
.end method
