.class public Lnet/bytebuddy/matcher/MethodSortMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    return-void
.end method

.method public static of(Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">(",
            "Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->getMatcher()Lnet/bytebuddy/matcher/MethodSortMatcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic doMatch(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/MethodSortMatcher;->doMatch(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    return p1
.end method

.method public doMatch(Lnet/bytebuddy/description/method/MethodDescription;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->isSort(Lnet/bytebuddy/description/method/MethodDescription;)Z

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
    iget-object v2, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    check-cast p1, Lnet/bytebuddy/matcher/MethodSortMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$ForNonNullValues;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodSortMatcher;->sort:Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;

    invoke-virtual {v0}, Lnet/bytebuddy/matcher/MethodSortMatcher$Sort;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
