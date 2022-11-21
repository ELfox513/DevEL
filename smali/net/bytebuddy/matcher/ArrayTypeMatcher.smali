.class public Lnet/bytebuddy/matcher/ArrayTypeMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/type/TypeDefinition;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doMatch(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/ArrayTypeMatcher;->doMatch(Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result p1

    return p1
.end method

.method public doMatch(Lnet/bytebuddy/description/type/TypeDefinition;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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

    move-result-object p1

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "isArray()"

    return-object v0
.end method
