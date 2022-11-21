.class Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1$1;-><init>(Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->isPasswordMode()Z

    move-result p2

    const-string p3, ""

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, p3, v0, p3}, Lcom/prineside/tdi2/ActionResolver;->getMobilePasswordInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;->o:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, p3, v0, p3}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
