.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;->a:Lcom/prineside/tdi2/Item$UsableItem;

    invoke-interface {v0}, Lcom/prineside/tdi2/Item$UsableItem;->useItem()Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20$1;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$20;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update()V

    return-void
.end method
