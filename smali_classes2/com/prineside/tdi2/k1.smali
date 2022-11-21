.class public final synthetic Lcom/prineside/tdi2/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/k1;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/k1;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-static {v0, p1, p2}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->c(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
