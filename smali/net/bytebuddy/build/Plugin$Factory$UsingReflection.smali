.class public Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingReflection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;,
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;,
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final argumentResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/bytebuddy/build/Plugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/bytebuddy/build/Plugin;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/bytebuddy/build/Plugin;",
            ">;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->type:Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->argumentResolvers:Ljava/util/List;

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
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->type:Ljava/lang/Class;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->type:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->argumentResolvers:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->argumentResolvers:Ljava/util/List;

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

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->argumentResolvers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make()Lnet/bytebuddy/build/Plugin;
    .locals 15

    new-instance v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Unresolved;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Unresolved;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v11, v7, v9

    iget-object v12, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->argumentResolvers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;

    invoke-interface {v13, v10, v11}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;->resolve(ILjava/lang/Class;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;

    move-result-object v13

    invoke-interface {v13}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;->isResolved()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;->getArgument()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;

    invoke-direct {v7, v5, v6}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;)V

    invoke-interface {v0, v7}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;->replaceBy(Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator$Resolved;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;

    move-result-object v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Instantiator;->instantiate()Lnet/bytebuddy/build/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;",
            ">;)",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->type:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->argumentResolvers:Ljava/util/List;

    invoke-static {p1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs with([Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;->with(Ljava/util/List;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection;

    move-result-object p1

    return-object p1
.end method
