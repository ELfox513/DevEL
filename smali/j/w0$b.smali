.class public Lj/w0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lj/w0;


# direct methods
.method public constructor <init>(Lj/w0;)V
    .locals 0

    iput-object p1, p0, Lj/w0$b;->a:Lj/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lj/w0$b;->a:Lj/w0;

    const/4 v1, 0x0

    iput-object v1, v0, Lj/w0;->y:Lj/w0$b;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lj/w0$b;->a:Lj/w0;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lj/w0$b;->a:Lj/w0;

    const/4 v1, 0x0

    iput-object v1, v0, Lj/w0;->y:Lj/w0$b;

    invoke-virtual {v0}, Lj/w0;->drawableStateChanged()V

    return-void
.end method
