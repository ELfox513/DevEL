.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DeveloperConsole;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

.field public final synthetic b:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;->c:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;->b:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;->b:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$2;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->b:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
