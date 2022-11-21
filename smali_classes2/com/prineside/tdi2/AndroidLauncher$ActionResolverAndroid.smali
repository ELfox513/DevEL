.class public Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;
.super Lcom/prineside/tdi2/ActionResolver$ActionResolverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/AndroidLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionResolverAndroid"
.end annotation


# instance fields
.field public b:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

.field public c:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

.field public final synthetic d:Lcom/prineside/tdi2/AndroidLauncher;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/AndroidLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-direct {p0}, Lcom/prineside/tdi2/ActionResolver$ActionResolverAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->s(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->r(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->w(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic e(Lj5/i;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->y(Lj5/i;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->x(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/utils/ObjectRetriever;Lj3/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->v(Lcom/prineside/tdi2/utils/ObjectRetriever;Lj3/a;)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->z(Lcom/prineside/tdi2/enums/AchievementType;)V

    return-void
.end method

.method public static synthetic i(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->q(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/utils/ObjectRetriever;Lj3/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->t(Lcom/prineside/tdi2/utils/ObjectRetriever;Lj3/a;)V

    return-void
.end method

.method public static synthetic k(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->n(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic l(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->p(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->u(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic n(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/prineside/tdi2/z0;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/z0;-><init>(Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-direct {p1, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    const/16 p2, 0x81

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    const p3, 0x104000a

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/prineside/tdi2/j1;

    invoke-direct {p3, p4, p1}, Lcom/prineside/tdi2/j1;-><init>(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V

    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    const/high16 p2, 0x1040000

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/prineside/tdi2/k1;

    invoke-direct {p2, p4}, Lcom/prineside/tdi2/k1;-><init>(Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/prineside/tdi2/l1;

    invoke-direct {p1, p4}, Lcom/prineside/tdi2/l1;-><init>(Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static synthetic p(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/badlogic/gdx/Input$TextInputListener;->input(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p3, Lcom/prineside/tdi2/a1;

    invoke-direct {p3, p0, p1}, Lcom/prineside/tdi2/a1;-><init>(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V

    invoke-interface {p2, p3}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic r(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/prineside/tdi2/z0;

    invoke-direct {p2, p0}, Lcom/prineside/tdi2/z0;-><init>(Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic t(Lcom/prineside/tdi2/utils/ObjectRetriever;Lj3/a;)V
    .locals 1

    const-string p1, "AndroidLauncher"

    const-string v0, "The user earned the reward."

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/b1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/b1;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic u(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic v(Lcom/prineside/tdi2/utils/ObjectRetriever;Lj3/a;)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/c1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/c1;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic w(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic x(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->r(Lcom/prineside/tdi2/AndroidLauncher;)Lj3/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->r(Lcom/prineside/tdi2/AndroidLauncher;)Lj3/b;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/g1;

    invoke-direct {v3, p1}, Lcom/prineside/tdi2/g1;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v2, v0, v3}, Lj3/b;->c(Landroid/app/Activity;Lt2/r;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1, v1}, Lcom/prineside/tdi2/AndroidLauncher;->t(Lcom/prineside/tdi2/AndroidLauncher;Lj3/b;)Lj3/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->G(Lcom/prineside/tdi2/AndroidLauncher;)Lk3/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->G(Lcom/prineside/tdi2/AndroidLauncher;)Lk3/a;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/h1;

    invoke-direct {v3, p1}, Lcom/prineside/tdi2/h1;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v2, v0, v3}, Lk3/a;->c(Landroid/app/Activity;Lt2/r;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1, v1}, Lcom/prineside/tdi2/AndroidLauncher;->I(Lcom/prineside/tdi2/AndroidLauncher;Lk3/a;)Lk3/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->M(Lcom/prineside/tdi2/AndroidLauncher;)Lc3/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->M(Lcom/prineside/tdi2/AndroidLauncher;)Lc3/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc3/a;->d(Landroid/app/Activity;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/i1;

    invoke-direct {v2, p1}, Lcom/prineside/tdi2/i1;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1, v1}, Lcom/prineside/tdi2/AndroidLauncher;->N(Lcom/prineside/tdi2/AndroidLauncher;Lc3/a;)Lc3/a;

    goto :goto_0

    :cond_2
    const-string p1, "AndroidLauncher"

    const-string v0, "The rewarded ad wasn\'t ready yet."

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic y(Lj5/i;)V
    .locals 1

    const-string p0, "AndroidLauncher"

    const-string v0, "signed out from google"

    invoke-static {p0, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic z(Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 4

    const-string v0, "AndroidLauncher"

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->isSignedInWithGoogle()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher;->H()Lcom/badlogic/gdx/utils/IntMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    invoke-static {p1, v2}, Lh4/d;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lh4/a;

    move-result-object p1

    invoke-interface {p1, v1}, Lh4/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "achievement id not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to unlock achievement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addNotification(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const-string v0, "notificationWork"

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v1

    sub-long/2addr p4, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-gtz v3, :cond_0

    iget-object p4, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p4, p1, p2, p3}, Lcom/prineside/tdi2/AndroidLauncher;->showNotificationNow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroidx/work/b$a;->e(Ljava/lang/String;I)Landroidx/work/b$a;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Landroidx/work/b$a;->f(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/b$a;

    move-result-object p2

    const-string v1, "description"

    invoke-virtual {p2, v1, p3}, Landroidx/work/b$a;->f(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/b$a;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object p2

    :try_start_0
    new-instance p3, Lw0/l$a;

    const-class v1, Lcom/prineside/tdi2/NotifyWorker;

    invoke-direct {p3, v1}, Lw0/l$a;-><init>(Ljava/lang/Class;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p4, p5, v1}, Lw0/u$a;->f(JLjava/util/concurrent/TimeUnit;)Lw0/u$a;

    move-result-object p3

    check-cast p3, Lw0/l$a;

    invoke-virtual {p3, p2}, Lw0/u$a;->g(Landroidx/work/b;)Lw0/u$a;

    move-result-object p2

    check-cast p2, Lw0/l$a;

    invoke-virtual {p2, v0}, Lw0/u$a;->a(Ljava/lang/String;)Lw0/u$a;

    move-result-object p2

    check-cast p2, Lw0/l$a;

    invoke-virtual {p2}, Lw0/u$a;->b()Lw0/u;

    move-result-object p2

    check-cast p2, Lw0/l;

    iget-object p3, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p3}, Lw0/t;->g(Landroid/content/Context;)Lw0/t;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Lw0/d;->a:Lw0/d;

    invoke-virtual {p3, p1, p4, p2}, Lw0/t;->b(Ljava/lang/String;Lw0/d;Lw0/l;)Lw0/r;

    move-result-object p1

    invoke-virtual {p1}, Lw0/r;->a()Lw0/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AndroidLauncher"

    const-string p3, "failed to add notification"

    invoke-static {p2, p3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public canShowRewardAd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->getSecondsTillCanShowRewardAd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearNotification(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lw0/t;->g(Landroid/content/Context;)Lw0/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationWork"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw0/t;->d(Ljava/lang/String;)Lw0/m;

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AndroidLauncher"

    const-string v1, "failed to clear notification"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public generateDeviceReport(Lcom/badlogic/gdx/utils/Json;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v1}, Lcom/prineside/tdi2/AndroidLauncher;->z(Lcom/prineside/tdi2/AndroidLauncher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "board"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bootloader"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hardware"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_id"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "product"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "features"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/FeatureInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GLES_VERSION"

    invoke-virtual {p1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public getByteBuddyClassLoadingStrategy()Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->c:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Wrapping;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-virtual {v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "generated"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Wrapping;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->c:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->c:Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v1}, Lcom/prineside/tdi2/AndroidLauncher;->z(Lcom/prineside/tdi2/AndroidLauncher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "board"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bootloader"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "brand"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hardware"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_id"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "product"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk"

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Ld4/a;->a(Landroid/content/pm/PackageManager;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "instantapp"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->b:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid$1;-><init>(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;)V

    iput-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->b:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->b:Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    return-object v0
.end method

.method public getMobilePasswordInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->y(Lcom/prineside/tdi2/AndroidLauncher;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/prineside/tdi2/d1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/d1;-><init>(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getOkJoySDK()Lp7/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurchaseManager()Lcom/badlogic/gdx/pay/PurchaseManager;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->A(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/pay/PurchaseManager;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSafeAreaInsets()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0
.end method

.method public getSecondsTillCanShowRewardAd()I
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->r(Lcom/prineside/tdi2/AndroidLauncher;)Lj3/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->M(Lcom/prineside/tdi2/AndroidLauncher;)Lc3/a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->G(Lcom/prineside/tdi2/AndroidLauncher;)Lk3/a;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->sort()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v1}, Lcom/prineside/tdi2/AndroidLauncher;->u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    rsub-int v0, v0, 0x708

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Game;->getMillisTillGameStart()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    sub-long v3, v5, v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    long-to-int v1, v3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v3

    iget-object v9, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v9}, Lcom/prineside/tdi2/AndroidLauncher;->v(Lcom/prineside/tdi2/AndroidLauncher;)J

    move-result-wide v9

    sub-long/2addr v3, v9

    sub-long/2addr v5, v3

    div-long/2addr v5, v7

    long-to-int v3, v5

    if-gtz v1, :cond_4

    if-gtz v3, :cond_4

    if-gtz v0, :cond_4

    return v2

    :cond_4
    invoke-static {v1, v3}, Ljava/lang/StrictMath;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/StrictMath;->max(II)I

    move-result v0

    return v0
.end method

.method public getShortDeviceInfo()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetStringi(II)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetStringi(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasGoogleAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->S(Lcom/prineside/tdi2/AndroidLauncher;)Lq3/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAppModified()Z
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher;->B()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher;->F()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pRko+ewP8b+Z5oDuA5k8+mua+go="

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->E(Z)Z

    invoke-static {v1}, Lcom/prineside/tdi2/AndroidLauncher;->C(Z)Z

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/AndroidLauncher;->D()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSignedInWithGoogle()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logCurrencyReceived(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "virtual_currency_name"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string p2, "earn_virtual_currency"

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logCurrencySpent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const-string v1, "item_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "value"

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "virtual_currency_name"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string p2, "spend_virtual_currency"

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logCustomEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p2}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logIAP(Lcom/prineside/tdi2/Config$ProductId;Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0

    const-string p1, "AndroidLauncher"

    const-string p2, "al logIAP"

    invoke-static {p1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logLogined(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string v1, "login"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logRewardedVideoViewed(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V
    .locals 1

    const-string p1, "AndroidLauncher"

    const-string v0, "al logRVV"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logSignedUp(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1}, Lcom/prineside/tdi2/AndroidLauncher;->s(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string v1, "sign_up"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onExit()V
    .locals 0

    return-void
.end method

.method public requestGoogleAuth(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v0}, Lcom/prineside/tdi2/AndroidLauncher;->S(Lcom/prineside/tdi2/AndroidLauncher;)Lq3/b;

    move-result-object v0

    invoke-virtual {v0}, Lq3/b;->x()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {v1, p1}, Lcom/prineside/tdi2/AndroidLauncher;->T(Lcom/prineside/tdi2/AndroidLauncher;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    const/16 v2, 0x364d

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AndroidLauncher"

    const-string v2, "failed to call sign in with google"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p1, v0}, Lcom/prineside/tdi2/AndroidLauncher;->T(Lcom/prineside/tdi2/AndroidLauncher;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/utils/ObjectRetriever;

    :goto_0
    return-void
.end method

.method public rewardAdsAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showRewardAd(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->canShowRewardAd()Z

    move-result p2

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    new-instance v0, Lcom/prineside/tdi2/f1;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/f1;-><init>(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->w(Lcom/prineside/tdi2/AndroidLauncher;J)J

    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p2}, Lcom/prineside/tdi2/AndroidLauncher;->u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p2

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p2}, Lcom/prineside/tdi2/AndroidLauncher;->u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/IntArray;->sort()V

    :goto_0
    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p2}, Lcom/prineside/tdi2/AndroidLauncher;->u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p2

    iget p2, p2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/16 v0, 0x1e

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p2}, Lcom/prineside/tdi2/AndroidLauncher;->u(Lcom/prineside/tdi2/AndroidLauncher;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    invoke-static {p2}, Lcom/prineside/tdi2/AndroidLauncher;->x(Lcom/prineside/tdi2/AndroidLauncher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public signOutGoogle()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->x:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lq3/b;

    move-result-object v0

    invoke-virtual {v0}, Lq3/b;->z()Lj5/i;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    new-instance v2, Lcom/prineside/tdi2/e1;

    invoke-direct {v2}, Lcom/prineside/tdi2/e1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lj5/i;->b(Landroid/app/Activity;Lj5/d;)Lj5/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AndroidLauncher"

    const-string v2, "failed to sign out"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unlockAchievement(Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->d:Lcom/prineside/tdi2/AndroidLauncher;

    new-instance v1, Lcom/prineside/tdi2/y0;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/y0;-><init>(Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;Lcom/prineside/tdi2/enums/AchievementType;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
