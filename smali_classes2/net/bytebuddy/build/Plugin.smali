.class public interface abstract Lnet/bytebuddy/build/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$ForElementMatcher;,
        Lnet/bytebuddy/build/Plugin$NoOp;,
        Lnet/bytebuddy/build/Plugin$Engine;,
        Lnet/bytebuddy/build/Plugin$Factory;,
        Lnet/bytebuddy/build/Plugin$WithInitialization;,
        Lnet/bytebuddy/build/Plugin$WithPreprocessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation
.end method
