.class public interface abstract Lnet/bytebuddy/build/Plugin$Engine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Default;,
        Lnet/bytebuddy/build/Plugin$Engine$AbstractBase;,
        Lnet/bytebuddy/build/Plugin$Engine$Summary;,
        Lnet/bytebuddy/build/Plugin$Engine$Dispatcher;,
        Lnet/bytebuddy/build/Plugin$Engine$Target;,
        Lnet/bytebuddy/build/Plugin$Engine$Source;,
        Lnet/bytebuddy/build/Plugin$Engine$Listener;,
        Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;,
        Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy;,
        Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy;
    }
.end annotation


# static fields
.field public static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"

.field public static final MODULE_INFO:Ljava/lang/String; = "module-info.class"

.field public static final PACKAGE_INFO:Ljava/lang/String; = "package-info.class"

.field public static final PLUGIN_FILE:Ljava/lang/String; = "META-INF/net.bytebuddy/build.plugins"


# virtual methods
.method public abstract apply(Ljava/io/File;Ljava/io/File;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Factory;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Engine$Summary;"
        }
    .end annotation
.end method

.method public varargs abstract apply(Ljava/io/File;Ljava/io/File;[Lnet/bytebuddy/build/Plugin$Factory;)Lnet/bytebuddy/build/Plugin$Engine$Summary;
.end method

.method public abstract apply(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/build/Plugin$Engine$Target;Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine$Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Source;",
            "Lnet/bytebuddy/build/Plugin$Engine$Target;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Factory;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Engine$Summary;"
        }
    .end annotation
.end method

.method public varargs abstract apply(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/build/Plugin$Engine$Target;[Lnet/bytebuddy/build/Plugin$Factory;)Lnet/bytebuddy/build/Plugin$Engine$Summary;
.end method

.method public abstract ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/build/Plugin$Engine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Engine;"
        }
    .end annotation
.end method

.method public abstract with(Lnet/bytebuddy/ByteBuddy;)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract with(Lnet/bytebuddy/build/Plugin$Engine$Dispatcher$Factory;)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract with(Lnet/bytebuddy/build/Plugin$Engine$Listener;)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract with(Lnet/bytebuddy/build/Plugin$Engine$PoolStrategy;)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract with(Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy;)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract with(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract withErrorHandlers(Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Engine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Engine;"
        }
    .end annotation
.end method

.method public varargs abstract withErrorHandlers([Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract withParallelTransformation(I)Lnet/bytebuddy/build/Plugin$Engine;
.end method

.method public abstract withoutErrorHandlers()Lnet/bytebuddy/build/Plugin$Engine;
.end method
