.class public Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;
.super Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterDescription$InGenericShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSubstituting"
.end annotation


# instance fields
.field private final declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

.field private final parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

.field private final visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->asDefined()Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->declaringMethod:Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    return-object v0
.end method

.method public bridge synthetic getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription$InGenericShape;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v0

    return v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v0

    return v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterDescription;->hasModifiers()Z

    move-result v0

    return v0
.end method

.method public isNamed()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$TypeSubstituting;->parameterDescription:Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement$WithOptionalName;->isNamed()Z

    move-result v0

    return v0
.end method
