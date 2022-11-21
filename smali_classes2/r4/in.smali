.class public final Lr4/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lr4/nn;


# direct methods
.method public constructor <init>(Lr4/nn;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lr4/in;->b:Lr4/nn;

    iput-object p2, p0, Lr4/in;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/in;->b:Lr4/nn;

    iget-object v1, p0, Lr4/in;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lr4/nn;->b(Landroid/view/View;)V

    return-void
.end method
