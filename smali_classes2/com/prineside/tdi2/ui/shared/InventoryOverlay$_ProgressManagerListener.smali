.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;
.super Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ProgressManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)V

    return-void
.end method


# virtual methods
.method public itemsChanged(Lcom/prineside/tdi2/Item;II)V
    .locals 2

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->r(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->s()[Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p3}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->t(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget-object p2, p2, p3

    iget-object p2, p2, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->subcategories:[Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    const/4 p3, 0x0

    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    aget-object v0, p2, p3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getSubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$_ProgressManagerListener;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->v(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Z)Z

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
