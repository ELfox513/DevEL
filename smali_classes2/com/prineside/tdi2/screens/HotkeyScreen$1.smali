.class Lcom/prineside/tdi2/screens/HotkeyScreen$1;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/HotkeyScreen;->l(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/IntArray;

.field public final synthetic b:Lcom/prineside/tdi2/screens/HotkeyScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/HotkeyScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->b:Lcom/prineside/tdi2/screens/HotkeyScreen;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->a:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->a:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->a:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->b:Lcom/prineside/tdi2/screens/HotkeyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->e(Lcom/prineside/tdi2/screens/HotkeyScreen;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->b:Lcom/prineside/tdi2/screens/HotkeyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->e(Lcom/prineside/tdi2/screens/HotkeyScreen;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->a:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->addAll(Lcom/badlogic/gdx/utils/IntArray;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->b:Lcom/prineside/tdi2/screens/HotkeyScreen;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->a:Lcom/badlogic/gdx/utils/IntArray;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->f(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/badlogic/gdx/utils/IntArray;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(I)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->a:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->removeValue(I)Z

    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;->b:Lcom/prineside/tdi2/screens/HotkeyScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->e(Lcom/prineside/tdi2/screens/HotkeyScreen;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->f(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/badlogic/gdx/utils/IntArray;)V

    const/4 p1, 0x0

    return p1
.end method
