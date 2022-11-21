.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessBridgeWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$BridgeTarget;,
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

.field private final bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

.field private final bridgeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation
.end field

.field private final delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTypes:Ljava/util/Set;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    return-void
.end method

.method public static of(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
            ")",
            "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/method/MethodDescription;->isBridgeCompatible(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object p3

    invoke-virtual {p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->isImplemented()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p3, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V

    move-object p0, p3

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 11

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v2, v3, v1, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$AccessorBridge;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription$TypeToken;Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$BridgeTarget;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper$BridgeTarget;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Lnet/bytebuddy/description/method/MethodDescription;->getActualModifiers(ZLnet/bytebuddy/description/modifier/Visibility;)I

    move-result v6

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->NON_GENERIC_SIGNATURE:Ljava/lang/String;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList;->toInternalNames()[Ljava/lang/String;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v6, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p3, v6}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v6

    invoke-interface {v5, v3, v2, v6}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    new-instance v5, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    const/4 v6, 0x4

    new-array v6, v6, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v7, 0x0

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v8

    invoke-virtual {v8, v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->asBridgeOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v8

    invoke-virtual {v8}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->prependThisReference()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v7

    iget-object v8, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v7, v8}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->virtual(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    invoke-interface {v7}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    invoke-interface {v1, v7}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/assign/TypeCasting;->to(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    :goto_1
    aput-object v1, v6, v4

    const/4 v1, 0x3

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-direct {v5, v6}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v5, v3, p2, v2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result v2

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public applyAttributes(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyAttributes(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    return-void
.end method

.method public applyBody(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyBody(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    return-void
.end method

.method public applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method public applyHead(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->applyHead(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTypes:Ljava/util/Set;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTypes:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTypes:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepend(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 7

    new-instance v6, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->delegate:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->prepend(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->bridgeTypes:Ljava/util/Set;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;-><init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V

    return-object v6
.end method
