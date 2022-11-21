.class public Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessorProxy"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# static fields
.field public static final FIELD_NAME:Ljava/lang/String; = "instance"


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

.field private final fieldResolver:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final serializableProxy:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Z)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldResolver:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

    iput-object p4, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-boolean p5, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->serializableProxy:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    invoke-interface {p2, p0}, Lnet/bytebuddy/implementation/Implementation$Context;->register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    :goto_0
    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v0, v4}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->serializableProxy:Z

    check-cast p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->serializableProxy:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldResolver:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldResolver:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->serializableProxy:Z

    if-eqz v1, :cond_0

    const-string v1, "S"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldResolver:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->serializableProxy:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldResolver:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

    new-instance v1, Lnet/bytebuddy/ByteBuddy;

    invoke-direct {v1, p2}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    sget-object p2, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->DISABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v1, p2}, Lnet/bytebuddy/ByteBuddy;->with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p2

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldResolver:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;

    invoke-interface {v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;->getProxyType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p2, v1, v2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->name(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->serializableProxy:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const-class v2, Ljava/io/Serializable;

    aput-object v2, p2, v1

    goto :goto_0

    :cond_0
    new-array p2, v1, [Ljava/lang/Class;

    :goto_0
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    new-array p2, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$StaticFieldConstructor;->INSTANCE:Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$StaticFieldConstructor;

    goto :goto_2

    :cond_2
    new-instance p2, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$InstanceFieldConstructor;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {p2, v1}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$InstanceFieldConstructor;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    :goto_2
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$AccessorProxy;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-interface {v0, p1, p2, v1, p3}, Lnet/bytebuddy/implementation/bind/annotation/FieldProxy$Binder$FieldResolver;->apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make()Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object p1

    return-object p1
.end method
