.class public final Lnet/bytebuddy/matcher/ElementMatchers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static annotationType(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static annotationType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/AnnotationTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/AnnotationTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lnet/bytebuddy/matcher/BooleanMatcher;->of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static varargs anyOf([Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Field;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">([",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>([Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Method;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs anyOf([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static cached(Lnet/bytebuddy/matcher/ElementMatcher;I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;I)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    new-instance v0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eviction size must be a positive number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cached(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/CachingMatcher;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/matcher/CachingMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static canThrow(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->canThrow(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static canThrow(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/RuntimeException;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Error;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSuperTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    invoke-static {p0}, Lnet/bytebuddy/matcher/BooleanMatcher;->of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static declaresAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DeclaringAnnotationMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DeclaringAnnotationMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static declaresException(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresException(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static declaresException(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lnet/bytebuddy/matcher/BooleanMatcher;->of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static declaresField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DeclaringFieldMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DeclaringFieldMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static declaresGenericException(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static declaresGenericException(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isWildcard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lnet/bytebuddy/matcher/BooleanMatcher;->of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static declaresGenericException(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodExceptionTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodExceptionTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static declaresMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DeclaringMethodMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DeclaringMethodMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DefinedShapeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DefinedShapeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DefinedShapeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DefinedShapeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static definedParameter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DefinedShapeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DefinedShapeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static erasure(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static erasure(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/ErasureMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/ErasureMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static erasures(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>(",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static erasures(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/CollectionErasureMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionErasureMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static varargs erasures([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs erasures([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>([",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static failSafe(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/FailSafeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/matcher/FailSafeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Z)V

    return-object v0
.end method

.method public static fieldType(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->fieldType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static fieldType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->fieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static fieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->genericFieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static genericFieldType(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->genericFieldType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static genericFieldType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->genericFieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static genericFieldType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/FieldTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/FieldTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/InheritedAnnotationMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/InheritedAnnotationMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasChild(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/ClassLoaderHierarchyMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/ClassLoaderHierarchyMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasDescriptor(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement$WithDescriptor;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DescriptorMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/DescriptorMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasGenericSuperClass(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/HasSuperClassMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/HasSuperClassMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasGenericSuperType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/HasSuperTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/HasSuperTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasGenericType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodParameterTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodParameterTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasMethodName(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<init>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "<clinit>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isTypeInitializer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static hasParameters(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasSignature(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/SignatureTokenMatcher;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/SignatureTokenMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static hasSuperClass(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasGenericSuperClass(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static hasSuperType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasGenericSuperType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static hasType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasGenericType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static inheritsAnnotation(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->inheritsAnnotation(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static inheritsAnnotation(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->inheritsAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static inheritsAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lnet/bytebuddy/matcher/NullMatcher;->make()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static is(Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->of(Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Field;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Method;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">(",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static is(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedParameter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAbstract()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfAbstraction;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ABSTRACT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isAccessibleTo(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAccessibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/AccessibilityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/AccessibilityMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAnnotatedWith(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAnnotatedWith(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationSource;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->annotationType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresAnnotation(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isAnnotation()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ANNOTATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isArray()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/ArrayTypeMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/ArrayTypeMatcher;-><init>()V

    return-object v0
.end method

.method public static isBootstrapClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/NullMatcher;->make()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isBridge()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->BRIDGE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isChildOf(Ljava/lang/ClassLoader;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lnet/bytebuddy/matcher/BooleanMatcher;->of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->hasChild(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isClone()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clone"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->takesNoArguments()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->CONSTRUCTOR:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-static {v0}, Lnet/bytebuddy/matcher/MethodSortMatcher;->of(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isDeclaredBy(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredBy(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredByGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredByGeneric(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredByGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredByGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredByGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isDeclaredByGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/DeclaringTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/DeclaringTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static isDefaultConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->takesNoArguments()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->isDeclaredBy(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isDefaultMethod()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->DEFAULT_METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-static {v0}, Lnet/bytebuddy/matcher/MethodSortMatcher;->of(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isEnum()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfEnumeration;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->ENUMERATION:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "equals"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isExtensionClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-direct {v1, v0}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static isFinal()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->FINAL:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "finalize"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->takesNoArguments()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isGenericGetter(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericGetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericGetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericSetter(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericSetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericSetter(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGenericSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->takesNoArguments()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const-string v1, "get"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const-string v2, "is"

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/reflect/Type;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isGetter(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "is"

    const-string v3, "get"

    if-nez v1, :cond_0

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {p0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-interface {v1, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericGetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "hashCode"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->takesNoArguments()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isInterface()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->INTERFACE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isMain()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "main"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, [Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPublic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isMandated()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/ParameterDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->MANDATED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isMethod()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->METHOD:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-static {v0}, Lnet/bytebuddy/matcher/MethodSortMatcher;->of(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isNamed()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement$WithOptionalName;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/IsNamedMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/IsNamedMatcher;-><init>()V

    return-object v0
.end method

.method public static isNative()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->NATIVE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isOverriddenFrom(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFrom(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFrom(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFrom(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFrom(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFromGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFromGeneric(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFromGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFromGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isOverriddenFromGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isOverriddenFromGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodOverrideMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static isPackagePrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPublic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isProtected()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isParentOf(Ljava/lang/ClassLoader;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isBootstrapClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/ClassLoaderParentMatcher;-><init>(Ljava/lang/ClassLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static isPrimitive()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/PrimitiveTypeMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/PrimitiveTypeMatcher;-><init>()V

    return-object v0
.end method

.method public static isPrivate()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PRIVATE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isProtected()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PROTECTED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isPublic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->PUBLIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isRecord()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/RecordMatcher;

    invoke-direct {v0}, Lnet/bytebuddy/matcher/RecordMatcher;-><init>()V

    return-object v0
.end method

.method public static isSetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "set"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isSetter(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSetter(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "set"

    if-nez v1, :cond_0

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSetter(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isGenericSetter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STATIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isStrict()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->STRICT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isSubTypeOf(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSubTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSubTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/SubTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/SubTypeMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isSuperTypeOf(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSuperTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isSuperTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/SuperTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/SuperTypeMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isSynchronized()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNCHRONIZED:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->SYNTHETIC:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isSystemClassLoader()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/EqualityMatcher;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/EqualityMatcher;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isToString()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "toString"

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->takesNoArguments()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription;->STRING:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isTransient()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->TRANSIENT:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isTypeInitializer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->TYPE_INITIALIZER:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-static {v0}, Lnet/bytebuddy/matcher/MethodSortMatcher;->of(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isVarArgs()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ModifierReviewable$ForMethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VAR_ARGS:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isVariable(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isVariable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isVariable(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/NamedElement;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/TypeSortMatcher;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->VARIABLE_SYMBOLIC:Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->anyOf([Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/TypeSortMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {v0, p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->VIRTUAL:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-static {v0}, Lnet/bytebuddy/matcher/MethodSortMatcher;->of(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static isVisibleTo(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/VisibilityMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/VisibilityMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public static isVolatile()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/matcher/ModifierMatcher$Mode;->VOLATILE:Lnet/bytebuddy/matcher/ModifierMatcher$Mode;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ModifierMatcher;->of(Lnet/bytebuddy/matcher/ModifierMatcher$Mode;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static nameContains(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameContainsIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->CONTAINS_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameEndsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameEndsWithIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->ENDS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameMatches(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->MATCHES:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameStartsWith(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static nameStartsWithIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->STARTS_WITH_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static namedIgnoreCase(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringMatcher;

    sget-object v2, Lnet/bytebuddy/matcher/StringMatcher$Mode;->EQUALS_FULLY_IGNORE_CASE:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-direct {v1, p0, v2}, Lnet/bytebuddy/matcher/StringMatcher;-><init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static varargs namedOneOf([Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/NamedElement;",
            ">([",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NameMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/StringSetMatcher;

    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lnet/bytebuddy/matcher/StringSetMatcher;-><init>(Ljava/util/Set;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/NameMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/bytebuddy/matcher/BooleanMatcher;->of(Z)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static varargs noneOf([Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Field;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">([",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>([Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Method;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Constructor;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->definedMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs noneOf([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->noneOf(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/NegatingMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/NegatingMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static ofSort(Lnet/bytebuddy/description/type/TypeDefinition$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDefinition$Sort;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->ofSort(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static ofSort(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDefinition$Sort;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/TypeSortMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/TypeSortMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static ofType(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/InstanceTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/InstanceTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static returns(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returns(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returns(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returnsGeneric(Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returnsGeneric(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static returnsGeneric(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodReturnTypeMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/MethodReturnTypeMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static supportsModules()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/matcher/NullMatcher;->make()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static takesArgument(ILjava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArgument(ILnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArgument(ILnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/CollectionSizeMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/CollectionSizeMatcher;-><init>(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static takesArguments(Ljava/lang/Iterable;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->erasure(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static varargs takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs takesArguments([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->erasures([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArgument(ILjava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArgument(ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArgument(ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArgument(ILnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(I",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/CollectionElementMatcher;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/matcher/CollectionElementMatcher;-><init>(ILnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArguments(Ljava/util/List;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;

    invoke-direct {p0, v0}, Lnet/bytebuddy/matcher/CollectionOneToOneMatcher;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesGenericArguments(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/Iterable<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/MethodParametersMatcher;

    new-instance v1, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;

    invoke-direct {v1, p0}, Lnet/bytebuddy/matcher/MethodParameterTypesMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/MethodParametersMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static varargs takesGenericArguments([Ljava/lang/reflect/Type;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Ljava/util/List;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static varargs takesGenericArguments([Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">([",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Ljava/util/List;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method

.method public static takesNoArguments()Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">()",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    return-object v0
.end method

.method public static targetsElement(Ljava/lang/annotation/ElementType;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">(",
            "Ljava/lang/annotation/ElementType;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/AnnotationTargetMatcher;-><init>(Ljava/lang/annotation/ElementType;)V

    return-object v0
.end method

.method public static whereAny(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/CollectionItemMatcher;

    invoke-direct {v0, p0}, Lnet/bytebuddy/matcher/CollectionItemMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-object v0
.end method

.method public static whereNone(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TT;>;)",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "Ljava/lang/Iterable<",
            "+TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->whereAny(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p0

    return-object p0
.end method
