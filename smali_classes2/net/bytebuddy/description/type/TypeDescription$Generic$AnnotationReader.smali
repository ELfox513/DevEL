.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotationReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForOwnerType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForComponentType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeArgument;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForTypeVariableBoundType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardLowerBoundType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$ForWildcardUpperBoundType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;
    }
.end annotation


# virtual methods
.method public abstract asList()Lnet/bytebuddy/description/annotation/AnnotationList;
.end method

.method public abstract ofComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract ofOuterClass()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract ofOwnerType()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract ofTypeArgument(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract ofTypeVariableBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract ofWildcardLowerBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract ofWildcardUpperBoundType(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract resolve()Ljava/lang/reflect/AnnotatedElement;
.end method
