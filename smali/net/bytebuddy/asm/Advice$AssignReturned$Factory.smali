.class public Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final SKIP_ON_DEFAULT_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
.field private final exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$AsScalar;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "skipOnDefaultValue"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->SKIP_ON_DEFAULT_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Enum;

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToThis$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToThis$Handler$Factory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToReturned$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToReturned$Handler$Factory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToThrown$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToThrown$Handler$Factory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory$NoOp;

    invoke-direct {p0, v0, v1}, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;-><init>(Ljava/util/List;Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->factories:Ljava/util/List;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->factories:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->factories:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->factories:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/Advice$PostProcessor;
    .locals 11

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate registration of handler for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v9, 0x1

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    const-class v7, Lnet/bytebuddy/asm/Advice$AssignReturned$AsScalar;

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v2, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->SKIP_ON_DEFAULT_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v5, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2

    const-class v5, Ljava/lang/Boolean;

    invoke-interface {v2, v5}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6}, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;->getAnnotationType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5, v8}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->prepare(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v8

    invoke-interface {v6, p1, p2, v8}, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;->make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;ZLnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate handler registration for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    return-object p1

    :cond_7
    if-nez v2, :cond_8

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ForArray;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p1, v2, p2, v1}, Lnet/bytebuddy/asm/Advice$AssignReturned$ForArray;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;ZLjava/util/Collection;)V

    goto :goto_2

    :cond_8
    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ForScalar;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    move-object v5, v0

    move v8, p2

    invoke-direct/range {v5 .. v10}, Lnet/bytebuddy/asm/Advice$AssignReturned$ForScalar;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;ZZLjava/util/Collection;)V

    :goto_2
    return-object v0
.end method

.method public with(Ljava/lang/Class;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;",
            ">;)",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory$Simple;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory$Simple;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->with(Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;)Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;

    move-result-object p1

    return-object p1
.end method

.method public varargs with(Ljava/lang/Class;[Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;)Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;",
            ")",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->with(Ljava/lang/Class;Ljava/util/List;)Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;)Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->factories:Ljava/util/List;

    invoke-static {v1, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->exceptionHandlerFactory:Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;-><init>(Ljava/util/List;Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;)V

    return-object v0
.end method

.method public withSuppressed(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->withSuppressed(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;

    move-result-object p1

    return-object p1
.end method

.method public withSuppressed(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;
    .locals 3

    const-class v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;->factories:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory$Enabled;

    invoke-direct {v2, p1}, Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory$Enabled;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$AssignReturned$Factory;-><init>(Ljava/util/List;Lnet/bytebuddy/asm/Advice$AssignReturned$ExceptionHandler$Factory;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a throwable type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
