.class Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;
.super Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MoneyScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ProgressManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MoneyScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    return-void
.end method


# virtual methods
.method public doubleGainEnabled()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/MoneyScreen;->i(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    return-void
.end method

.method public itemsChanged(Lcom/prineside/tdi2/Item;II)V
    .locals 0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->ACCELERATOR:Lcom/prineside/tdi2/items/AcceleratorItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_BLUE:Lcom/prineside/tdi2/items/CaseKeyItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_ORANGE:Lcom/prineside/tdi2/items/CaseKeyItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_PURPLE:Lcom/prineside/tdi2/items/CaseKeyItem;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Item$D;->CASE_KEY_CYAN:Lcom/prineside/tdi2/items/CaseKeyItem;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/MoneyScreen$_ProgressManagerListener;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/MoneyScreen;->i(Lcom/prineside/tdi2/screens/MoneyScreen;)V

    :cond_1
    return-void
.end method
