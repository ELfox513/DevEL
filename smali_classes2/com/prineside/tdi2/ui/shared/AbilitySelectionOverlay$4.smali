.class Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->c(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)Lcom/prineside/tdi2/utils/ObjectRetriever;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->d(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-static {v1, v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->e(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->c(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)Lcom/prineside/tdi2/utils/ObjectRetriever;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$4;->a:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->setVisible(Z)V

    return-void
.end method
