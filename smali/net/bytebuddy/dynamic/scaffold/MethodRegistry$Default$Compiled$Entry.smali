.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

.field private final bridgeMethod:Z

.field private final bridgeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final visibility:Lnet/bytebuddy/description/modifier/Visibility;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/description/modifier/Visibility;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;",
            "Lnet/bytebuddy/description/modifier/Visibility;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    iput-boolean p6, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    return-void
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Z)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 4

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForNonImplementedMethod;

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-direct {p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForNonImplementedMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;->assemble(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-static {v0, p1, p2, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$AccessBridgeWrapper;->of(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/Set;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    :cond_1
    return-object v0
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
    iget-boolean v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;

    iget-boolean v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeTypes:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->visibility:Lnet/bytebuddy/description/modifier/Visibility;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Default$Compiled$Entry;->bridgeMethod:Z

    add-int/2addr v0, v1

    return v0
.end method
