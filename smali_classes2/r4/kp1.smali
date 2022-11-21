.class public final synthetic Lr4/kp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Lr4/qp1;


# direct methods
.method public constructor <init>(Lr4/qp1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kp1;->a:Lr4/qp1;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lr4/kp1;->a:Lr4/qp1;

    invoke-virtual {v0, p1, p2}, Lr4/qp1;->e(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
