.class public Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin;
.implements Lnet/bytebuddy/build/Plugin$Factory;
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;
.implements Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;,
        Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;,
        Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Sorted;,
        Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;,
        Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;,
        Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$WithNonNullableFields;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ENHANCE_INCLUDE_SYNTHETIC_FIELDS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final ENHANCE_INVOKE_SUPER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final ENHANCE_PERMIT_SUBCLASS_EQUALITY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final ENHANCE_SIMPLE_COMPARISON_FIRST:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final ENHANCE_USE_TYPE_HASH_CONSTANT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SORTED_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final VALUE_HANDLING_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
.field private final annotationType:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "invokeSuper"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_INVOKE_SUPER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "simpleComparisonsFirst"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_SIMPLE_COMPARISON_FIRST:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "includeSyntheticFields"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_INCLUDE_SYNTHETIC_FIELDS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "permitSubclassEquality"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_PERMIT_SUBCLASS_EQUALITY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "useTypeHashConstant"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_USE_TYPE_HASH_CONSTANT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->VALUE_HANDLING_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Sorted;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->SORTED_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->annotationType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->SORTED_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static synthetic d()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->VALUE_HANDLING_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Annotation presence is required by matcher."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    const-class p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;

    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    const-class v2, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v1

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    sget-object v2, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_INVOKE_SUPER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2

    const-class v3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v2

    invoke-interface {v2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;

    sget-object v3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_USE_TYPE_HASH_CONSTANT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    invoke-interface {v3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_PERMIT_SUBCLASS_EQUALITY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    invoke-interface {v4, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, p2, v3, v4}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;->hashCodeMethod(Lnet/bytebuddy/description/type/TypeDescription;ZZ)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_INCLUDE_SYNTHETIC_FIELDS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    invoke-interface {v3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/HashCodeMethod;->withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;

    sget-object v4, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    invoke-direct {v3, v4}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;-><init>(Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;)V

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/HashCodeMethod;->withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;

    sget-object v4, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    invoke-direct {v3, v4}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;-><init>(Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;)V

    invoke-virtual {p0, v3}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->nonNullable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/HashCodeMethod;->withNonNullableFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    :cond_1
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_INVOKE_SUPER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2

    const-class v3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v2

    invoke-interface {v2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;

    invoke-virtual {p3, p2}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance$InvokeSuper;->equalsMethod(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    sget-object p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_INCLUDE_SYNTHETIC_FIELDS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, p3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p3}, Lnet/bytebuddy/implementation/EqualsMethod;->withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    new-instance p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;

    sget-object v2, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    invoke-direct {p3, v2}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;-><init>(Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;)V

    invoke-virtual {p2, p3}, Lnet/bytebuddy/implementation/EqualsMethod;->withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    new-instance p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;

    sget-object v2, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;

    invoke-direct {p3, v2}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueMatcher;-><init>(Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;)V

    invoke-virtual {p0, p3}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->nonNullable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/bytebuddy/implementation/EqualsMethod;->withNonNullableFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    sget-object p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;->INSTANCE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$AnnotationOrderComparator;

    invoke-virtual {p2, p3}, Lnet/bytebuddy/implementation/EqualsMethod;->withFieldOrder(Ljava/util/Comparator;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    sget-object p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_SIMPLE_COMPARISON_FIRST:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, p3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/EqualsMethod;->withPrimitiveTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/EqualsMethod;->withEnumerationTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/EqualsMethod;->withPrimitiveWrapperTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/EqualsMethod;->withStringTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object p2

    :cond_3
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p3

    invoke-interface {p1, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object p1

    sget-object p3, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->ENHANCE_PERMIT_SUBCLASS_EQUALITY:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, p3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/EqualsMethod;->withSubclassEquality()Lnet/bytebuddy/implementation/Implementation;

    move-result-object p2

    :cond_4
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object p1

    invoke-interface {p1, p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V
    .locals 3

    iget-object p2, p0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->annotationType:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "L"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->annotationType:Ljava/lang/String;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

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
    iget-object v2, p0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->annotationType:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;

    iget-object p1, p1, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->annotationType:Ljava/lang/String;

    if-eqz p1, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_3
    if-eqz v2, :cond_5

    :cond_4
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

    iget-object v1, p0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->annotationType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public make()Lnet/bytebuddy/build/Plugin;
    .locals 0

    return-object p0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin;->matches(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 1
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class v0, Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationList;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nonNullable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
