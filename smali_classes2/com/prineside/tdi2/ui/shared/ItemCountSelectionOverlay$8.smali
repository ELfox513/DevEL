.class Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->d(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->d(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->c(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$ItemCountSelectionListener;->selectionConfirmed(I)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->hide()V

    return-void
.end method
