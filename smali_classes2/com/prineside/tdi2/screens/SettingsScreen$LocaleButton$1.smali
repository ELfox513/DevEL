.class Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/SettingsScreen;

.field public final synthetic p:Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;Lcom/prineside/tdi2/screens/SettingsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$1;->p:Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$1;->o:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$1;->p:Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;

    invoke-virtual {p1}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->onClick()V

    return-void
.end method
