.class public Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;,
        Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;->getRecordComponentAttributeAppender()Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;->getRecordComponentAttributeAppender()Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    move-result-object v4

    invoke-interface {v4, p1}, Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;

    move-result-object v4

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;->getRecordComponentAttributeAppender()Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;

    invoke-virtual {v3, p1}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v6

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;->getTransformer()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v3

    invoke-direct {v5, v6, v4, v3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;

    invoke-direct {v1, p1, v0}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v1
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;

    invoke-direct {v1, p1, p2, p3}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/RecordComponentAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;-><init>(Ljava/util/List;)V

    return-object p1
.end method
