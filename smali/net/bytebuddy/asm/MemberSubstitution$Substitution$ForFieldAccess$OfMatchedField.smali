.class public Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfMatchedField"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

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

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
    .locals 1

    new-instance p2, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;

    new-instance p3, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver$ForElementMatcher;

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-direct {p3, p1, v0}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver$ForElementMatcher;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$FieldResolver;)V

    return-object p2
.end method
