.class public Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;
.super Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebasedMethod"
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asRawTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;->transform(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit16 v0, v0, 0x1000

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v2}, Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;->isNative()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x110

    :cond_1
    or-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;->isNative()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    or-int/2addr v0, v1

    return v0
.end method

.method public getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asRawTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/ParameterList$Explicit$ForTypes;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/MethodRebaseResolver$Resolution$ForRebasedMethod$RebasedMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method
