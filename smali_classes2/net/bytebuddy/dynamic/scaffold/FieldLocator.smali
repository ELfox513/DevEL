.class public interface abstract Lnet/bytebuddy/dynamic/scaffold/FieldLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForTopLevelType;,
        Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy;,
        Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForExactType;,
        Lnet/bytebuddy/dynamic/scaffold/FieldLocator$AbstractBase;,
        Lnet/bytebuddy/dynamic/scaffold/FieldLocator$NoOp;,
        Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;,
        Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;
    }
.end annotation


# virtual methods
.method public abstract locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;
.end method

.method public abstract locate(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Resolution;
.end method
