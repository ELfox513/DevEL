.class public Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/LatentMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/LatentMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForFieldToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/LatentMatcher<",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final token:Lnet/bytebuddy/description/field/FieldDescription$Token;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/field/FieldDescription$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

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
    iget-object v2, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    check-cast p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;

    iget-object p1, p1, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;

    iget-object v1, p0, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken;->token:Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->asSignatureToken(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$ForFieldToken$ResolvedMatcher;-><init>(Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;)V

    return-object v0
.end method
