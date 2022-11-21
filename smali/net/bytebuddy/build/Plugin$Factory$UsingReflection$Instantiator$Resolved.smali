.class public Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolved"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lnet/bytebuddy/build/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lnet/bytebuddy/build/Plugin;",
            ">;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->arguments:Ljava/util/List;

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
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->arguments:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->arguments:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lnet/bytebuddy/build/Plugin;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->arguments:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public instantiate()Lnet/bytebuddy/build/Plugin;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->arguments:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/build/Plugin;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during construction of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate plugin via "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replaceBy(Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    const-class v1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;

    invoke-virtual {p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-class v2, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;->value()I

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;->value()I

    move-result v2

    :goto_1
    if-le v0, v2, :cond_2

    return-object p0

    :cond_2
    if-ge v0, v2, :cond_3

    return-object p1

    :cond_3
    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-le v1, v2, :cond_4

    return-object p0

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_5

    return-object p1

    :cond_5
    new-instance v1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p1

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v1, v2, p1, v0, v3}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Ambiguous;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;II)V

    return-object v1
.end method
