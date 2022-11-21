.class Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/Tower;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;Lcom/prineside/tdi2/Tower;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;->a:Lcom/prineside/tdi2/Tower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strategyChanged(Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;->a:Lcom/prineside/tdi2/Tower;

    iput-object p1, v0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->notifySelectedTileChanged()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu$11;->b:Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;

    iget-object v0, p1, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->currentItem:Lcom/prineside/tdi2/Item;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;->setItem(Lcom/prineside/tdi2/Item;)V

    return-void
.end method
