.class public Lnet/bytebuddy/implementation/MethodDelegation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;,
        Lnet/bytebuddy/implementation/MethodDelegation$Appender;,
        Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

.field private final implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

.field private final parameterBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;",
            ")V"
        }
    .end annotation

    sget-object v4, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;->RETURNING:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iput-object p5, p0, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iput-object p6, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-void
.end method

.method public static to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toConstructor(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toConstructor(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toConstructor(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toConstructor(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toMethodReturnOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toMethodReturnOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toMethodReturnOf(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toMethodReturnOf(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    sget-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->DEFAULT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;->DEFAULTS:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;)V

    return-object v0
.end method

.method public static withEmptyConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    sget-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 9

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    new-instance v8, Lnet/bytebuddy/implementation/MethodDelegation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    sget-object v5, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;->DROPPING:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    invoke-direct {v0, v8, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 10

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v9, Lnet/bytebuddy/implementation/MethodDelegation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    sget-object v6, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;->DROPPING:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iget-object v8, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    move-result-object v7

    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;

    new-instance v4, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

    invoke-interface {v7}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;->getRecords()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-direct {v4, v1, v2, v3}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;-><init>(Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;)V

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/implementation/MethodDelegation$Appender;-><init>(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 8

    new-instance v7, Lnet/bytebuddy/implementation/MethodDelegation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation;->bindingResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$BindingResolver;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    return-object v7
.end method
