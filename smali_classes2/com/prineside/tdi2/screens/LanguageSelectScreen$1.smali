.class Lcom/prineside/tdi2/screens/LanguageSelectScreen$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LanguageSelectScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final synthetic c:Lcom/prineside/tdi2/screens/LanguageSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LanguageSelectScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$1;->c:Lcom/prineside/tdi2/screens/LanguageSelectScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$1;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
