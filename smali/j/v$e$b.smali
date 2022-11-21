.class public Lj/v$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/v$e;->m(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/v$e;


# direct methods
.method public constructor <init>(Lj/v$e;)V
    .locals 0

    iput-object p1, p0, Lj/v$e$b;->a:Lj/v$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lj/v$e$b;->a:Lj/v$e;

    iget-object v1, v0, Lj/v$e;->Y:Lj/v;

    invoke-virtual {v0, v1}, Lj/v$e;->P(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/v$e$b;->a:Lj/v$e;

    invoke-virtual {v0}, Lj/b1;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/v$e$b;->a:Lj/v$e;

    invoke-virtual {v0}, Lj/v$e;->N()V

    iget-object v0, p0, Lj/v$e$b;->a:Lj/v$e;

    invoke-static {v0}, Lj/v$e;->M(Lj/v$e;)V

    :goto_0
    return-void
.end method
