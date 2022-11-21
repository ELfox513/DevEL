.class Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;-><init>(ZLcom/prineside/tdi2/GameValueProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;->b:Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;->b:Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->p(Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;->b:Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->update()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;->b:Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->p(Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;->b:Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->update()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method
