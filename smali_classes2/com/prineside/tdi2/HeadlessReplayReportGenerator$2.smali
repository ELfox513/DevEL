.class Lcom/prineside/tdi2/HeadlessReplayReportGenerator$2;
.super Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->start(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public enemyLootAdded(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Item;IZ)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    if-ne p2, p1, :cond_0

    invoke-static {p3}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->b(I)I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Item$D;->BIT_DUST:Lcom/prineside/tdi2/items/BitDustItem;

    if-ne p2, p1, :cond_1

    invoke-static {p3}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->c(I)I

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->d()[I

    move-result-object p1

    invoke-virtual {p2}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p3, p1, p2

    add-int/lit8 p3, p3, 0x1

    aput p3, p1, p2

    :cond_2
    return-void
.end method
