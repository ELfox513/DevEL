.class public Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/TypeResolutionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Active"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-direct {v0}, Lnet/bytebuddy/dynamic/NexusAccessor;-><init>()V

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    check-cast p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/NexusAccessor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/NexusAccessor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Avoids thread-contention."
        value = {
            "DMI_RANDOM_USED_ONLY_ONCE"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Active$Resolved;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;I)V

    return-object v0
.end method
