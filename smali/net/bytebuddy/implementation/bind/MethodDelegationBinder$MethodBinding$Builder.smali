.class public Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;
    }
.end annotation


# instance fields
.field private final candidate:Lnet/bytebuddy/description/method/MethodDescription;

.field private final methodInvoker:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

.field private nextParameterIndex:I

.field private final parameterStackManipulations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredTargetIndices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->methodInvoker:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->parameterStackManipulations:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->registeredTargetIndices:Ljava/util/LinkedHashMap;

    const/4 p1, 0x0

    iput p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    return-void
.end method


# virtual methods
.method public append(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->parameterStackManipulations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->registeredTargetIndices:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$ParameterBinding;->getIdentificationToken()Ljava/lang/Object;

    move-result-object p1

    iget v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public build(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->nextParameterIndex:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->candidate:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v4, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->registeredTargetIndices:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->methodInvoker:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

    invoke-interface {v1, v3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;->parameterStackManipulations:Ljava/util/List;

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Map;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/util/List;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The number of parameters bound does not equal the target\'s number of parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
