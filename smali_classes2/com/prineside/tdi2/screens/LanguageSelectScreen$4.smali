.class Lcom/prineside/tdi2/screens/LanguageSelectScreen$4;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
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
.field public final synthetic o:Lcom/prineside/tdi2/screens/LanguageSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LanguageSelectScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LanguageSelectScreen$4;->o:Lcom/prineside/tdi2/screens/LanguageSelectScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object p3, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->CN_STORE_LINK:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method
