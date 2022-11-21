.class public Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final parameterStackManipulations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredTargetIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final target:Lnet/bytebuddy/description/method/MethodDescription;

.field private final terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Map;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/util/List;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Integer;",
            ">;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    iput-object p5, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getTarget()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getTargetParameterIndex(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->target:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->registeredTargetIndices:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->methodInvocation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->terminatingStackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding$Builder$Build;->parameterStackManipulations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    goto :goto_1

    :cond_1
    return v0
.end method
