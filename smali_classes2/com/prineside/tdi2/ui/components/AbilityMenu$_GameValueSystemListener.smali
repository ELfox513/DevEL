.class Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/GameValueSystem$GameValueSystemListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/AbilityMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_GameValueSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/AbilityMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/AbilityMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;->a:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/AbilityMenu;Lcom/prineside/tdi2/ui/components/AbilityMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/AbilityMenu;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recalculated([D)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;->a:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->update()V

    return-void
.end method
