.class public Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;
.super Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransformedParameter"
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

.field private final index:I

.field private final parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;ILnet/bytebuddy/description/method/ParameterDescription$Token;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;-><init>()V

    iput p2, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->index:I

    iput-object p3, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->asDefined()Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->e(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->index:I

    return v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getModifiers()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getModifiers()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/bytebuddy/description/method/ParameterDescription$AbstractBase;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-direct {v1, v2}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;-><init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getModifiers()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNamed()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$TransformedParameter;->parameterToken:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
