.class Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>(Ljava/util/Iterator;Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    invoke-interface {p2, v0}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->current:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Iterator;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/build/Plugin$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;-><init>(Ljava/util/Iterator;Lnet/bytebuddy/matcher/ElementMatcher;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->current:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->next()Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/bytebuddy/build/Plugin$Engine$Source$Element;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->current:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->current:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {v2, v1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->current:Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$Filtering$FilteringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
