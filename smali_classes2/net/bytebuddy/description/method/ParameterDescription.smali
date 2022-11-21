.class public interface abstract Lnet/bytebuddy/description/method/ParameterDescription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationSource;
.implements Lnet/bytebuddy/description/NamedElement$WithRuntimeName;
.implements Lnet/bytebuddy/description/NamedElement$WithOptionalName;
.implements Lnet/bytebuddy/description/ModifierReviewable$ForParameterDescription;
.implements Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterDescription$Token;,
        Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;,
        Lnet/bytebuddy/description/method/ParameterDescription$Latent;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;,
        Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;,
        Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;,
        Lnet/bytebuddy/description/method/ParameterDescription$InGenericShape;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/annotation/AnnotationSource;",
        "Lnet/bytebuddy/description/NamedElement$WithRuntimeName;",
        "Lnet/bytebuddy/description/NamedElement$WithOptionalName;",
        "Lnet/bytebuddy/description/ModifierReviewable$ForParameterDescription;",
        "Lnet/bytebuddy/description/ByteCodeElement$TypeDependant<",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
        "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME_PREFIX:Ljava/lang/String; = "arg"


# virtual methods
.method public abstract getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getOffset()I
.end method

.method public abstract getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract hasModifiers()Z
.end method
