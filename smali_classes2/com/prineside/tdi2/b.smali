.class public final synthetic Lcom/prineside/tdi2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/AndroidLauncher;

.field public final synthetic b:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/AndroidLauncher;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/b;->a:Lcom/prineside/tdi2/AndroidLauncher;

    iput-object p2, p0, Lcom/prineside/tdi2/b;->b:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/b;->a:Lcom/prineside/tdi2/AndroidLauncher;

    iget-object v1, p0, Lcom/prineside/tdi2/b;->b:Landroid/view/Window;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/AndroidLauncher;->m(Lcom/prineside/tdi2/AndroidLauncher;Landroid/view/Window;)V

    return-void
.end method
