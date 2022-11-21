.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$MethodHandle$MethodHandleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MethodHandleInfo"
.end annotation

.annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    value = "java.lang.invoke.MethodHandleInfo"
.end annotation


# virtual methods
.method public abstract getDeclaringClass(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getDeclaringClass"
    .end annotation
.end method

.method public abstract getMethodType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getMethodType"
    .end annotation
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getName"
    .end annotation
.end method

.method public abstract getReferenceKind(Ljava/lang/Object;)I
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "getReferenceKind"
    .end annotation
.end method

.method public abstract revealDirect(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
            value = "java.lang.invoke.MethodHandle"
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsConstructor;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
        value = "revealDirect"
    .end annotation
.end method
