.class public Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$1;-><init>(Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform$2;-><init>(Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "font must have disabled markup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
