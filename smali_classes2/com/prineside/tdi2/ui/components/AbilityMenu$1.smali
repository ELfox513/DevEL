.class Lcom/prineside/tdi2/ui/components/AbilityMenu$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/AbilityMenu;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic q:Lcom/prineside/tdi2/ui/components/AbilityMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/AbilityMenu;ILcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->q:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    iput p2, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->o:I

    iput-object p3, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->p:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->q:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a(Lcom/prineside/tdi2/ui/components/AbilityMenu;)[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    move-result-object p1

    iget p2, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->o:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->p:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/AbilitySystem;->cancelUsingAbility()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->p:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->q:Lcom/prineside/tdi2/ui/components/AbilityMenu;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a(Lcom/prineside/tdi2/ui/components/AbilityMenu;)[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    move-result-object p2

    iget p3, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->o:I

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/AbilitySystem;->startUsingAbility(Lcom/prineside/tdi2/enums/AbilityType;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;->p:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method
