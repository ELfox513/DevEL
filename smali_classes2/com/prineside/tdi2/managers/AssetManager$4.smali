.class Lcom/prineside/tdi2/managers/AssetManager$4;
.super Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener$SettingsManagerListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AssetManager;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AssetManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AssetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager$4;->a:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-direct {p0}, Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener$SettingsManagerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public settingsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager$4;->a:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AssetManager;->b(Lcom/prineside/tdi2/managers/AssetManager;)V

    return-void
.end method
