.class public Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodDelegation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithCustomProperties"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

.field private final bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver$Default;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iput-object p4, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    new-instance v4, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Conjunction;

    const/4 v5, 0x2

    new-array v5, v5, [Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v4, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$Conjunction;-><init>([Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 0

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegate$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/bytebuddy/utility/RandomString;->hashOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 9

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation;

    new-instance v8, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    move-object v1, v8

    move-object v2, p3

    move-object v3, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithInstance;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Ljava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-direct {v0, v8, p1, p2, p3}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)V

    return-object v0

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an instance of "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegate$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/bytebuddy/utility/RandomString;->hashOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Object;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 4

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {p1, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->of(Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForStaticMethod;->of(Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;)Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delegate to primitive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delegate to array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toConstructor(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toConstructor(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public toConstructor(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder;->of(Ljava/util/List;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForConstruction;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodList;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder;)Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)V

    return-object v0
.end method

.method public toField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 8

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation;

    new-instance v7, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithLookup;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForField$WithLookup;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Ljava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object p3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-direct {v0, v7, p1, p2, p3}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)V

    return-object v0
.end method

.method public toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public toMethodReturnOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toMethodReturnOf(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p1

    return-object p1
.end method

.method public toMethodReturnOf(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation;

    new-instance v1, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForMethodReturn;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-direct {v1, p1, p2, v2, v3}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$ForMethodReturn;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Ljava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-direct {v0, v1, p1, p2, v2}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)V

    return-object v0
.end method

.method public withBinders(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    invoke-static {v2, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public varargs withBinders([Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->withBinders(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object p1

    return-object p1
.end method

.method public withBindingResolver(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public withResolvers(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            ">;)",
            "Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    new-instance v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    invoke-static {v2, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$Compound;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->parameterBinders:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public varargs withResolvers([Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->withResolvers(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object p1

    return-object p1
.end method
