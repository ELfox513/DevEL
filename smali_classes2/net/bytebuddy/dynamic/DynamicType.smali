.class public interface abstract Lnet/bytebuddy/dynamic/DynamicType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Default;,
        Lnet/bytebuddy/dynamic/DynamicType$Loaded;,
        Lnet/bytebuddy/dynamic/DynamicType$Unloaded;,
        Lnet/bytebuddy/dynamic/DynamicType$Builder;
    }
.end annotation


# virtual methods
.method public abstract getAllTypes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getAuxiliaryTypes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getBytes()[B
.end method

.method public abstract getLoadedTypeInitializers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public abstract hasAliveLoadedTypeInitializers()Z
.end method

.method public abstract inject(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract inject(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract saveIn(Ljava/io/File;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toJar(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract toJar(Ljava/io/File;Ljava/util/jar/Manifest;)Ljava/io/File;
.end method
