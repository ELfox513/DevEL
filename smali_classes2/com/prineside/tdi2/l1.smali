.class public final synthetic Lcom/prineside/tdi2/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/l1;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/l1;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->k(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;)V

    return-void
.end method
