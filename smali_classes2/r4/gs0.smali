.class public final Lr4/gs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lr4/ej0;

.field public final synthetic b:Lr4/js0;


# direct methods
.method public constructor <init>(Lr4/js0;Lr4/ej0;)V
    .locals 0

    iput-object p1, p0, Lr4/gs0;->b:Lr4/js0;

    iput-object p2, p0, Lr4/gs0;->a:Lr4/ej0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lr4/gs0;->b:Lr4/js0;

    iget-object v1, p0, Lr4/gs0;->a:Lr4/ej0;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lr4/js0;->S(Lr4/js0;Landroid/view/View;Lr4/ej0;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
