.class public Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;
.super Lnet/bytebuddy/matcher/CachingMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/matcher/CachingMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithInlineEviction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/matcher/CachingMatcher<",
        "TS;>;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "Equality does not consider eviction size."
    value = {
        "EQ_DOESNT_OVERRIDE_EQUALS"
    }
.end annotation


# instance fields
.field private final evictionSize:I


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-TS;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "-TS;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/matcher/CachingMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/concurrent/ConcurrentMap;)V

    iput p3, p0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;->evictionSize:I

    return-void
.end method


# virtual methods
.method public onCacheMiss(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/matcher/CachingMatcher;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lnet/bytebuddy/matcher/CachingMatcher$WithInlineEviction;->evictionSize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/matcher/CachingMatcher;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/matcher/CachingMatcher;->onCacheMiss(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
