.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnresolvedType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

.field private final auxiliaryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation
.end field

.field private final binaryRepresentation:[B


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getBinaryRepresentation()[B
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toDynamicType(Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<",
            "TS;>;"
        }
    .end annotation

    new-instance v6, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->a:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->binaryRepresentation:[B

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v0, v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->auxiliaryTypes:Ljava/util/List;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$UnresolvedType;->auxiliaryTypes:Ljava/util/List;

    invoke-static {v0, v4}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/dynamic/DynamicType$Default$Unloaded;-><init>(Lnet/bytebuddy/description/type/TypeDescription;[BLnet/bytebuddy/implementation/LoadedTypeInitializer;Ljava/util/List;Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;)V

    return-object v6
.end method
