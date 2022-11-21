.class public Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/modifier/ModifierContributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/modifier/ModifierContributor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final modifierContributors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->modifierContributors:Ljava/util/Collection;

    return-void
.end method

.method public static of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lnet/bytebuddy/description/modifier/ModifierContributor;",
            ">(",
            "Ljava/util/Collection<",
            "+TS;>;)",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
            ")",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ")",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForParameter;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForParameter;",
            ")",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForParameter;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
            ")",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p0

    return-object p0
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
    iget-object v2, p0, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->modifierContributors:Ljava/util/Collection;

    check-cast p1, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    iget-object p1, p1, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->modifierContributors:Ljava/util/Collection;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->modifierContributors:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result v0

    return v0
.end method

.method public resolve(I)I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->modifierContributors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/modifier/ModifierContributor;

    invoke-interface {v1}, Lnet/bytebuddy/description/modifier/ModifierContributor;->getRange()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr p1, v2

    invoke-interface {v1}, Lnet/bytebuddy/description/modifier/ModifierContributor;->getMask()I

    move-result v1

    or-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method
