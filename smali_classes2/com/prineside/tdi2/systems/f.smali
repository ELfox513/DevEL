.class public final synthetic Lcom/prineside/tdi2/systems/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/MapEditorSystem;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/MapEditorSystem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/f;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/f;->a:Lcom/prineside/tdi2/systems/MapEditorSystem;

    check-cast p1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/systems/MapEditorSystem;->a(Lcom/prineside/tdi2/systems/MapEditorSystem;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method
