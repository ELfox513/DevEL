.class public interface abstract Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Definition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;,
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Trivial;,
        Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;
    }
.end annotation


# virtual methods
.method public abstract getImplementationTitle()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getImplementationVendor()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getImplementationVersion()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getSealBase()Ljava/net/URL;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getSpecificationTitle()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getSpecificationVendor()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract getSpecificationVersion()Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.method public abstract isCompatibleTo(Ljava/lang/Package;)Z
.end method

.method public abstract isDefined()Z
.end method
