.class public interface abstract Lnet/bytebuddy/build/Plugin$WithInitialization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithInitialization"
.end annotation


# virtual methods
.method public abstract initialize(Lnet/bytebuddy/dynamic/ClassFileLocator;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;"
        }
    .end annotation
.end method
