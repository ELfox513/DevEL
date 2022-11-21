.class public Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForIndex"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex$WithDynamicType;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final WRAPPER_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:Ljava/lang/Object;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->WRAPPER_TYPES:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->index:I

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->WRAPPER_TYPES:Ljava/util/Map;

    return-object v0
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
    iget v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->index:I

    check-cast p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;

    iget v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->index:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public resolve(ILjava/lang/Class;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;"
        }
    .end annotation

    iget v0, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->index:I

    if-eq v0, p1, :cond_0

    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->WRAPPER_TYPES:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    :goto_0
    return-object p1

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForIndex;->value:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;-><init>(Ljava/lang/Object;)V

    :goto_2
    return-object p1
.end method
