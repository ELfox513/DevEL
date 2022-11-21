.class final enum Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$2;
.super Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;-><init>(Ljava/lang/String;IZLnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/instrument/Instrumentation;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/instrument/ClassDefinition;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassRedefinitionTransformer;

    invoke-direct {v0, p2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassRedefinitionTransformer;-><init>(Ljava/util/Map;)V

    monitor-enter p0

    :try_start_0
    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;->addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Class;

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;->retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassRedefinitionTransformer;->assertTransformation()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-interface {p1, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    throw p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    invoke-interface {v1, p1, v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;->isModifiableClass(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot modify type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p2, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassResettingTransformer;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassResettingTransformer;

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;->addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Class;

    invoke-interface {p2, p1, p3}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;->retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    return-void

    :catchall_0
    move-exception p2

    sget-object p3, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassResettingTransformer;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy$ClassResettingTransformer;

    invoke-interface {p1, p3}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public validate(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
    .locals 3

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;->isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does not support retransformation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
