.class public Lnet/bytebuddy/asm/Advice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;,
        Lnet/bytebuddy/asm/Advice$OnDefaultValue;,
        Lnet/bytebuddy/asm/Advice$NoExceptionHandler;,
        Lnet/bytebuddy/asm/Advice$WithCustomMapping;,
        Lnet/bytebuddy/asm/Advice$AssignReturned;,
        Lnet/bytebuddy/asm/Advice$Unused;,
        Lnet/bytebuddy/asm/Advice$StubValue;,
        Lnet/bytebuddy/asm/Advice$Local;,
        Lnet/bytebuddy/asm/Advice$Exit;,
        Lnet/bytebuddy/asm/Advice$Enter;,
        Lnet/bytebuddy/asm/Advice$Origin;,
        Lnet/bytebuddy/asm/Advice$FieldValue;,
        Lnet/bytebuddy/asm/Advice$Thrown;,
        Lnet/bytebuddy/asm/Advice$Return;,
        Lnet/bytebuddy/asm/Advice$AllArguments;,
        Lnet/bytebuddy/asm/Advice$Argument;,
        Lnet/bytebuddy/asm/Advice$This;,
        Lnet/bytebuddy/asm/Advice$OnMethodExit;,
        Lnet/bytebuddy/asm/Advice$OnMethodEnter;,
        Lnet/bytebuddy/asm/Advice$Appender;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor;,
        Lnet/bytebuddy/asm/Advice$Dispatcher;,
        Lnet/bytebuddy/asm/Advice$ExceptionHandler;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;,
        Lnet/bytebuddy/asm/Advice$MethodSizeHandler;,
        Lnet/bytebuddy/asm/Advice$Delegator;,
        Lnet/bytebuddy/asm/Advice$PostProcessor;,
        Lnet/bytebuddy/asm/Advice$ArgumentHandler;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final BACKUP_ARGUMENTS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final REPEAT_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final delegate:Lnet/bytebuddy/implementation/Implementation;

.field private final exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

.field private final methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

.field private final methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "skipOn"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "prependLineNumber"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "inline"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v2}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v2, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v2, "suppress"

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v0, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v3, "repeatOn"

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v3}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v3, Lnet/bytebuddy/asm/Advice;->REPEAT_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v3, "onThrowable"

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v3}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v3, Lnet/bytebuddy/asm/Advice;->ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v3, "backupArguments"

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v3}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v3, Lnet/bytebuddy/asm/Advice;->BACKUP_ARGUMENTS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    .locals 6

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v4, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->SUPPRESSING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    sget-object v5, Lnet/bytebuddy/implementation/SuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iput-object p5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    return-void
.end method

.method public static synthetic a()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice;->ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic b()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic c()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice;->SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic d()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice;->PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic e()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic f()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice;->REPEAT_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic g()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice;->BACKUP_ARGUMENTS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method private static locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;"
        }
    .end annotation

    invoke-interface {p3}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Dispatcher;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    const-class p1, Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;

    invoke-direct {p0, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;

    invoke-direct {p0, p3, p4}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Advice for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not static"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Duplicate advice for "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/asm/Advice;->to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    const/4 v4, 0x0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    move-object v0, v2

    :goto_0
    invoke-static {p0, p1, v0}, Lnet/bytebuddy/asm/Advice;->to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-static {p0, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v0, v3, p4}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v0

    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v2, v3, p4}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher;->isAlive()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$Dispatcher;->isAlive()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No advice defined by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    sget-object p2, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object p2

    invoke-static {p2}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object p2

    :goto_3
    new-instance p4, Lnet/bytebuddy/asm/Advice;

    invoke-interface {v0, p3, p2, v2, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object v1

    invoke-interface {v2, p3, p2, v0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object p1

    invoke-direct {p4, v1, p1}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error reading class file of "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v2, v3, p5}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$Dispatcher;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v0, v3, p5}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher;->isAlive()Z

    move-result p5

    if-eqz p5, :cond_4

    :try_start_0
    new-instance p5, Lnet/bytebuddy/asm/Advice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    :goto_2
    invoke-interface {v2, p4, v1, v0, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object v1

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object p3

    invoke-static {p3}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object p3

    goto :goto_3

    :cond_3
    sget-object p3, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    :goto_3
    invoke-interface {v0, p4, p3, v2, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object p2

    invoke-direct {p5, v1, p2}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p5

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error reading class file of "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " or "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No exit advice defined by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No enter advice defined by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 6

    sget-object v2, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->INSTANCE:Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 3

    sget-object v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->INSTANCE:Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    invoke-static {p0, v0, p1, v1, v2}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1

    new-instance v0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-direct {v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    new-instance v0, Lnet/bytebuddy/asm/Advice$Appender;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/Implementation;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/asm/Advice$Appender;-><init>(Lnet/bytebuddy/asm/Advice;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    return-object v0
.end method

.method public doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 14

    move-object v0, p0

    move-object v6, p1

    move-object/from16 v7, p2

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->isPrependLineNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-interface {v1, v7, p1}, Lnet/bytebuddy/asm/Advice$ExceptionHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-object v1, v11

    move-object/from16 v3, p4

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;II)V

    return-object v11

    :cond_1
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getThrowable()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const-class v3, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v12, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-interface {v1, v7, p1}, Lnet/bytebuddy/asm/Advice$ExceptionHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v9, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-object v1, v12

    move-object/from16 v3, p4

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;II)V

    return-object v12

    :cond_2
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v13, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-interface {v1, v7, p1}, Lnet/bytebuddy/asm/Advice$ExceptionHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v9, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-interface {v9}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getThrowable()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    move-object v1, v13

    move-object/from16 v3, p4

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v12}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;IILnet/bytebuddy/description/type/TypeDescription;)V

    return-object v13

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot catch exception during constructor call for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    check-cast p1, Lnet/bytebuddy/asm/Advice;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

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

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/asm/Advice;
    .locals 7

    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;
    .locals 7

    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public withExceptionHandler(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    new-instance v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Simple;

    invoke-direct {v0, p1}, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Simple;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;

    move-result-object p1

    return-object p1
.end method

.method public withExceptionPrinting()Lnet/bytebuddy/asm/Advice;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->PRINTING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 7

    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 7

    invoke-interface {p2}, Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;->isAbstract()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;->isNative()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice;->doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p3

    :cond_1
    :goto_0
    return-object p3
.end method
