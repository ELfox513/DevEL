.class Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
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
.field public final synthetic b:Lcom/prineside/tdi2/screens/SettingsScreen;

.field public final synthetic c:Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;Lcom/prineside/tdi2/screens/SettingsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$2;->c:Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$2;->b:Lcom/prineside/tdi2/screens/SettingsScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$2;->c:Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->b:Z

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->a(Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton$2;->c:Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->b:Z

    invoke-static {p1}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->a(Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;)V

    return-void
.end method
