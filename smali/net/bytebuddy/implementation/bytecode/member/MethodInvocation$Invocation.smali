.class public Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Invocation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 1

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->c(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->d(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p2

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, v0}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->d(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->c(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result p2

    :goto_1
    move v1, p2

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, p2, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method

.method public dynamic(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isInvokeBootstrap()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v5, p3}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    iget-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p3}, Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onHandle(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleInvocation;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$HandleType;)V

    return-object v0
.end method

.method public special(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription;->isSpecializableFor(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->SPECIAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_0
    return-object v0
.end method

.method public virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    :goto_0
    return-object p1

    :cond_2
    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    goto :goto_1

    :cond_3
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->INTERFACE:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    :goto_1
    return-object v0

    :cond_4
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->VIRTUAL:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$Invocation;-><init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0

    :cond_5
    :goto_2
    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Illegal;

    return-object p1
.end method
