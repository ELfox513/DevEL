.class public Lnet/bytebuddy/NamingStrategy$SuffixingRandom;
.super Lnet/bytebuddy/NamingStrategy$Suffixing;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuffixingRandom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final randomString:Lnet/bytebuddy/utility/RandomString;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->IGNORE:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;)V
    .locals 1

    const-string v0, "net.bytebuddy.renamed"

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {v0}, Lnet/bytebuddy/utility/RandomString;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;Lnet/bytebuddy/utility/RandomString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;Lnet/bytebuddy/utility/RandomString;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/NamingStrategy$Suffixing;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    iput-object p4, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;Ljava/lang/String;Lnet/bytebuddy/utility/RandomString;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;Lnet/bytebuddy/utility/RandomString;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/NamingStrategy$Suffixing;->equals(Ljava/lang/Object;)Z

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

    invoke-super {p0}, Lnet/bytebuddy/NamingStrategy$Suffixing;->hashCode()I

    move-result v0

    return v0
.end method

.method public name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lnet/bytebuddy/NamingStrategy$Suffixing;->name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
