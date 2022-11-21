.class Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2$1;-><init>(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->a(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " <=> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->b(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay$2;->a:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->c(Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
