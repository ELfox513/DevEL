.class Lcom/prineside/tdi2/ui/components/RatingForm$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/RatingForm;->showFeedbackForm(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/RatingForm;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/RatingForm;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/RatingForm$11;->a:Lcom/prineside/tdi2/ui/components/RatingForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const-string v1, "https://play.google.com/store/apps/details?id=com.prineside.tdi2"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const-string v1, "https://apps.apple.com/us/app/infinitode-2/id1480178308"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
