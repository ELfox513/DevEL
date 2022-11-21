.class public interface abstract Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageLookupStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForJava9CapableVm;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$ForLegacyVm;,
        Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract apply(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method
