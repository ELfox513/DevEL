.class Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$7;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$7;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$7;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$7;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->setSelectedCount(I)V

    return-void
.end method
