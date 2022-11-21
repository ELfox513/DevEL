.class public Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForEntryPoint"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entryPoint:Lnet/bytebuddy/build/EntryPoint;

.field private final methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/EntryPoint;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    return-void
.end method


# virtual methods
.method public builder(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/ByteBuddy;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    invoke-interface {v0, p2, p1, p3, v1}, Lnet/bytebuddy/build/EntryPoint;->transform(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

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
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->entryPoint:Lnet/bytebuddy/build/EntryPoint;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$TypeStrategy$ForEntryPoint;->methodNameTransformer:Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
