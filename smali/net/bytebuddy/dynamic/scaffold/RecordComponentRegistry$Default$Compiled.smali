.class public Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compiled"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->entries:Ljava/util/List;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->entries:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->entries:Ljava/util/List;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public target(Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->matches(Lnet/bytebuddy/description/type/RecordComponentDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v0, p1}, Lnet/bytebuddy/dynamic/scaffold/RecordComponentRegistry$Default$Compiled$Entry;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/RecordComponentDescription;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$RecordComponentPool$Record$ForImplicitRecordComponent;-><init>(Lnet/bytebuddy/description/type/RecordComponentDescription;)V

    return-object v0
.end method
