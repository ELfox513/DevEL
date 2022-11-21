.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DeveloperConsole;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->c:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->a:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->a:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->a:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->b:Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$CustomSettingsUI;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->a:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
