.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$6;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$6;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$6;->b:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$6;->a:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabConfig;->tabType:Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->z(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/shared/InventoryOverlay$TabType;)V

    return-void
.end method
