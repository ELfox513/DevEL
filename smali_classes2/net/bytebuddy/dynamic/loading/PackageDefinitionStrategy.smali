.class public interface abstract Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;,
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;,
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Trivial;,
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$NoOp;
    }
.end annotation


# virtual methods
.method public abstract define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
.end method
