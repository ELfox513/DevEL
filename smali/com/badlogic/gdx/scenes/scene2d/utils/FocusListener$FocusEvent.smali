.class public Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
.super Lcom/badlogic/gdx/scenes/scene2d/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;
    }
.end annotation


# instance fields
.field public t:Z

.field public u:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

.field public v:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->v:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->u:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    return-object v0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->t:Z

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->v:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->t:Z

    return-void
.end method

.method public setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->v:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->u:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    return-void
.end method
