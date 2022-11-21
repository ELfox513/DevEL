.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.instrument.Instrumentation"
.end annotation


# virtual methods
.method public abstract appendToBootstrapClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "appendToBootstrapClassLoaderSearch"
    .end annotation
.end method

.method public abstract appendToSystemClassLoaderSearch(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "appendToSystemClassLoaderSearch"
    .end annotation
.end method

.method public abstract isModifiableModule(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;)Z
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isModifiableModule"
    .end annotation
.end method

.method public abstract redefineModule(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;)V"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "redefineModule"
    .end annotation
.end method
