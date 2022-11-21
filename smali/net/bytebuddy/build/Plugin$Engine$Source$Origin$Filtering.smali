.class public Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filtering"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

.field private final manifest:Z

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;Lnet/bytebuddy/matcher/ElementMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;Lnet/bytebuddy/matcher/ElementMatcher;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-boolean p3, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->manifest:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
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
    iget-boolean v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->manifest:Z

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;

    iget-boolean v3, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->manifest:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getClassFileLocator()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    invoke-interface {v0}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;->getClassFileLocator()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-boolean v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->manifest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    invoke-interface {v0}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;->NO_MANIFEST:Ljava/util/jar/Manifest;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->manifest:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;-><init>(Ljava/util/Iterator;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/build/Plugin$1;)V

    return-object v0
.end method
