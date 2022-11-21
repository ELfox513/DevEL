.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic p:Lcom/badlogic/gdx/Input$TextInputListener;

.field public final synthetic q:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->q:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->b:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->k:Ljava/lang/String;

    iput-object p6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->p:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->q:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->q:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->b:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->b:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-ne v2, v3, :cond_1

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->q:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;

    invoke-direct {v3, p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->q:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->K:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
