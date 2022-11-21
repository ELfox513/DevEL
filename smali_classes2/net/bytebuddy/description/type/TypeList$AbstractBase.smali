.class public abstract Lnet/bytebuddy/description/type/TypeList$AbstractBase;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        "Lnet/bytebuddy/description/type/TypeList;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackSize()I
    .locals 1

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public toInternalNames()[Ljava/lang/String;
    .locals 6
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lnet/bytebuddy/description/type/TypeList;->NO_INTERFACES:[Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeList;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    return-object p1
.end method
