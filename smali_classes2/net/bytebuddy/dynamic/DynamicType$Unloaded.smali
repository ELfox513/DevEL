.class public interface abstract Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Unloaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/DynamicType;"
    }
.end annotation


# virtual methods
.method public abstract include(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract include([Lnet/bytebuddy/dynamic/DynamicType;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Loaded<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract load(Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Loaded;
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/ClassLoader;",
            ">(TS;",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "-TS;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Loaded<",
            "TT;>;"
        }
    .end annotation
.end method
