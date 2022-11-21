.class public abstract Lnet/bytebuddy/build/Plugin$Engine$AbstractBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Summary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Factory;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Engine$Summary;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;

    invoke-direct {v0, p1}, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForJarFile;

    invoke-direct {v0, p1}, Lnet/bytebuddy/build/Plugin$Engine$Source$ForJarFile;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lnet/bytebuddy/build/Plugin$Engine$Target$ForFolder;

    invoke-direct {p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$Target$ForFolder;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;

    invoke-direct {p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;-><init>(Ljava/io/File;)V

    :goto_1
    invoke-interface {p0, v0, p1, p3}, Lnet/bytebuddy/build/Plugin$Engine;->apply(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/build/Plugin$Engine$Target;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Summary;

    move-result-object p1

    return-object p1
.end method

.method public varargs apply(Ljava/io/File;Ljava/io/File;[Lnet/bytebuddy/build/Plugin$Factory;)Lnet/bytebuddy/build/Plugin$Engine$Summary;
    .locals 0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/build/Plugin$Engine$AbstractBase;->apply(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Summary;

    move-result-object p1

    return-object p1
.end method

.method public varargs apply(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/build/Plugin$Engine$Target;[Lnet/bytebuddy/build/Plugin$Factory;)Lnet/bytebuddy/build/Plugin$Engine$Summary;
    .locals 0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lnet/bytebuddy/build/Plugin$Engine;->apply(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/build/Plugin$Engine$Target;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Summary;

    move-result-object p1

    return-object p1
.end method

.method public varargs withErrorHandlers([Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;)Lnet/bytebuddy/build/Plugin$Engine;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/bytebuddy/build/Plugin$Engine;->withErrorHandlers(Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine;

    move-result-object p1

    return-object p1
.end method

.method public withParallelTransformation(I)Lnet/bytebuddy/build/Plugin$Engine;
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;

    invoke-direct {v0, p1}, Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$ForParallelTransformation$WithThrowawayExecutorService$Factory;-><init>(I)V

    invoke-interface {p0, v0}, Lnet/bytebuddy/build/Plugin$Engine;->with(Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Factory;)Lnet/bytebuddy/build/Plugin$Engine;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of threads must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
