.class public interface abstract Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;,
        Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Enforcing;,
        Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Failing;
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
.end method

.method public abstract onError(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
.end method

.method public abstract onLiveInitializer(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V
.end method

.method public abstract onManifest(Ljava/util/jar/Manifest;)V
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
.end method

.method public abstract onResource(Ljava/lang/String;)V
.end method

.method public abstract onUnresolved(Ljava/lang/String;)V
.end method
