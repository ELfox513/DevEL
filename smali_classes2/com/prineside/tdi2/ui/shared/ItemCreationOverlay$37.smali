.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/gates/BarrierTypeGate;

.field public final synthetic b:Lcom/prineside/tdi2/enums/EnemyType;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/gates/BarrierTypeGate;Lcom/prineside/tdi2/enums/EnemyType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->a:Lcom/prineside/tdi2/gates/BarrierTypeGate;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->b:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->a:Lcom/prineside/tdi2/gates/BarrierTypeGate;

    iget-object p1, p1, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->b:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->a:Lcom/prineside/tdi2/gates/BarrierTypeGate;

    iget-object p1, p1, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->b:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$37;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
