.class Lcom/prineside/tdi2/screens/AccountScreen$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Input$TextInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen$12;->clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$12;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$12;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$12$1;->a:Lcom/prineside/tdi2/screens/AccountScreen$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .locals 0

    return-void
.end method

.method public input(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/screens/AccountScreen$12$1$1;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/screens/AccountScreen$12$1$1;-><init>(Lcom/prineside/tdi2/screens/AccountScreen$12$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
