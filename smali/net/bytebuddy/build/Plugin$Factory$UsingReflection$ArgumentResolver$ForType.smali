.class public Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;
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
    name = "ForType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->type:Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->value:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Object;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TS;>;TS;)",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

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
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->type:Ljava/lang/Class;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->type:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->value:Ljava/lang/Object;

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

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(ILjava/lang/Class;)Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution;"
        }
    .end annotation

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->type:Ljava/lang/Class;

    if-ne p2, p1, :cond_0

    new-instance p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;

    iget-object p2, p0, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$ForType;->value:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Resolved;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;->INSTANCE:Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$ArgumentResolver$Resolution$Unresolved;

    :goto_0
    return-object p1
.end method
