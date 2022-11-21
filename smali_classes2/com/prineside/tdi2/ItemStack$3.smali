.class Lcom/prineside/tdi2/ItemStack$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ItemStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/ItemStack;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ItemStack;)I
    .locals 1

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->RARITY:Lcom/prineside/tdi2/enums/ItemSortingType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/Item;->getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I

    move-result p2

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Item;->getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I

    move-result p1

    invoke-static {p2, p1}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/ItemStack;

    check-cast p2, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/ItemStack$3;->compare(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ItemStack;)I

    move-result p1

    return p1
.end method
