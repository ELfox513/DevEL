.class Lcom/prineside/tdi2/AndroidLauncher$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$GameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/AndroidLauncher;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/AndroidLauncher;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/AndroidLauncher$8;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$8;->d()V

    return-void
.end method

.method public static synthetic b(Lk5/e;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher$8;->e(Lk5/e;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/AndroidLauncher$8;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/AndroidLauncher$8;->f()V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->Q(Lcom/prineside/tdi2/AndroidLauncher;)Lk5/c;

    move-result-object v0

    invoke-interface {v0}, Lk5/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-virtual {v0}, Lcom/prineside/tdi2/AndroidLauncher;->loadThatUglyConsentForm()V

    goto :goto_0

    :cond_0
    const-string v0, "AndroidLauncher"

    const-string v1, "consentInformation.isConsentFormAvailable() is false"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(Lk5/e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed consentInformation.requestConsentInfoUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk5/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk5/e;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AndroidLauncher"

    invoke-static {v0, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic f()V
    .locals 5

    new-instance v0, Lk5/d$a;

    invoke-direct {v0}, Lk5/d$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk5/d$a;->b(Z)Lk5/d$a;

    invoke-virtual {v0}, Lk5/d$a;->a()Lk5/d;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v1}, Lk5/f;->a(Landroid/content/Context;)Lk5/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prineside/tdi2/AndroidLauncher;->R(Lcom/prineside/tdi2/AndroidLauncher;Lk5/c;)Lk5/c;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v1}, Lcom/prineside/tdi2/AndroidLauncher;->Q(Lcom/prineside/tdi2/AndroidLauncher;)Lk5/c;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    new-instance v3, Lcom/prineside/tdi2/w0;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/w0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$8;)V

    new-instance v4, Lcom/prineside/tdi2/x0;

    invoke-direct {v4}, Lcom/prineside/tdi2/x0;-><init>()V

    invoke-interface {v1, v2, v0, v3, v4}, Lk5/c;->a(Landroid/app/Activity;Lk5/d;Lk5/c$b;Lk5/c$a;)V

    return-void
.end method


# virtual methods
.method public gameLoaded()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game loaded, package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidLauncher"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$8;->a:Lcom/prineside/tdi2/AndroidLauncher;

    new-instance v1, Lcom/prineside/tdi2/v0;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/v0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public gameStartedLoading()V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method
