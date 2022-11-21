.class Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Logger$LoggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/DeveloperConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_LoggerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/ui/shared/DeveloperConsole$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;-><init>(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;)V

    return-void
.end method


# virtual methods
.method public newEntry(Lcom/prineside/tdi2/Logger$LogEntry;)V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_CONSOLE_DISABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole$_LoggerListener;->a:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    iget-object v1, p1, Lcom/prineside/tdi2/Logger$LogEntry;->entryType:Lcom/prineside/tdi2/Logger$EntryType;

    sget-object v2, Lcom/prineside/tdi2/Logger$EntryType;->ERROR:Lcom/prineside/tdi2/Logger$EntryType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->b()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->c()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;->d(Lcom/prineside/tdi2/ui/shared/DeveloperConsole;Lcom/prineside/tdi2/Logger$LogEntry;Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method
