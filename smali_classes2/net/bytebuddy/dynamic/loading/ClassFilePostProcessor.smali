.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;,
        Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$NoOp;
    }
.end annotation


# virtual methods
.method public abstract transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/security/ProtectionDomain;[B)[B
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
.end method
