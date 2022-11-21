.class public final Lz2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lz2/s;


# direct methods
.method public constructor <init>(Lz2/s;)V
    .locals 0

    iput-object p1, p0, Lz2/n;->a:Lz2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lz2/n;->a:Lz2/s;

    invoke-static {p1}, Lz2/s;->q7(Lz2/s;)Lr4/u;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/n;->a:Lz2/s;

    invoke-static {p1}, Lz2/s;->q7(Lz2/s;)Lr4/u;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr4/u;->d(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
