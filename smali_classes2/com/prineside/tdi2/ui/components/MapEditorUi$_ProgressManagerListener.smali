.class Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;
.super Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MapEditorUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ProgressManagerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapEditorUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;Lcom/prineside/tdi2/ui/components/MapEditorUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;-><init>(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V

    return-void
.end method


# virtual methods
.method public itemsChanged(Lcom/prineside/tdi2/Item;II)V
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p2

    sget-object p3, Lcom/prineside/tdi2/enums/ItemType;->RESOURCE:Lcom/prineside/tdi2/enums/ItemType;

    if-eq p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p2

    sget-object p3, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-eq p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/enums/ItemType;->ACCELERATOR:Lcom/prineside/tdi2/enums/ItemType;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorUi$_ProgressManagerListener;->a:Lcom/prineside/tdi2/ui/components/MapEditorUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MapEditorUi;->i(Lcom/prineside/tdi2/ui/components/MapEditorUi;)V

    :cond_1
    return-void
.end method
