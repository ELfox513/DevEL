.class public final synthetic Lcom/prineside/tdi2/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/Input$TextInputListener;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/a1;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    iput-object p2, p0, Lcom/prineside/tdi2/a1;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/a1;->a:Lcom/badlogic/gdx/Input$TextInputListener;

    iget-object v1, p0, Lcom/prineside/tdi2/a1;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher$ActionResolverAndroid;->l(Lcom/badlogic/gdx/Input$TextInputListener;Landroid/widget/EditText;)V

    return-void
.end method
