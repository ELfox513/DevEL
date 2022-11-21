.class public Lnet/bytebuddy/implementation/MethodCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$Appender;,
        Lnet/bytebuddy/implementation/MethodCall$FieldSetting;,
        Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;,
        Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;,
        Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler;,
        Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;,
        Lnet/bytebuddy/implementation/MethodCall$MethodLocator;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field public final argumentLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field public final methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

.field public final methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

.field public final targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

.field public final terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

.field public final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;",
            "Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;",
            ">;",
            "Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;",
            "Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    iput-object p5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iput-object p6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    return-void
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lnet/bytebuddy/implementation/Implementation$Composable;"
        }
    .end annotation

    const-class v0, Ljava/util/concurrent/Callable;

    :try_start_0
    const-string v1, "call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->on(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p0

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/implementation/MethodCall;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not locate Callable::call method"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static construct(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodCall;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->construct(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p0

    return-object p0
.end method

.method public static construct(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForExplicitMethod;

    invoke-direct {v2, p0}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForExplicitMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    sget-object v3, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForConstructingInvocation$Factory;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation$Factory;

    sget-object v6, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v8, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invoke(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForExplicitMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForExplicitMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;)V

    return-object v0
.end method

.method public static invoke(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")",
            "Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher$Factory;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForElementMatcher$Factory;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object p0

    return-object p0
.end method

.method public static invokeSelf()Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    sget-object v1, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$ForInstrumentedMethod;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;)V

    return-object v0
.end method

.method public static invokeSuper()Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/MethodCall;->invokeSelf()Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onSuper()Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    return-object v0
.end method

.method public static run(Ljava/lang/Runnable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 3

    :try_start_0
    const-class v0, Ljava/lang/Runnable;

    const-string v1, "run"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Ljava/lang/reflect/Method;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v0

    const-class v1, Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->on(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p0

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/implementation/MethodCall;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not locate Runnable::run method"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 10

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    new-instance v9, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    sget-object v6, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->DROPPING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v8, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    invoke-direct {v0, v9, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 11

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v10, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    sget-object v7, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;->DROPPING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Simple;

    iget-object v8, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v9, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$Appender;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/implementation/MethodCall$Appender;-><init>(Lnet/bytebuddy/implementation/MethodCall;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;

    invoke-interface {v1, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public setsField(Ljava/lang/reflect/Field;)Lnet/bytebuddy/implementation/MethodCall$FieldSetting;
    .locals 1

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->setsField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/MethodCall$FieldSetting;

    move-result-object p1

    return-object p1
.end method

.method public setsField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/MethodCall$FieldSetting;
    .locals 10

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;

    new-instance v9, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    new-instance v6, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;

    invoke-direct {v6, p1}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Explicit;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v8, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    invoke-direct {v0, v9}, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;-><init>(Lnet/bytebuddy/implementation/MethodCall;)V

    return-object v0
.end method

.method public setsField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/MethodCall$FieldSetting;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/implementation/MethodCall$FieldSetting;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;

    new-instance v9, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    new-instance v6, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Implicit;

    invoke-direct {v6, p1}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$FieldSetting$Implicit;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v8, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    invoke-direct {v0, v9}, Lnet/bytebuddy/implementation/MethodCall$FieldSetting;-><init>(Lnet/bytebuddy/implementation/MethodCall;)V

    return-object v0
.end method

.method public with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;",
            ">;)",
            "Lnet/bytebuddy/implementation/MethodCall;"
        }
    .end annotation

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-static {v0, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public with(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 0

    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/implementation/MethodCall;->with(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    new-instance v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    invoke-direct {v1, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public varargs with([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-static {v3}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;->of(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public varargs with([Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forEnumeration(Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    invoke-interface {v3}, Lnet/bytebuddy/description/enumeration/EnumerationDescription;->getEnumerationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public varargs with([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const-class v5, Ljava/lang/Class;

    invoke-direct {v4, v3, v5}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/reflect/Type;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public varargs with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public varargs with([Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;

    new-instance v5, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    invoke-direct {v5, v3}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;-><init>(Lnet/bytebuddy/utility/JavaConstant;)V

    invoke-interface {v3}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForStackManipulation;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDefinition;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public withAllArguments()Lnet/bytebuddy/implementation/MethodCall;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    sget-object v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$OfInstrumentedMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    return-object v0
.end method

.method public varargs withArgument([I)Lnet/bytebuddy/implementation/MethodCall;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    if-ltz v3, :cond_0

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$Factory;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameter$Factory;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public withArgumentArray()Lnet/bytebuddy/implementation/MethodCall;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    sget-object v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArray$ForInstrumentedMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    return-object v0
.end method

.method public withArgumentArrayElements(I)Lnet/bytebuddy/implementation/MethodCall;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    const/4 v1, 0x0

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArrayElement$OfInvokedMethod;

    invoke-direct {v2, p1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArrayElement$OfInvokedMethod;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A parameter index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withArgumentArrayElements(II)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/bytebuddy/implementation/MethodCall;->withArgumentArrayElements(III)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public withArgumentArrayElements(III)Lnet/bytebuddy/implementation/MethodCall;
    .locals 4

    if-ltz p1, :cond_4

    if-ltz p2, :cond_3

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    if-ltz p3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArrayElement$OfParameter;

    add-int v3, p2, v1

    invoke-direct {v2, p1, v3}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodParameterArrayElement$OfParameter;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Size cannot be negative: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An array index cannot be negative: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A parameter index cannot be negative: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 9

    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;

    move-object v0, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler$Factory;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public varargs withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForField$Factory;

    invoke-direct {v4, v3, p1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForField$Factory;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public varargs withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/implementation/MethodCall;->withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public withMethodCall(Lnet/bytebuddy/implementation/MethodCall;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    new-instance v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;

    invoke-direct {v1, p1}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForMethodCall$Factory;-><init>(Lnet/bytebuddy/implementation/MethodCall;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public withOwnType()Lnet/bytebuddy/implementation/MethodCall;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    sget-object v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstrumentedType$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstrumentedType$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    return-object v0
.end method

.method public varargs withReference([Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    sget-object v3, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForNullConstant;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForNullConstant;

    goto :goto_1

    :cond_0
    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;

    invoke-direct {v4, v3}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForInstance$Factory;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with(Ljava/util/List;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public withThis()Lnet/bytebuddy/implementation/MethodCall;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    sget-object v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForThisReference$Factory;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ForThisReference$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/MethodCall;->with([Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v0

    return-object v0
.end method
