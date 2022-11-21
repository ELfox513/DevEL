.class Lcom/prineside/tdi2/screens/SettingsScreen$2;
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
.field public final synthetic f:Lcom/prineside/tdi2/managers/LocaleManager$Locale;

.field public final synthetic g:Lcom/prineside/tdi2/screens/SettingsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;Lcom/prineside/tdi2/managers/LocaleManager$Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$2;->g:Lcom/prineside/tdi2/screens/SettingsScreen;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/SettingsScreen$2;->f:Lcom/prineside/tdi2/managers/LocaleManager$Locale;

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen$2;->g:Lcom/prineside/tdi2/screens/SettingsScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$2;->f:Lcom/prineside/tdi2/managers/LocaleManager$Locale;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager$Locale;->alias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/SettingsScreen;->j(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V

    return-void
.end method
