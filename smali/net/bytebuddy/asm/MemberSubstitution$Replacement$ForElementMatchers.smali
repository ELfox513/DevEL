.class public Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForElementMatchers"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final includeSuperCalls:Z

.field private final includeVirtualCalls:Z

.field private final matchFieldRead:Z

.field private final matchFieldWrite:Z

.field private final methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;ZZZZLnet/bytebuddy/asm/MemberSubstitution$Substitution;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;ZZZZ",
            "Lnet/bytebuddy/asm/MemberSubstitution$Substitution;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-boolean p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldRead:Z

    iput-boolean p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldWrite:Z

    iput-boolean p5, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeVirtualCalls:Z

    iput-boolean p6, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeSuperCalls:Z

    iput-object p7, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    return-void
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 0

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldWrite:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldRead:Z

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {p1, p3}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;

    invoke-interface {p3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    iget-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    invoke-direct {p1, p2, p3, p4}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/asm/MemberSubstitution$Substitution;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    :goto_1
    return-object p1
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 0

    iget-boolean p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeVirtualCalls:Z

    iget-boolean p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeSuperCalls:Z

    invoke-virtual {p5, p1, p2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;->matches(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {p1, p4}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;

    iget-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    invoke-direct {p1, p3, p4, p2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/asm/MemberSubstitution$Substitution;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    :goto_0
    return-object p1
.end method

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldRead:Z

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldRead:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldWrite:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldWrite:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeVirtualCalls:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeVirtualCalls:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeSuperCalls:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeSuperCalls:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldRead:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->matchFieldWrite:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeVirtualCalls:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->includeSuperCalls:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
