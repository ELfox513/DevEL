.class public Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;
.super Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForGivenType;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForGivenType"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForGivenType;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForGivenType;->equals(Ljava/lang/Object;)Z

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

    invoke-super {p0}, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForGivenType;->hashCode()I

    move-result v0

    return v0
.end method
