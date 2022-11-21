.class Lcom/prineside/tdi2/GameSystemProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/GameSystemProvider;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/GameSystem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/GameSystemProvider$2;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/GameSystem;Lcom/prineside/tdi2/GameSystem;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/prineside/tdi2/GameSystemProvider;->c()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/GameSystemProvider;->c()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/GameSystemProvider;->c()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_1

    move v2, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/GameSystem;

    check-cast p2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/GameSystemProvider$2;->compare(Lcom/prineside/tdi2/GameSystem;Lcom/prineside/tdi2/GameSystem;)I

    move-result p1

    return p1
.end method
