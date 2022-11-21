.class public Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForSuperMethodByConstructor"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final constructorParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreFinalizer:Z

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final serializableProxy:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iput-object p3, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->constructorParameters:Ljava/util/List;

    iput-boolean p4, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->ignoreFinalizer:Z

    iput-boolean p5, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->serializableProxy:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 8

    new-instance v6, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    sget-object v3, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;->SUPER_METHOD:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory$Default;

    iget-boolean v4, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->ignoreFinalizer:Z

    iget-boolean v5, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->serializableProxy:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/auxiliary/TypeProxy$InvocationFactory;ZZ)V

    invoke-interface {p2, v6}, Lnet/bytebuddy/implementation/Implementation$Context;->register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->constructorParameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->constructorParameters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v6

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v4, 0x7

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    aput-object v5, v4, v3

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v6, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    aput-object v6, v4, v5

    const/4 v1, 0x3

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v5

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->constructorParameters:Ljava/util/List;

    invoke-static {v7}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v5, v6}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v5}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v5}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object v3, v4, v1

    const/4 v1, 0x5

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x6

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    const-string v3, "target"

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-direct {v2, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->ignoreFinalizer:Z

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->ignoreFinalizer:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->serializableProxy:Z

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->serializableProxy:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->constructorParameters:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->constructorParameters:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->proxiedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->constructorParameters:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->ignoreFinalizer:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;->serializableProxy:Z

    add-int/2addr v0, v1

    return v0
.end method
