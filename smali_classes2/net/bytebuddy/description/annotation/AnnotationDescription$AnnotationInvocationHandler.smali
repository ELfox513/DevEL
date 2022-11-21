.class public Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationInvocationHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final ANNOTATION_TYPE:Ljava/lang/String; = "annotationType"

.field private static final EQUALS:Ljava/lang/String; = "equals"

.field private static final HASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final NO_ARGUMENT:[Ljava/lang/Object;

.field private static final TO_STRING:Ljava/lang/String; = "toString"


# instance fields
.field private final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private transient synthetic hashCode:I

.field private final values:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->NO_ARGUMENT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private equalsRepresentation(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    instance-of v2, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    if-eqz v2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :try_start_0
    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    sget-object v4, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->NO_ARGUMENT:[Ljava/lang/Object;

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->represents(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_3

    :catch_0
    return v1

    :cond_4
    return v0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not access annotation property"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    return v1
.end method

.method private hashCodeRepresentation()I
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isDefined()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x7f

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static of(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/annotation/Annotation;
    .locals 9
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;>;)TS;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;

    new-instance v7, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v7, v8}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription$ForLoadedAnnotation;->asValue(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v6

    :goto_1
    invoke-interface {v6, p0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    new-instance v7, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v7, v5}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v6, v7}, Lnet/bytebuddy/description/annotation/AnnotationValue;->filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v6

    invoke-interface {v6, p0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    aput-object p1, p2, v3

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    invoke-direct {v1, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    invoke-static {p0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    iget-object v3, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    iget-object v5, p1, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "hashCode"
    .end annotation

    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCode:I

    goto :goto_2

    :cond_2
    iput v0, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCode:I

    :goto_2
    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->hashCodeRepresentation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->equalsRepresentation(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "toString"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->toStringRepresentation()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "annotationType"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected method: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toStringRepresentation()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->annotationType:Ljava/lang/Class;

    invoke-static {v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->appendType(Ljava/lang/StringBuilder;Lnet/bytebuddy/description/type/TypeDescription;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->isDefined()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v4, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->CURRENT:Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/description/annotation/AnnotationDescription$AnnotationInvocationHandler;->values:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lnet/bytebuddy/description/annotation/AnnotationDescription$RenderingDispatcher;->appendPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
