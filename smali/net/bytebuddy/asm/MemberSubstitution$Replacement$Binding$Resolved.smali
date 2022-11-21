.class public Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolved"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

.field private final target:Lnet/bytebuddy/description/ByteCodeElement;

.field private final targetType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/asm/MemberSubstitution$Substitution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->targetType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->target:Lnet/bytebuddy/description/ByteCodeElement;

    iput-object p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->targetType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->targetType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->target:Lnet/bytebuddy/description/ByteCodeElement;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->target:Lnet/bytebuddy/description/ByteCodeElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->targetType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->target:Lnet/bytebuddy/description/ByteCodeElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isBound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->substitution:Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->targetType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Resolved;->target:Lnet/bytebuddy/description/ByteCodeElement;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/ByteCodeElement;Lnet/bytebuddy/description/type/TypeList$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    return-object p1
.end method
