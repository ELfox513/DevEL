.class Lcom/prineside/tdi2/managers/SettingsManager$1;
.super Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/SettingsManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/SettingsManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/SettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/SettingsManager$1;->a:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener$PreferencesManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public reloaded()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/SettingsManager$1;->a:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->a(Lcom/prineside/tdi2/managers/SettingsManager;)V

    return-void
.end method
