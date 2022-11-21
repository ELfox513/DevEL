.class public Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithDynamicType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final index:I

.field private final value:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->index:I

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

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
    iget v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->index:I

    check-cast p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;

    iget v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->index:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public resolve(ILjava/lang/Class;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->index:I

    if-eq v1, p1, :cond_0

    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    return-object p1

    :cond_0
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, p1, :cond_5

    const-class p1, Ljava/lang/Character;

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    new-instance p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

    invoke-direct {p1, p2}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    :cond_3
    :try_start_0
    const-string p1, "valueOf"

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v0, v3, v1

    invoke-virtual {p2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;

    const/4 v0, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object p2, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p2

    :catch_0
    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    :goto_1
    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_6

    new-instance p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;->value:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    :goto_2
    return-object p1
.end method
