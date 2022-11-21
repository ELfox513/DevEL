.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;->a:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;->a:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->b:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->p:Lcom/badlogic/gdx/Input$TextInputListener;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input$TextInputListener;->input(Ljava/lang/String;)V

    return-void
.end method
