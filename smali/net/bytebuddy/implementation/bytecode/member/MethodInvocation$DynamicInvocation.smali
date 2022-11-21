.class public Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicInvocation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;"
        }
    .end annotation
.end field

.field private final bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    iput-object p5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p6, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/utility/JavaConstant;

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    invoke-interface {v5, v7}, Lnet/bytebuddy/utility/JavaConstant;->accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v6

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    new-instance v10, Lnet/bytebuddy/jar/asm/Handle;

    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v4}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->f(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v4

    iget-object v5, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->h(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p2

    sget-object v4, Lnet/bytebuddy/ClassFileVersion;->JAVA_V11:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {p2, v4}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->h(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result p2

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->f(Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;)I

    move-result p2

    :goto_3
    move v5, p2

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v2, v0, v10, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result p2

    sub-int/2addr p1, p2

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object p2
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->returnType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->parameterTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->bootstrapMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->arguments:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$DynamicInvocation;->a:Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
