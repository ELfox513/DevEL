.class public Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;Lnet/bytebuddy/implementation/Implementation$Target;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 10

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->b(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/implementation/MethodAccessorFactory;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->a(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;->DEFAULT:Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodAccessorFactory;->registerGetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->a(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/description/field/FieldDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    :cond_0
    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    new-array v7, v5, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v8}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v8

    const-string v9, "instance"

    invoke-static {v9}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v9

    invoke-interface {v8, v9}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v8}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-static {v8}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v8

    invoke-interface {v8}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-direct {v3, v7}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    :goto_0
    aput-object v3, v2, v6

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->c(Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;)Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-result-object v3

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v3, v0, v4, v6}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->assign(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x3

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter$Appender;->a:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldGetter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
