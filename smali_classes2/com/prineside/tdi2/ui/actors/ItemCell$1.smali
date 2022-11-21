.class Lcom/prineside/tdi2/ui/actors/ItemCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/ItemCell;->reveal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/ItemCell;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ItemCell;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$1;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$1;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCovered(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$1;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->p(Lcom/prineside/tdi2/ui/actors/ItemCell;)Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playRarity(Lcom/prineside/tdi2/enums/RarityType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell$1;->a:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->shine(ZZ)V

    return-void
.end method
