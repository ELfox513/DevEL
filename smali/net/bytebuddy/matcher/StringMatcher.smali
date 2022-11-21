.class public Lnet/bytebuddy/matcher/StringMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/StringMatcher$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/matcher/StringMatcher$Mode;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    return-void
.end method


# virtual methods
.method public bridge synthetic doMatch(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/StringMatcher;->doMatch(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public doMatch(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/matcher/StringMatcher$Mode;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    check-cast p1, Lnet/bytebuddy/matcher/StringMatcher;

    iget-object v3, p1, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->mode:Lnet/bytebuddy/matcher/StringMatcher$Mode;

    invoke-virtual {v1}, Lnet/bytebuddy/matcher/StringMatcher$Mode;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/bytebuddy/matcher/StringMatcher;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
