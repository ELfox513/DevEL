.class public interface abstract Lnet/bytebuddy/utility/JavaModule$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Module"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.Module"
.end annotation


# virtual methods
.method public abstract canRead(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "canRead"
    .end annotation
.end method

.method public abstract getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getClassLoader"
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getName"
    .end annotation
.end method

.method public abstract getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getResourceAsStream"
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract isExported(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isExported"
    .end annotation
.end method

.method public abstract isInstance(Ljava/lang/Object;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isInstance"
    .end annotation
.end method

.method public abstract isNamed(Ljava/lang/Object;)Z
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isNamed"
    .end annotation
.end method

.method public abstract isOpen(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.Module"
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "isOpen"
    .end annotation
.end method
