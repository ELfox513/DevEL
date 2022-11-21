.class public Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodLoading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final typeCastingHandler:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->typeCastingHandler:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v4

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->typeCastingHandler:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getIndex()I

    move-result v2

    invoke-interface {v4, v3, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;->ofIndex(Lnet/bytebuddy/description/type/TypeDescription;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public asBridgeOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;

    invoke-direct {v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler$ForBridgeTarget;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->typeCastingHandler:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->typeCastingHandler:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->typeCastingHandler:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading$TypeCastingHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prependThisReference()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v2, 0x0

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    :goto_0
    return-object v0
.end method
