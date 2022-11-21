.class Lcom/prineside/tdi2/modifiers/BalanceModifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/modifiers/BalanceModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;",
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
.method public compare(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)I
    .locals 0

    invoke-static {p2}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->a(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F

    move-result p2

    invoke-static {p1}, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->a(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    check-cast p2, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/modifiers/BalanceModifier$1;->compare(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)I

    move-result p1

    return p1
.end method
