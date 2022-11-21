.class public Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filtering"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/build/Plugin$Engine$Source;

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
.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Source;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/matcher/ElementMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Source;Lnet/bytebuddy/matcher/ElementMatcher;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/build/Plugin$Engine$Source;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-boolean p3, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->manifest:Z

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
    iget-boolean v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->manifest:Z

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;

    iget-boolean v3, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->manifest:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

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

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->manifest:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public read()Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;
    .locals 4

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Source;

    invoke-interface {v1}, Lnet/bytebuddy/build/Plugin$Engine$Source;->read()Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-boolean v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Filtering;->manifest:Z

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;Lnet/bytebuddy/matcher/ElementMatcher;Z)V

    return-object v0
.end method
