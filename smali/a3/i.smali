.class public final La3/i;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Lb3/y;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lb3/y;

    invoke-direct {v0, p1, p2}, Lb3/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, La3/i;->a:Lb3/y;

    invoke-virtual {v0, p3}, Lb3/y;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lb3/y;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, La3/i;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La3/i;->a:Lb3/y;

    invoke-virtual {v0, p1}, Lb3/y;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
