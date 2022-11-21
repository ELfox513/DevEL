.class Lcom/prineside/tdi2/screens/SettingsScreen$3;
.super Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/SettingsScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/prineside/tdi2/screens/SettingsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$3;->f:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->CN_STORE_LINK:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method
